# doa_rfsoc for ZCU216 board
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
