# doa_rfsoc for ZCU216 board
This project is based on [Xilinx's RFSoC MTS example](https://github.com/Xilinx/RFSoC-MTS)

## Board deployment recovered 2026-11-15

The most recent deployment candidate recovered from the ZCU216 is now in
[PS/python/beamforming](./PS/python/beamforming). It includes the readable
server notebook, Python modules, and the recovered `mts.bit`/`mts.hwh` pair,
with provenance and SHA-256 hashes. Use that directory as a unit for the
XM655 streaming/beamforming workflow with `VSA_rfsoc_new.mlapp`.

The board runs PYNQ 3.0.1; the recovered HWH reports Vivado 2023.2.2. Saved
execution evidence supports the notebook selection, but an incorrect board
clock and inaccessible root Jupyter history prevent definitive last-use dating.
See the deployment README for calibration inputs and verification limits.
## Preparations
Your PYNQ version should be at least [3.0.1](http://www.pynq.io/board.html).
To make it work first of all you need to install it from git, because it contains fixes of basic PYNQ multi-tile synchronization API

```sh
git clone https://github.com/Xilinx/RFSoC-MTS.git
cd RFSoC-MTS
./install.sh
```

## Usage without compilation
The following describes the older example; for the recovered board deployment,
follow [its README](./PS/python/beamforming/README.md).
You need to place .bit and .hwh files from [/PL/out](./PL/out) and python wrapper [/PS/python/wrapper](./PS/python/wrapper/doa_mts.py) together in any directory on board and write your own notebook like in [examples](./PS/python/notebook)

## Building from source
This is the older checked-in design flow. It has not been shown to reproduce
the recovered board bitstream.
The checked-in `PL/doa_mts_prj.tcl` declares Vivado **2023.2** and rejects other versions. From [./PL](./PL), source it in Vivado 2023.2 and then generate the bitstream:
```sh
source doa_mts_prj.tcl
```

## TODO
Generate patch for PLL clock

Generate installation from script
