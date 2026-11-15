# doa_rfsoc for RFSoC 4x2 board

## Board reconciliation — 2026-11-15

See the [recovered deployment audit](runtime/rfsoc4x2/README.md) for the observed
live `/boot/boot.py` service, synchronized boot script, newer MultiTest notebooks,
matching hardware hashes, clock files and protocol limitations. The boot wrapper,
bit/HWH pair and waveform already matched `PS/python/boot`; the different
`PL/out` pair is not an interchangeable substitute.

The newest saved notebook is not proven to be the latest used: the board clock
is incorrect and authenticated Jupyter sessions were unavailable. MultiTest is
preserved as experimental code. This branch targets RFSoC 4x2; ZCU216 uses the
separate `zcu216` branch and a different server protocol.

This project is based on [Xilinx's RFSoC MTS example](https://github.com/Xilinx/RFSoC-MTS)
## Preparations
Your PYNQ version should be at least [3.0.1](http://www.pynq.io/board.html).
To make it work first of all you need to install it from git, because it contains fixes of basic PYNQ multi-tile synchronization API

```sh
git clone https://github.com/Xilinx/RFSoC-MTS.git
cd RFSoC-MTS
./install.sh
```

## Usage without compilation
You need to place .bit and .hwh files from [/PL/out](./PL/out) and python wrapper [/PS/python/wrapper](./PS/python/wrapper/doa_mts.py) together in any directory on board and write your own notebook like in [examples](./PS/python/notebook)

## Building from source
From [./PL](./PL) directory run these command in vivado 2022.2 and run generate bitstream
```sh
source doa_mts_prj.tcl
```

## TODO
Generate patch for PLL clock

Generate installation from script
