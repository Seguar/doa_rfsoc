#!/usr/bin/env python3
"""Boot-friendly launcher for the XM655 RFSoC TCP server.

Place this file in the same directory as:
  - mts.py
  - rfsoc_notebook_server.py
  - algorithm_worker.py
  - calculate_fixed_spectrum_py.py
  - mts.bit
  - optional algo_config.npz or algo_config.mat

Run manually first:
  /usr/local/share/pynq-venv/bin/python run_rfsoc_server.py
"""

from __future__ import annotations

import os
import signal
import sys
from pathlib import Path

from mts import doaMtsOverlay
from rfsoc_notebook_server import RfsocNotebookServer, ServerConfig


# Always run relative to this script so mts.bit and algo_config.* are found.
APP_DIR = Path(__file__).resolve().parent
os.chdir(APP_DIR)

# ------------------------- editable configuration -------------------------

SERVER_PORT = 4000
DEFAULT_STREAM_FRAMES = 1

RAW_ONLY = False
ENABLE_ALGORITHM_WORKER = True
ENABLE_DAC_TRACKING = True

LOG_LEVEL = "summary"          # "quiet", "summary", or "debug"
TIMING_EVERY = 200
BURST_SUMMARY_EVERY = 50
PRINT_COMMANDS = False

ALGO_CPU_CORE = 1
SERVER_CPU_CORES = [0, 2, 3]

ALGO_QUEUE_SIZE = 1
ALGO_EVERY_N_FRAMES = 1
ALGO_CONFIG_PATH = "algo_config.npz"  # Initial config; tracking can reload MATLAB correction .mat files.
ALGO_PRINT_EVERY = 200

MVDR_AUTO_RELOAD_ON_TRACKING = True
MVDR_MODE = "MVDRman_corr"
MVDR_STEERING_FILE = "steering_correction.mat"
MVDR_POWER_FILE = "pow_claibration_intrp.mat"
MVDR_SCAN_START_DEG = -60.0
MVDR_SCAN_STOP_DEG = 60.0
MVDR_SCAN_STEP_DEG = 1.0

DAC_TRACKING_MIN_UPDATE_INTERVAL_S = 0.05
DAC_TRACKING_MIN_ANGLE_STEP_DEG = 0.25
DAC_TRACKING_PHASE_SIGN = -1.0
DAC_TRACKING_PRINT_EVERY = 200

BITFILE = "mts.bit"

# -------------------------------------------------------------------------


def build_config() -> ServerConfig:
    return ServerConfig(
        port=SERVER_PORT,
        default_stream_frames=DEFAULT_STREAM_FRAMES,
        raw_only=RAW_ONLY,
        enable_algorithm_worker=ENABLE_ALGORITHM_WORKER,
        enable_dac_tracking=ENABLE_DAC_TRACKING,
        log_level=LOG_LEVEL,
        timing_every=TIMING_EVERY,
        burst_summary_every=BURST_SUMMARY_EVERY,
        print_commands=PRINT_COMMANDS,
        server_cpu_cores=SERVER_CPU_CORES,
        algo_cpu_core=ALGO_CPU_CORE,
        algo_queue_size=ALGO_QUEUE_SIZE,
        algo_every_n_frames=ALGO_EVERY_N_FRAMES,
        algo_config_path=ALGO_CONFIG_PATH,
        algo_print_every=ALGO_PRINT_EVERY,
        mvdr_auto_reload_on_tracking=MVDR_AUTO_RELOAD_ON_TRACKING,
        mvdr_mode=MVDR_MODE,
        mvdr_steering_file=MVDR_STEERING_FILE,
        mvdr_power_file=MVDR_POWER_FILE,
        mvdr_scan_start_deg=MVDR_SCAN_START_DEG,
        mvdr_scan_stop_deg=MVDR_SCAN_STOP_DEG,
        mvdr_scan_step_deg=MVDR_SCAN_STEP_DEG,
        dac_tracking_min_update_interval_s=DAC_TRACKING_MIN_UPDATE_INTERVAL_S,
        dac_tracking_min_angle_step_deg=DAC_TRACKING_MIN_ANGLE_STEP_DEG,
        dac_tracking_phase_sign=DAC_TRACKING_PHASE_SIGN,
        dac_tracking_print_every=DAC_TRACKING_PRINT_EVERY,
    )


def main() -> int:
    server = RfsocNotebookServer(build_config())

    def stop_handler(signum, frame):  # noqa: ARG001
        print(f"Received signal {signum}; stopping RFSoC server...", flush=True)
        server.close()
        raise SystemExit(0)

    signal.signal(signal.SIGTERM, stop_handler)
    signal.signal(signal.SIGINT, stop_handler)

    print(f"Starting XM655 RFSoC server from {APP_DIR}", flush=True)
    print(f"Loading overlay: {BITFILE}", flush=True)

    overlay = doaMtsOverlay(BITFILE)
    server.prepare(overlay)

    print(f"Server status: {server.status()}", flush=True)
    server.run_forever()
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
