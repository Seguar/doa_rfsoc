import os
import queue
from time import perf_counter
import multiprocessing as mp

import numpy as np

from calculate_fixed_spectrum_py import calculate_fixed_spectrum_py


def _set_cpu_affinity(cpu_core):
    """Best-effort CPU affinity pinning. Works on Linux/PYNQ when permitted."""
    if cpu_core is None:
        return False

    try:
        core = int(cpu_core)
        if core < 0:
            return False
        os.sched_setaffinity(0, {core})
        return True
    except Exception:
        return False


def load_spectrum_config(
    config_path=None,
    num_elements=4,
    default_scan_axis=None,
):
    """Load scan/calibration data for the spectrum algorithm.

    Supported file formats:
      - .npz with keys: scan_axis, steering_correction, pow_claibration_intrp
      - .mat with variables: scan_axis, steering_correction, pow_claibration_intrp

    If no config file exists, identity calibrations are used.
    """
    if default_scan_axis is None:
        default_scan_axis = np.arange(-90, 91, 1, dtype=np.float32)

    if config_path and os.path.exists(config_path):
        ext = os.path.splitext(config_path)[1].lower()
        if ext == ".npz":
            data = np.load(config_path)
            scan_axis = np.asarray(data["scan_axis"]).reshape(-1)
            steering_correction = np.asarray(data["steering_correction"])
            pow_claibration_intrp = np.asarray(data["pow_claibration_intrp"])
        elif ext == ".mat":
            import scipy.io
            data = scipy.io.loadmat(config_path)
            scan_axis = np.asarray(data["scan_axis"]).reshape(-1)
            steering_correction = np.asarray(data["steering_correction"])
            pow_claibration_intrp = np.asarray(data["pow_claibration_intrp"])
        else:
            raise ValueError(f"Unsupported spectrum config file type: {ext}")
    else:
        scan_axis = np.asarray(default_scan_axis, dtype=np.float32).reshape(-1)
        steering_correction = np.ones((scan_axis.size, num_elements), dtype=np.complex64)
        pow_claibration_intrp = np.ones((scan_axis.size, num_elements), dtype=np.complex64)

    scan_axis = np.asarray(scan_axis, dtype=np.float32).reshape(-1)
    steering_correction = np.asarray(steering_correction, dtype=np.complex64)
    pow_claibration_intrp = np.asarray(pow_claibration_intrp, dtype=np.complex64)

    expected_shape = (scan_axis.size, int(num_elements))
    if steering_correction.shape != expected_shape:
        raise ValueError(
            f"steering_correction shape must be {expected_shape}, got {steering_correction.shape}"
        )
    if pow_claibration_intrp.shape != expected_shape:
        raise ValueError(
            f"pow_claibration_intrp shape must be {expected_shape}, got {pow_claibration_intrp.shape}"
        )

    return {
        "scan_axis": scan_axis,
        "num_elements": int(num_elements),
        "steering_correction": steering_correction,
        "pow_claibration_intrp": pow_claibration_intrp,
    }



def _first_numeric_array_from_mat(mat_data, preferred_names=()):
    """Return the first useful numeric array from scipy.io.loadmat output."""
    for name in preferred_names:
        if name in mat_data:
            arr = mat_data[name]
            if isinstance(arr, np.ndarray) and arr.size:
                return arr
    for name, value in mat_data.items():
        if name.startswith("__"):
            continue
        if isinstance(value, np.ndarray) and value.size:
            return value
    raise ValueError("No numeric array found in .mat file")


def _symmetric_crop_or_pad_rows(arr, target_rows):
    """Match MATLAB-style symmetric extension/cropping along rows."""
    arr = np.asarray(arr)
    target_rows = int(target_rows)
    if arr.shape[0] == target_rows:
        return arr
    if arr.shape[0] > target_rows:
        extra = arr.shape[0] - target_rows
        start = extra // 2
        return arr[start:start + target_rows, ...]

    missing = target_rows - arr.shape[0]
    before = missing // 2
    after = missing - before
    if arr.shape[0] == 0:
        raise ValueError("Cannot pad an empty correction array")
    # Symmetric padding is closest to MATLAB wextend('1D','sym',...).
    return np.pad(arr, [(before, after)] + [(0, 0)] * (arr.ndim - 1), mode="symmetric")


def _normalize_correction_matrix(values, scan_axis, num_elements, name):
    """Normalize correction to shape [len(scan_axis), num_elements]."""
    scan_axis = np.asarray(scan_axis).reshape(-1)
    num_elements = int(num_elements)
    arr = np.asarray(values)
    arr = np.squeeze(arr)

    if arr.ndim == 0:
        arr = np.full((scan_axis.size, num_elements), complex(arr), dtype=np.complex64)
    elif arr.ndim == 1:
        if arr.size == scan_axis.size:
            arr = np.tile(arr.reshape(-1, 1), (1, num_elements))
        elif arr.size == num_elements:
            arr = np.tile(arr.reshape(1, -1), (scan_axis.size, 1))
        else:
            arr = arr.reshape(-1, 1)
            arr = _symmetric_crop_or_pad_rows(arr, scan_axis.size)
            arr = np.tile(arr, (1, num_elements))
    elif arr.ndim >= 2:
        # MATLAB may save MxL instead of LxM; accept both.
        arr = arr.reshape(arr.shape[0], arr.shape[1], *arr.shape[2:])
        if arr.ndim > 2:
            arr = arr.reshape(arr.shape[0], -1)
        if arr.shape == (num_elements, scan_axis.size):
            arr = arr.T
        if arr.shape[1] < num_elements:
            pad_cols = num_elements - arr.shape[1]
            arr = np.pad(arr, ((0, 0), (0, pad_cols)), mode="edge")
        elif arr.shape[1] > num_elements:
            arr = arr[:, :num_elements]
        arr = _symmetric_crop_or_pad_rows(arr, scan_axis.size)
    else:
        raise ValueError(f"Unsupported {name} dimensions: {arr.shape}")

    arr = np.asarray(arr, dtype=np.complex64)
    expected = (scan_axis.size, num_elements)
    if arr.shape != expected:
        raise ValueError(f"{name} must be {expected}, got {arr.shape}")
    return arr


def load_manual_mvdr_config(
    mode="MVDRman_corr",
    steering_file="steering_correction.mat",
    power_file="pow_claibration_intrp.mat",
    scan_axis=None,
    num_elements=4,
):
    """Load MATLAB manual MVDR correction files into worker config.

    mode="MVDRman" uses identity corrections.
    mode="MVDRman_corr" loads steering_correction.mat and pow_claibration_intrp.mat.
    The expected default scan axis is MATLAB -60:1:60.
    """
    if scan_axis is None:
        scan_axis = np.arange(-60, 61, 1, dtype=np.float32)
    scan_axis = np.asarray(scan_axis, dtype=np.float32).reshape(-1)
    num_elements = int(num_elements)

    mode_clean = str(mode or "MVDRman_corr").strip().lower()
    if mode_clean in {"mvdrman", "identity", "ones", "off"}:
        steering_correction = np.ones((scan_axis.size, num_elements), dtype=np.complex64)
        pow_claibration_intrp = np.ones((scan_axis.size, num_elements), dtype=np.complex64)
    elif mode_clean in {"mvdrman_corr", "corr", "corrected"}:
        import scipy.io
        if not os.path.exists(steering_file):
            raise FileNotFoundError(f"Missing steering correction file: {steering_file}")
        steering_data = scipy.io.loadmat(steering_file)
        steering_values = _first_numeric_array_from_mat(
            steering_data,
            preferred_names=("steering_correction", "estimator"),
        )
        steering_correction = _normalize_correction_matrix(
            steering_values,
            scan_axis,
            num_elements,
            "steering_correction",
        )

        if power_file and os.path.exists(power_file):
            power_data = scipy.io.loadmat(power_file)
            power_values = _first_numeric_array_from_mat(
                power_data,
                preferred_names=("pow_claibration_intrp", "pow_calibration_intrp", "power_correction"),
            )
            pow_claibration_intrp = _normalize_correction_matrix(
                power_values,
                scan_axis,
                num_elements,
                "pow_claibration_intrp",
            )
        else:
            pow_claibration_intrp = np.ones((scan_axis.size, num_elements), dtype=np.complex64)
    else:
        raise ValueError(f"Unsupported manual MVDR mode: {mode}")

    return {
        "scan_axis": scan_axis,
        "num_elements": num_elements,
        "steering_correction": np.asarray(steering_correction, dtype=np.complex64),
        "pow_claibration_intrp": np.asarray(pow_claibration_intrp, dtype=np.complex64),
    }


def int16_frame_to_complex(frame_int16, num_elements=4):
    """Convert interleaved int16 [I0,Q0,I1,Q1,...] data to [N, M] complex64.

    This matches the existing MATLAB client layout:
        rawData(:, ch) = I - 1j*Q
    """
    frame = np.asarray(frame_int16, dtype=np.int16)
    lanes = int(num_elements) * 2
    samples = frame.size // lanes
    if samples <= 0:
        raise ValueError(f"Frame is too short for {num_elements} elements")

    raw = frame[: samples * lanes].reshape(samples, lanes)
    i_data = raw[:, 0::2].astype(np.float32, copy=False)
    q_data = raw[:, 1::2].astype(np.float32, copy=False)
    return (i_data - 1j * q_data).astype(np.complex64, copy=False)


def _spectrum_worker_loop(in_q, out_q, stop_event, config, cpu_core):
    _set_cpu_affinity(cpu_core)

    scan_axis = config["scan_axis"]
    num_elements = int(config["num_elements"])
    steering_correction = config["steering_correction"]
    pow_claibration_intrp = config["pow_claibration_intrp"]

    processed = 0
    while not stop_event.is_set():
        try:
            item = in_q.get(timeout=0.1)
        except queue.Empty:
            continue

        if item is None:
            break

        frame_id, frame = item
        t0 = perf_counter()
        try:
            sig_final = int16_frame_to_complex(frame, num_elements=num_elements)
            yspec = calculate_fixed_spectrum_py(
                sig_final,
                scan_axis,
                num_elements,
                steering_correction,
                pow_claibration_intrp,
            )
            yspec_1d = np.asarray(yspec).reshape(-1)
            peak_index = int(np.nanargmax(yspec_1d))
            result = {
                "ok": True,
                "frame_id": int(frame_id),
                "processed": processed + 1,
                "algo_ms": (perf_counter() - t0) * 1000,
                "peak_angle": float(scan_axis[peak_index]),
                "peak_db": float(yspec_1d[peak_index]),
                "yspec": yspec_1d.astype(np.float32, copy=False),
            }
        except Exception as exc:
            result = {
                "ok": False,
                "frame_id": int(frame_id),
                "processed": processed + 1,
                "algo_ms": (perf_counter() - t0) * 1000,
                "error": repr(exc),
            }

        processed += 1

        # Keep latest result only.
        try:
            while True:
                out_q.get_nowait()
        except queue.Empty:
            pass

        try:
            out_q.put_nowait(result)
        except queue.Full:
            pass


class ParallelSpectrumWorker:
    """Single-process spectrum worker with newest-frame queue semantics."""

    def __init__(
        self,
        config_path=None,
        num_elements=4,
        queue_size=1,
        cpu_core=1,
        start_method="fork",
    ):
        self.config_path = config_path
        self.num_elements = int(num_elements)
        self.queue_size = int(queue_size)
        self.cpu_core = cpu_core
        self.start_method = start_method
        self.ctx = mp.get_context(start_method)
        self.in_q = self.ctx.Queue(maxsize=max(1, self.queue_size))
        self.out_q = self.ctx.Queue(maxsize=1)
        self.stop_event = self.ctx.Event()
        self.process = None
        self.submitted = 0
        self.dropped = 0

        self.config = load_spectrum_config(
            config_path=config_path,
            num_elements=self.num_elements,
        )

    def start(self):
        if self.process is not None and self.process.is_alive():
            return

        self.stop_event.clear()
        self.process = self.ctx.Process(
            target=_spectrum_worker_loop,
            args=(self.in_q, self.out_q, self.stop_event, self.config, self.cpu_core),
            daemon=True,
        )
        self.process.start()

    def _reset_queues(self):
        self.in_q = self.ctx.Queue(maxsize=max(1, self.queue_size))
        self.out_q = self.ctx.Queue(maxsize=1)
        self.stop_event = self.ctx.Event()

    def restart_with_config(self, new_config):
        """Restart the worker process with a freshly loaded config.

        The new config is loaded/validated before this method is called; if reload
        fails, the caller can keep the current worker running.
        """
        was_alive = self.process is not None and self.process.is_alive()
        if was_alive:
            self.stop(timeout=2.0)
        self._reset_queues()
        self.config = new_config
        self.submitted = 0
        self.dropped = 0
        self.process = None
        if was_alive:
            self.start()

    def reload_from_manual_mvdr(
        self,
        mode="MVDRman_corr",
        steering_file="steering_correction.mat",
        power_file="pow_claibration_intrp.mat",
        scan_axis=None,
    ):
        """Load latest MATLAB correction .mat files and restart worker."""
        new_config = load_manual_mvdr_config(
            mode=mode,
            steering_file=steering_file,
            power_file=power_file,
            scan_axis=scan_axis,
            num_elements=self.num_elements,
        )
        self.restart_with_config(new_config)
        return new_config

    def submit(self, frame_id, frame_int16):
        """Submit a frame. Drops older unprocessed frames if queue is full."""
        frame_copy = np.asarray(frame_int16, dtype=np.int16).copy()
        item = (int(frame_id), frame_copy)

        try:
            self.in_q.put_nowait(item)
        except queue.Full:
            try:
                self.in_q.get_nowait()
                self.dropped += 1
            except queue.Empty:
                pass
            try:
                self.in_q.put_nowait(item)
            except queue.Full:
                self.dropped += 1
                return False

        self.submitted += 1
        return True

    def poll_latest(self):
        """Return newest result dict, or None if no result is ready."""
        latest = None
        try:
            while True:
                latest = self.out_q.get_nowait()
        except queue.Empty:
            return latest

    def stop(self, timeout=2.0):
        self.stop_event.set()
        try:
            self.in_q.put_nowait(None)
        except Exception:
            pass

        if self.process is not None:
            self.process.join(timeout=timeout)
            if self.process.is_alive():
                self.process.terminate()
                self.process.join(timeout=timeout)
