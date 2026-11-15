# Recovered ZCU216/XM655 beamforming deployment

Collected from the board on **2026-11-15**, running PYNQ 3.0.1. Start with
`boot_reworked_human_readable.ipynb`. Its companion modules and recovered
`mts.bit`/`mts.hwh` pair are included in this directory, with hashes in
[manifest.json](manifest.json). Python and hardware files retain the collected
bytes; notebook outputs and execution counts were cleared for publication.

## Selection evidence

The source directory was
`Demo/trig_out/v2/demo_new_rfmc/imp/fast/fix/algo/track/corr`.
This notebook was the newest candidate by board modification time and had saved
execution counts 1, 2, 3 in cells 2, 4, 6. Those cells cover configuration,
imports, and overlay/server preparation. The serving cell had no saved execution
count. This is evidence of prior setup execution, **not proof of the last live
server session**. The board reported June 2025 during collection in November
2026; root-owned Jupyter session/history files were inaccessible.

The next candidate was the parent `track/boot_reworked_human_readable.ipynb`,
followed by `Demo/trig_out/v2/boot.ipynb`. Their originals are retained in the
local collection archive, rather than presented as additional current entrypoints.

## Files and runtime

- Notebook: settings and high-level setup/server/cleanup cells.
- `rfsoc_notebook_server.py`: TCP framing, burst requests, worker and DAC tracking.
- `algorithm_worker.py`, `calculate_fixed_spectrum_py.py`: spectrum processing.
- `mts.py`: overlay, RFDC setup and selected XM655 channel packing.
- `run_rfsoc_server.py`: alternative command-line launcher; not verified as the
  board's boot service. Choose either the notebook or launcher for a session.
- `mts.bit`, `mts.hwh`: the pair recovered from this same directory. HWH reports
  Vivado **2023.2.2**. Their source-build identity and timing are not established;
  the older repository Tcl is not proven to reproduce these artifacts.

Observed packages: PYNQ 3.0.1, xrfclk 2.0, xrfdc 2.0, NumPy 1.21.5,
SciPy 1.8.0, netifaces 0.11.0, in the board's Python 3.10 environment. Package
versions alone do not identify local xrfclk/xrfdc patches.

## Use on a matching board

1. Copy this **whole directory** to a new Jupyter directory on a ZCU216/XM655.
   Keep the recovered bit/hwh pair together with the modules; do not substitute
   the older `PL/out/doa_mts.*` files.
2. Review the recovered [clock configuration](https://github.com/Seguar/ZCU216-PYNQ/tree/main/runtime/beamforming).
   The wrapper selects LMK 500 MHz and LMX 2000 MHz. The collected LMK file
   differs from the image repository's original 500 MHz file.
3. Supply your array calibration files if using corrected MVDR:
   `steering_correction.mat` and `pow_claibration_intrp.mat` (spelling is part of
   the interface). These files were **not collected**. Optional `algo_config.npz`
   or `.mat` carries `scan_axis`, `steering_correction`, and
   `pow_claibration_intrp`. Missing initial config uses identity corrections;
   that is not calibrated operation. DAC waveform mode 4 also needs `data.mat`
   containing `sigInt16`; this measurement-specific file is not bundled.
4. Open the notebook from this directory and review its settings. Defaults
   enable the algorithm and DAC tracking support. Set `RAW_ONLY = True` for
   initial raw-stream diagnostics. Running the overlay cell programs hardware.
5. Run setup, then the server cell when ready for hardware operation. Connect
   the MATLAB client to the board address, TCP port 4000. Interrupt the server
   cell to stop; the notebook also exposes explicit cleanup.

The equivalent launcher uses `/usr/local/share/pynq-venv/bin/python
run_rfsoc_server.py` after reviewing its configuration. No boot-service changes
are implied by this snapshot.

## MATLAB interface

Use [VSA_rfsoc_new.mlapp](https://github.com/Seguar/vsa_rfsoc/blob/main/VSA_rfsoc_new.mlapp)
for burst streaming and notebook DAC tracking. The deployed default selects RF
channels 0–3, packed per sample as `I0,Q0,I1,Q1,I2,Q2,I3,Q3`. Frames are raw
little-endian int16 with no length header. Default `data_size` is 131072 int16
values (262144 bytes); the `dataChan` command can change it. MATLAB reconstructs
complex samples as `I - 1j*Q`.

Commands are newline-terminated, with `#` separating commands and `/` separating
arguments. By default each nonempty request sends one frame when streaming is
enabled. `stream N` requests N frames; `stream 0` suppresses the response frame.
Read every requested frame before changing acquisition settings. The existing
MATLAB application manages this accounting.

Tracking commands include `dacbf off`, `dacbf tracking`, `dacbf retracking`,
`dacbfcorr` (hundredths of a degree), `dacbfcorrdeg` (degrees), and `dacbfsign`.
Tracking/retracking reloads the configured correction files. The notebook lists
the MVDR reload, mode, file, and scan commands.

## Verification boundary

All 50 collected originals were hash-verified locally. Repository checks cover
snapshot hashes, Python/notebook syntax, HWH XML and hardware-free frame packing
and protocol handling. No notebook cells were run on the board during this audit;
no FPGA rebuild, RF measurement, tracking accuracy or end-to-end MATLAB validation
is claimed. The existing Vivado 2025.2 build VM does not establish compatibility
with this 2023.2.2 artifact.

Run the host checks from the repository root with Python 3.10+ and NumPy,
SciPy and netifaces installed:

```sh
python3 -m unittest discover -s tests -p test_recovered_deployment.py -v
```

These checks never import the hardware wrapper or create an overlay.
