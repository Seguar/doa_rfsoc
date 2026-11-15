"""Readable RFSoC XM655 TCP server used from the notebook.

This module keeps the notebook small and makes the runtime flow inspectable:

    1. MATLAB sends a newline-terminated command string.
    2. The server handles control commands, including optional notebook DAC BF.
    3. The server captures one or more raw XM655 frames.
    4. Each raw frame is sent to MATLAB unchanged as little-endian int16 bytes.
    5. A copy of the frame may be submitted to the spectrum worker.
    6. After the raw burst is already sent, the newest algorithm angle may update DAC phases.

The raw TCP frame format is intentionally unchanged from the working notebook.
"""

from __future__ import annotations

import os
import socket
from dataclasses import dataclass, field
from types import MethodType
from time import perf_counter
from typing import Iterable, Optional

import netifaces as ni
import numpy as np

from algorithm_worker import ParallelSpectrumWorker


# The notebook imports splitSym and ACTIVE_RF_CHANNELS from mts.py, but this module
# also has safe defaults so it is easy to inspect outside the board.
DEFAULT_COMMAND_SEPARATOR = "#"
DEFAULT_ACTIVE_RF_CHANNELS = [0, 1, 2, 3]


@dataclass
class ServerConfig:
    """All editable runtime settings for the notebook server."""

    # TCP/server settings
    port: int = 4000
    command_separator: str = DEFAULT_COMMAND_SEPARATOR
    command_buffer_size: int = 4096
    socket_buffer_bytes: int = 4 * 1024 * 1024
    default_stream_frames: int = 1

    # Logging. Use "debug" only when measuring timings.
    log_level: str = "summary"  # "quiet", "summary", or "debug"
    timing_every: int = 200
    burst_summary_every: int = 50
    print_commands: bool = False

    # CPU affinity. Leave as None to avoid pinning.
    server_cpu_cores: Optional[list[int]] = field(default_factory=lambda: [0, 2, 3])

    # Parallel algorithm settings.
    enable_algorithm_worker: bool = True
    algo_cpu_core: Optional[int] = 1
    algo_queue_size: int = 1
    algo_every_n_frames: int = 1
    algo_config_path: str = "algo_config.npz"  # Also supports .mat.
    print_algo_results: bool = True
    algo_print_every: int = 200

    # Manual MATLAB MVDR corrections. These are reloaded when DAC BF enters
    # tracking/retracking, so you can upload new .mat files through Jupyter GUI
    # and apply them by switching mode from MATLAB.
    mvdr_auto_reload_on_tracking: bool = True
    mvdr_mode: str = "MVDRman_corr"          # "MVDRman" or "MVDRman_corr"
    mvdr_steering_file: str = "steering_correction.mat"
    mvdr_power_file: str = "pow_claibration_intrp.mat"
    mvdr_scan_start_deg: float = -60.0
    mvdr_scan_stop_deg: float = 60.0
    mvdr_scan_step_deg: float = 1.0

    # Notebook-side DAC beamforming / tracking.
    enable_dac_tracking: bool = True
    dac_tracking_min_update_interval_s: float = 0.05
    dac_tracking_min_angle_step_deg: float = 0.25
    dac_tracking_print_every: int = 200
    dac_tracking_phase_sign: float = -1.0

    # Debug isolation switches.
    # raw_only=True disables algorithm submission and DAC tracking without changing MATLAB.
    raw_only: bool = False


class NotebookLogger:
    def __init__(self, config: ServerConfig):
        self.config = config

    @staticmethod
    def _level_value(level: str) -> int:
        return {"quiet": 0, "summary": 1, "debug": 2}.get(str(level).lower(), 1)

    def enabled(self, level: str) -> bool:
        return self._level_value(self.config.log_level) >= self._level_value(level)

    def __call__(self, level: str, message: str) -> None:
        if self.enabled(level):
            print(message)


class DacBeamTracker:
    """Notebook-side DAC BF controller driven by algorithm peak angle.

    MATLAB controls this through commands:
        dacbf off | tracking | retracking
        dacbfcorr 0/0/-600/12300      # degrees*100, same convention as dphase
        dacbfcorrdeg 0/0/-6/123       # direct degrees
        dacbfsign -1                  # use +1 if TX direction is reversed

    Phase formula, for four elements indexed n=0..3:
        phase[n] = sign * 180 * n * sin(dac_angle_deg) + correction[n]

    With the default sign=-1 this is equivalent to the earlier convention:
        phase[n] = -180 * n * sin(angle) + correction[n]
    """

    VALID_MODES = {"off", "tracking", "retracking"}

    def __init__(self, overlay, config: ServerConfig, logger: NotebookLogger):
        self.overlay = overlay
        self.config = config
        self.log = logger
        self.mode = "off"
        self.phase_sign = float(config.dac_tracking_phase_sign)
        self.correction_deg = np.zeros(self.num_elements, dtype=float)
        self.last_update_t = 0.0
        self.last_dac_angle_deg: Optional[float] = None
        self.updates = 0

    @property
    def active_channels(self) -> list[int]:
        return list(getattr(self.overlay, "active_rf_channels", DEFAULT_ACTIVE_RF_CHANNELS))

    @property
    def num_elements(self) -> int:
        return len(getattr(self.overlay, "active_rf_channels", DEFAULT_ACTIVE_RF_CHANNELS))

    def set_mode(self, mode: str) -> str:
        clean = str(mode or "off").strip().lower()
        aliases = {
            "0": "off",
            "false": "off",
            "none": "off",
            "1": "tracking",
            "true": "tracking",
            "track": "tracking",
            "retrack": "retracking",
        }
        clean = aliases.get(clean, clean)
        if clean not in self.VALID_MODES:
            raise ValueError(f"Unknown DAC BF mode {mode!r}; expected one of {sorted(self.VALID_MODES)}")
        self.mode = clean
        return self.mode

    def set_correction_deg(self, values: Iterable[float]) -> list[float]:
        arr = np.asarray(list(values), dtype=float).reshape(-1)
        if arr.size == 0:
            arr = np.zeros(self.num_elements, dtype=float)
        if arr.size < self.num_elements:
            arr = np.pad(arr, (0, self.num_elements - arr.size), mode="constant")
        self.correction_deg = arr[: self.num_elements].astype(float, copy=True)
        return self.correction_deg.tolist()

    def set_sign(self, value: float) -> float:
        self.phase_sign = float(value)
        return self.phase_sign

    @staticmethod
    def wrap_phase_deg(phases: np.ndarray) -> np.ndarray:
        # RFDC phase offset is safest around [-179, 179].
        wrapped = ((np.asarray(phases, dtype=float) + 180.0) % 360.0) - 180.0
        return np.clip(wrapped, -179.0, 179.0)

    def compute_phases(self, dac_angle_deg: float) -> np.ndarray:
        n = np.arange(self.num_elements, dtype=float)
        phases = self.phase_sign * 180.0 * n * np.sin(np.deg2rad(float(dac_angle_deg)))
        phases = phases + self.correction_deg
        return self.wrap_phase_deg(phases)

    def should_update(self, dac_angle_deg: float, force: bool = False) -> bool:
        if force:
            return True
        now = perf_counter()
        if (now - self.last_update_t) < self.config.dac_tracking_min_update_interval_s:
            return False
        if self.last_dac_angle_deg is not None:
            delta = abs(float(dac_angle_deg) - float(self.last_dac_angle_deg))
            if delta < self.config.dac_tracking_min_angle_step_deg:
                return False
        return True

    def apply_phases(self, phases_deg: Iterable[float]) -> list[float]:
        phases = self.wrap_phase_deg(np.asarray(list(phases_deg), dtype=float))
        if phases.size < self.num_elements:
            phases = np.pad(phases, (0, self.num_elements - phases.size), mode="constant")
        phases = phases[: self.num_elements]

        # Ensure overlay has d_phases list long enough for channel indices.
        max_ch = max(self.active_channels) if self.active_channels else -1
        if not hasattr(self.overlay, "d_phases") or len(self.overlay.d_phases) <= max_ch:
            self.overlay.d_phases = [0.0] * max(16, max_ch + 1)

        for rf_ch, phase in zip(self.active_channels, phases):
            phase = float(phase)
            self.overlay.d_phases[rf_ch] = phase
            if hasattr(self.overlay, "dac") and rf_ch in self.overlay.dac:
                # This mirrors the existing dphase command behavior.
                self.overlay.dac[rf_ch].MixerSettings["PhaseOffset"] = phase
        return phases.tolist()

    def update_from_algo_angle(self, algo_angle_deg: float, force: bool = False) -> Optional[dict]:
        if self.mode == "off" or not self.config.enable_dac_tracking or self.config.raw_only:
            return None

        dac_angle_deg = float(algo_angle_deg)
        if self.mode == "retracking":
            dac_angle_deg = -dac_angle_deg

        if not self.should_update(dac_angle_deg, force=force):
            return {"updated": False, "mode": self.mode, "algo_angle": float(algo_angle_deg), "dac_angle": dac_angle_deg}

        t0 = perf_counter()
        phases = self.compute_phases(dac_angle_deg)
        applied = self.apply_phases(phases)
        self.last_update_t = perf_counter()
        self.last_dac_angle_deg = dac_angle_deg
        self.updates += 1

        return {
            "updated": True,
            "mode": self.mode,
            "algo_angle": float(algo_angle_deg),
            "dac_angle": dac_angle_deg,
            "phases": applied,
            "tracking_ms": (self.last_update_t - t0) * 1000.0,
            "updates": self.updates,
        }


class RfsocNotebookServer:
    """Small, inspectable server object for the Jupyter notebook."""

    def __init__(self, config: Optional[ServerConfig] = None):
        self.config = config or ServerConfig()
        self.log = NotebookLogger(self.config)
        self.overlay = None
        self.tracker: Optional[DacBeamTracker] = None
        self.algo_worker: Optional[ParallelSpectrumWorker] = None
        self.server_socket: Optional[socket.socket] = None
        self.server_ip: Optional[str] = None
        self.frame_idx = 0
        self.burst_count = 0

    # ------------------------- setup helpers -------------------------

    def pin_current_process_to_cores(self) -> bool:
        cores = self.config.server_cpu_cores
        if cores is None:
            return False
        try:
            available = set(range(os.cpu_count() or 1))
            selected = {int(core) for core in cores if int(core) in available}
            if not selected:
                return False
            os.sched_setaffinity(0, selected)
            self.log("summary", f"Server CPU affinity: {sorted(selected)}")
            return True
        except Exception as exc:
            self.log("summary", f"CPU affinity was not applied: {exc}")
            return False

    @staticmethod
    def get_default_ip() -> str:
        iface = ni.gateways()["default"][ni.AF_INET][1]
        return ni.ifaddresses(iface)[ni.AF_INET][0]["addr"]

    def configure_tcp_socket(self, sock: socket.socket) -> None:
        sock.setsockopt(socket.IPPROTO_TCP, socket.TCP_NODELAY, 1)
        sock.setsockopt(socket.SOL_SOCKET, socket.SO_SNDBUF, self.config.socket_buffer_bytes)
        sock.setsockopt(socket.SOL_SOCKET, socket.SO_RCVBUF, self.config.socket_buffer_bytes)

    def start_algorithm_worker(self, num_elements: int) -> None:
        if self.config.raw_only or not self.config.enable_algorithm_worker:
            self.log("summary", "Algorithm worker disabled.")
            self.algo_worker = None
            return

        config_path = self.config.algo_config_path
        if not config_path or not os.path.exists(config_path):
            config_path = None

        self.algo_worker = ParallelSpectrumWorker(
            config_path=config_path,
            num_elements=num_elements,
            queue_size=self.config.algo_queue_size,
            cpu_core=self.config.algo_cpu_core,
            start_method="fork",
        )
        self.algo_worker.start()

        source = config_path if config_path else "default identity calibration"
        self.log(
            "summary",
            f"Algorithm worker started on CPU core {self.config.algo_cpu_core}. "
            f"Config: {source}. Queue size: {self.config.algo_queue_size}.",
        )

    def attach_overlay(self, overlay) -> None:
        self.overlay = overlay
        self._ensure_overlay_runtime_methods()
        self.tracker = DacBeamTracker(overlay, self.config, self.log)
        self.log("summary", f"Frame bytes: {self.frame_bytes}")

    def open_listening_socket(self) -> None:
        self.server_ip = self.get_default_ip()
        self.server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.server_socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
        self.configure_tcp_socket(self.server_socket)
        self.server_socket.bind((self.server_ip, self.config.port))
        self.server_socket.listen(1)
        self.log("summary", f"Listening on {self.server_ip}:{self.config.port}")

    @property
    def frame_bytes(self) -> int:
        if self.overlay is None:
            return 0
        return int(getattr(self.overlay, "data_size", 0)) * 2

    def prepare(self, overlay) -> None:
        """Attach the overlay and open the TCP server socket."""
        self.pin_current_process_to_cores()
        active = getattr(overlay, "active_rf_channels", DEFAULT_ACTIVE_RF_CHANNELS)
        self.start_algorithm_worker(num_elements=len(active))
        self.attach_overlay(overlay)
        self.open_listening_socket()

    # ------------------- overlay compatibility shims -------------------

    def _ensure_overlay_runtime_methods(self) -> None:
        """Make old mts.py versions compatible with this server module."""
        o = self.overlay
        if o is None:
            return

        if not hasattr(o, "reset_receive_buffer"):
            def reset_receive_buffer(self_overlay):
                self_overlay._receive_buffer = bytearray()
            o.reset_receive_buffer = MethodType(reset_receive_buffer, o)

        if not hasattr(o, "receive_command"):
            def receive_command(self_overlay, client_socket, chunk_size=4096, max_bytes=65536):
                if not hasattr(self_overlay, "_receive_buffer"):
                    self_overlay._receive_buffer = bytearray()
                while True:
                    for term in (b"\n", b"\r"):
                        idx = self_overlay._receive_buffer.find(term)
                        if idx >= 0:
                            line = bytes(self_overlay._receive_buffer[:idx])
                            del self_overlay._receive_buffer[: idx + 1]
                            return line.decode("utf-8", errors="ignore").strip()
                    if len(self_overlay._receive_buffer) > max_bytes:
                        self_overlay._receive_buffer.clear()
                        raise ValueError("Command buffer overflow")
                    chunk = client_socket.recv(chunk_size)
                    if not chunk:
                        if self_overlay._receive_buffer:
                            line = bytes(self_overlay._receive_buffer)
                            self_overlay._receive_buffer.clear()
                            return line.decode("utf-8", errors="ignore").strip()
                        return None
                    self_overlay._receive_buffer.extend(chunk)
            o.receive_command = MethodType(receive_command, o)

        if not hasattr(o, "send_int16"):
            def send_int16(self_overlay, client_socket, data):
                arr = np.asarray(data, dtype=np.int16)
                if not arr.flags["C_CONTIGUOUS"]:
                    arr = np.ascontiguousarray(arr)
                view = memoryview(arr).cast("B")
                client_socket.sendall(view)
                return arr.nbytes
            o.send_int16 = MethodType(send_int16, o)

        if not hasattr(o, "capture_xm655_frame"):
            def capture_xm655_frame(self_overlay):
                if hasattr(self_overlay, "trig_cap"):
                    self_overlay.trig_cap.off()
                if getattr(self_overlay, "da", 2) == 2 and hasattr(self_overlay, "get_custom_data_xm655_2"):
                    return self_overlay.get_custom_data_xm655_2()
                return self_overlay.get_custom_data_xm655()
            o.capture_xm655_frame = MethodType(capture_xm655_frame, o)


    # --------------------- MVDR correction management --------------------

    def get_mvdr_scan_axis(self) -> np.ndarray:
        step = float(self.config.mvdr_scan_step_deg)
        if step == 0:
            raise ValueError("mvdr_scan_step_deg must be non-zero")
        start = float(self.config.mvdr_scan_start_deg)
        stop = float(self.config.mvdr_scan_stop_deg)
        # Include stop point, e.g. -60:1:60 -> 121 points.
        if step > 0:
            stop_inclusive = stop + step * 0.5
        else:
            stop_inclusive = stop + step * 0.5
        return np.arange(start, stop_inclusive, step, dtype=np.float32)

    def reload_algorithm_mvdr_corrections(self, reason: str = "manual") -> bool:
        """Reload latest MATLAB correction .mat files into the algorithm worker."""
        if self.config.raw_only or self.algo_worker is None:
            self.log("summary", f"MVDR reload skipped ({reason}): algorithm worker is disabled.")
            return False

        scan_axis = self.get_mvdr_scan_axis()
        try:
            cfg = self.algo_worker.reload_from_manual_mvdr(
                mode=self.config.mvdr_mode,
                steering_file=self.config.mvdr_steering_file,
                power_file=self.config.mvdr_power_file,
                scan_axis=scan_axis,
            )
        except Exception as exc:
            self.log("summary", f"MVDR correction reload FAILED ({reason}): {exc}")
            return False

        self.log(
            "summary",
            "MVDR corrections reloaded ({reason}): mode={mode}, scan=[{start:g}:{step:g}:{stop:g}], "
            "L={L}, files=({steer}, {power})".format(
                reason=reason,
                mode=self.config.mvdr_mode,
                start=float(scan_axis[0]) if scan_axis.size else float("nan"),
                step=float(self.config.mvdr_scan_step_deg),
                stop=float(scan_axis[-1]) if scan_axis.size else float("nan"),
                L=scan_axis.size,
                steer=self.config.mvdr_steering_file,
                power=self.config.mvdr_power_file,
            ),
        )
        return True

    # ------------------------- command handling -------------------------

    @staticmethod
    def parse_slash_floats(text: str) -> list[float]:
        if not text:
            return []
        return [float(item) for item in text.replace(",", "/").split("/") if item.strip()]

    def split_commands(self, message: str) -> list[str]:
        return [cmd.strip() for cmd in str(message).split(self.config.command_separator) if cmd.strip()]

    def extract_stream_request(self, commands: list[str]) -> tuple[list[str], int]:
        frame_count = int(self.config.default_stream_frames)
        control_commands: list[str] = []

        for command in commands:
            parts = command.split(maxsplit=1)
            if not parts:
                continue
            name = parts[0].lower()
            if name in {"stream", "burst", "frames"}:
                frame_count = int(float(parts[1])) if len(parts) > 1 else int(self.config.default_stream_frames)
            else:
                control_commands.append(command)

        return control_commands, max(0, frame_count)

    def handle_dacbf_command(self, command: str) -> bool:
        if self.tracker is None:
            return False

        parts = command.strip().split(maxsplit=1)
        if not parts:
            return True
        name = parts[0].lower()
        arg = parts[1].strip() if len(parts) > 1 else ""

        if name in {"dacbf", "track", "trackmode", "tracking"}:
            mode = self.tracker.set_mode(arg.split("/")[0] if arg else "off")
            self.log("summary", f"DAC BF mode: {mode}")
            if (
                mode in {"tracking", "retracking"}
                and self.config.mvdr_auto_reload_on_tracking
                and not self.config.raw_only
            ):
                self.reload_algorithm_mvdr_corrections(reason=f"dacbf {mode}")
            return True

        if name in {"dacbfcorr", "trackcorr", "trackingcorr"}:
            vals = [v / 100.0 for v in self.parse_slash_floats(arg)]
            corr = self.tracker.set_correction_deg(vals)
            self.log("summary", f"DAC BF correction deg: {corr}")
            return True

        if name in {"dacbfcorrdeg", "trackcorrdeg", "trackingcorrdeg"}:
            corr = self.tracker.set_correction_deg(self.parse_slash_floats(arg))
            self.log("summary", f"DAC BF correction deg: {corr}")
            return True

        if name in {"dacbfsign", "tracksign", "trackingphase", "trackingphasesign"}:
            vals = self.parse_slash_floats(arg)
            if vals:
                sign = self.tracker.set_sign(vals[0])
                self.log("summary", f"DAC BF phase sign: {sign}")
            return True

        if name in {"dacbfminms", "trackminms"}:
            vals = self.parse_slash_floats(arg)
            if vals:
                self.config.dac_tracking_min_update_interval_s = max(0.0, vals[0] / 1000.0)
                self.log("summary", f"DAC BF min update interval: {self.config.dac_tracking_min_update_interval_s * 1000:.1f} ms")
            return True

        if name in {"dacbfstep", "trackstep"}:
            vals = self.parse_slash_floats(arg)
            if vals:
                self.config.dac_tracking_min_angle_step_deg = max(0.0, vals[0])
                self.log("summary", f"DAC BF min angle step: {self.config.dac_tracking_min_angle_step_deg:.3f} deg")
            return True

        if name in {"mvdrreload", "algoreload", "reloadcorr", "reloadcorrections"}:
            self.reload_algorithm_mvdr_corrections(reason=name)
            return True

        if name in {"mvdrmode", "algomode"}:
            if arg:
                self.config.mvdr_mode = arg.strip().split()[0]
                self.log("summary", f"MVDR correction mode: {self.config.mvdr_mode}")
            return True

        if name in {"mvdrscan", "algoscan"}:
            vals = self.parse_slash_floats(arg)
            if len(vals) >= 3:
                self.config.mvdr_scan_start_deg = vals[0]
                self.config.mvdr_scan_stop_deg = vals[1]
                self.config.mvdr_scan_step_deg = vals[2]
                self.log("summary", f"MVDR scan axis: {vals[0]:g}:{vals[2]:g}:{vals[1]:g}")
            return True

        if name in {"mvdrfiles", "algofiles"}:
            vals = [x.strip() for x in arg.replace(",", "/").split("/") if x.strip()]
            if vals:
                self.config.mvdr_steering_file = vals[0]
            if len(vals) > 1:
                self.config.mvdr_power_file = vals[1]
            self.log(
                "summary",
                f"MVDR files: steering={self.config.mvdr_steering_file}, power={self.config.mvdr_power_file}",
            )
            return True

        return False

    def handle_control_commands(self, commands: list[str]) -> None:
        remaining: list[str] = []
        for command in commands:
            if self.handle_dacbf_command(command):
                continue
            remaining.append(command)

        if remaining:
            if self.config.print_commands:
                self.log("debug", f"control: {remaining}")
            self.overlay.handle_commands(remaining)

    # ---------------------- algorithm and tracking ----------------------

    def submit_frame_to_algorithm(self, frame) -> bool:
        if self.config.raw_only or self.algo_worker is None:
            return False
        if self.config.algo_every_n_frames <= 0:
            return False
        if self.frame_idx % self.config.algo_every_n_frames != 0:
            return False
        return self.algo_worker.submit(self.frame_idx, frame)

    def poll_algorithm_and_tracking(self, force: bool = False) -> Optional[dict]:
        if self.algo_worker is None:
            return None

        result = self.algo_worker.poll_latest()
        if result is None:
            return None

        track_result = None
        if result.get("ok", False) and self.tracker is not None:
            track_result = self.tracker.update_from_algo_angle(result["peak_angle"])

        should_log_algo = (
            (not result.get("ok", False))
            or force
            or (
                self.config.print_algo_results
                and self.config.algo_print_every
                and result.get("processed", 0) % self.config.algo_print_every == 0
            )
        )

        if should_log_algo:
            if result.get("ok", False):
                self.log(
                    "summary",
                    "algo_result frame={frame} processed={processed} algo={algo:.2f}ms "
                    "peak_angle={angle:.2f}deg peak={peak:.2f}dB submitted={submitted} dropped={dropped}".format(
                        frame=result["frame_id"],
                        processed=result["processed"],
                        algo=result["algo_ms"],
                        angle=result["peak_angle"],
                        peak=result["peak_db"],
                        submitted=self.algo_worker.submitted,
                        dropped=self.algo_worker.dropped,
                    ),
                )
            else:
                self.log(
                    "summary",
                    "algo_error frame={frame} processed={processed} algo={algo:.2f}ms error={error}".format(
                        frame=result["frame_id"],
                        processed=result["processed"],
                        algo=result["algo_ms"],
                        error=result["error"],
                    ),
                )

        if track_result and track_result.get("updated", False):
            if (
                self.config.dac_tracking_print_every
                and result.get("processed", 0) % self.config.dac_tracking_print_every == 0
            ):
                self.log(
                    "summary",
                    "dacbf mode={mode} algo_angle={algo_angle:.2f}deg dac_angle={dac_angle:.2f}deg "
                    "tracking={tracking_ms:.2f}ms phases={phases}".format(
                        mode=track_result["mode"],
                        algo_angle=track_result["algo_angle"],
                        dac_angle=track_result["dac_angle"],
                        tracking_ms=track_result["tracking_ms"],
                        phases=[round(x, 2) for x in track_result["phases"]],
                    ),
                )

        return result

    # ----------------------------- hot path -----------------------------

    def should_print_timing(self) -> bool:
        return (
            self.config.log_level.lower() == "debug"
            and self.config.timing_every
            and self.frame_idx % self.config.timing_every == 0
        )

    def should_print_burst_summary(self) -> bool:
        return (
            self.config.log_level.lower() == "summary"
            and self.config.burst_summary_every
            and self.burst_count % self.config.burst_summary_every == 0
        )

    def capture_send_submit_one_frame(self, client_socket: socket.socket, timing_context: dict) -> int:
        """The performance-critical per-frame path."""
        t0 = perf_counter()
        frame = self.overlay.capture_xm655_frame()
        t1 = perf_counter()
        sent_bytes = self.overlay.send_int16(client_socket, frame)
        t2 = perf_counter()

        self.frame_idx += 1

        t3 = perf_counter()
        submitted = self.submit_frame_to_algorithm(frame)
        t4 = perf_counter()

        if self.should_print_timing():
            self.log(
                "debug",
                "frame={frame} burst={burst}/{burst_total} bytes={bytes} "
                "recv_wait={recv:.2f}ms cmd={cmd:.2f}ms capture={cap:.2f}ms "
                "send={send:.2f}ms algo_submit={algo_submit:.2f}ms algo_q={algo_q} "
                "frame_total={total:.2f}ms".format(
                    frame=self.frame_idx,
                    burst=timing_context.get("burst_idx", 1),
                    burst_total=timing_context.get("frame_count", 1),
                    bytes=sent_bytes,
                    recv=timing_context.get("recv_wait_ms", 0.0),
                    cmd=timing_context.get("cmd_ms", 0.0),
                    cap=(t1 - t0) * 1000.0,
                    send=(t2 - t1) * 1000.0,
                    algo_submit=(t4 - t3) * 1000.0,
                    algo_q=int(submitted),
                    total=(t4 - t0) * 1000.0,
                ),
            )

        return sent_bytes

    def stream_frames(self, client_socket: socket.socket, frame_count: int, timing_context: dict) -> None:
        burst_start = perf_counter()
        burst_bytes = 0

        for idx in range(frame_count):
            timing_context["burst_idx"] = idx + 1
            # Only the first frame reports command wait/handling time.
            if idx > 0:
                timing_context["recv_wait_ms"] = 0.0
                timing_context["cmd_ms"] = 0.0
            burst_bytes += self.capture_send_submit_one_frame(client_socket, timing_context)

        # Keep algorithm polling and RFDC DAC writes out of the raw-send loop.
        self.poll_algorithm_and_tracking()

        if frame_count > 1:
            self.burst_count += 1
            total_ms = (perf_counter() - burst_start) * 1000.0
            if self.should_print_burst_summary() or self.config.log_level.lower() == "debug":
                mib = burst_bytes / (1024 * 1024)
                self.log(
                    "summary",
                    "burst_done #{burst_no} frames={frames} bytes={bytes} total={total:.2f}ms "
                    "avg_frame={avg:.2f}ms throughput={throughput:.2f}MiB/s".format(
                        burst_no=self.burst_count,
                        frames=frame_count,
                        bytes=burst_bytes,
                        total=total_ms,
                        avg=total_ms / frame_count,
                        throughput=mib / (total_ms / 1000.0),
                    ),
                )

    # -------------------------- server lifecycle ------------------------

    def handle_client(self, client_socket: socket.socket, client_address) -> None:
        self.configure_tcp_socket(client_socket)
        self.overlay.reset_receive_buffer()
        self.log("summary", f"Connected: {client_address}")

        while True:
            request_start = perf_counter()
            message = self.overlay.receive_command(client_socket, self.config.command_buffer_size)
            if message is None:
                break
            request_received = perf_counter()

            commands = self.split_commands(message)
            if not commands:
                continue

            control_commands, frame_count = self.extract_stream_request(commands)
            if control_commands:
                self.handle_control_commands(control_commands)
            command_done = perf_counter()

            if not getattr(self.overlay, "dataStream", 1) or frame_count == 0:
                continue

            self.stream_frames(
                client_socket,
                frame_count,
                {
                    "frame_count": frame_count,
                    "recv_wait_ms": (request_received - request_start) * 1000.0,
                    "cmd_ms": (command_done - request_received) * 1000.0,
                },
            )

    def run_forever(self) -> None:
        if self.server_socket is None:
            raise RuntimeError("Call open_listening_socket() or prepare() before run_forever().")
        if self.overlay is None:
            raise RuntimeError("Call attach_overlay() or prepare() before run_forever().")

        try:
            while True:
                client_socket, client_address = self.server_socket.accept()
                try:
                    self.handle_client(client_socket, client_address)
                except (ConnectionResetError, BrokenPipeError, OSError) as exc:
                    self.log("summary", f"Reconnect or Error: {exc}")
                except Exception as exc:
                    self.log("summary", f"Server-side error: {exc}")
                finally:
                    client_socket.close()
        except KeyboardInterrupt:
            self.log("summary", "Server stopped")
        finally:
            self.close()

    def close(self) -> None:
        if self.server_socket is not None:
            try:
                self.server_socket.close()
            except Exception:
                pass
            self.server_socket = None

        if self.algo_worker is not None:
            self.poll_algorithm_and_tracking(force=True)
            self.algo_worker.stop()
            self.log(
                "summary",
                f"Algorithm worker stopped. submitted={self.algo_worker.submitted}, dropped={self.algo_worker.dropped}",
            )
            self.algo_worker = None

    def status(self) -> dict:
        return {
            "ip": self.server_ip,
            "port": self.config.port,
            "frame_bytes": self.frame_bytes,
            "frames_sent": self.frame_idx,
            "bursts_sent": self.burst_count,
            "raw_only": self.config.raw_only,
            "algorithm_enabled": self.algo_worker is not None,
            "dacbf_mode": self.tracker.mode if self.tracker else None,
        }
