# doa_mts_dma: capture RAM to PS DDR by DMA

A separate overlay, built with Vivado 2025.2, beside the deployed `doa_mts` boot
pair. It keeps the deployed design unchanged and adds one AXI CDMA, so a capture
reaches PS DDR in about 1 ms instead of being read word by word over MMIO
(about 30 MB/s, 69 ms for 2 MB).

## Why the design is recreated from the HWH

The deployed pair `PS/python/boot/doa_mts.bit/.hwh` (Vivado 2022.2) does **not**
come from `PL/doa_mts.tcl`. That script matches the older `PL/out` pair: DACRAMstreamer
with clock and width converters, an `axi_gpio_dac`/`axi_gpio_fifoflush` pair, the
RF AXI-Stream on MMCM outputs 3/4, 256-bit DAC RAMs and other RFDC settings
(193 parameters differ, e.g. DAC interpolation 40 vs 10, inverse sinc off).
The deployed design uses a `ram_play` module (source never committed),
`axi_gpio_dac0`/`axi_gpio_dac1`, 128-bit DAC RAMs on the RF clock and a capture
URAM with read latency 3.

`hwh2bd.py` turns the boot HWH into Tcl: hierarchy, every cell (newest installed
IP version), every interface and port connection (with boundary pins created
across hierarchy levels) and the address map. `bd_helpers.tcl` applies each
cell's HWH parameters where the new IP has a `CONFIG.<name>` property. The PS
uses the 2022.2 `write_bd_tcl` PS block (`ps_config.tcl`, from `PL/doa_mts.tcl`,
whose PS matches the boot HWH). `src/ram_play.v` is reconstructed from the HWH
ports and parameters (DACRAMstreamer without the vector count).

`hwhdiff.py` compares HWH files. Recreated vs deployed: same cells, connections
and address map. What remains differs only in parameters that are derived, unused
or new in 2025.2:

- PS IP version 3.4 to 3.5.
- `SUPPORTS_NARROW_BURST` of the three BRAM controllers is now derived from the
  SmartConnect.
- NCO and mixer defaults of the four disabled ADC slices.
- New parameters `SCD_SG_minus2`, `C_DIVBY2` and `PSU__IRQ_P2F_USB2_OTG__*`.
- Unconnected user, QoS and prot sideband pins.

## The DMA addition (`add_cdma.tcl`)

| Item | Setting |
|---|---|
| `capture_dma` | AXI CDMA 4.1, simple mode (no SG), 128-bit, 256-beat bursts, 40-bit address, no DRE |
| Registers | `0x8005_0000` (64 KB) via `control_interconnect` M07 (HPM0_LPD) |
| Data path | CDMA M_AXI -> `axi_smc` S01; `axi_smc` M03 -> `S_AXI_HP0_FPD` (128-bit); all on `pl_clk0` |
| CDMA address map | capture RAM `0xA040_0000`, DAC RAMs `0xA000_0000`/`0xA020_0000` (same addresses as for the PS), DDR via HP0: `0x0` (2 GB) and `0x8_0000_0000` (2 GB) |
| PS address map | unchanged, plus the CDMA register window |

The capture logic (ADCRAMcapture, trigger, URAM, `axi_bram_ctrl`) is untouched,
so `adc_capture`, the trigger and the tail sentinel work as before. The CDMA reads
the same BRAM controller the PS uses, through the existing SmartConnect.

Expected copy time (not yet measured on hardware): at `pl_clk0` = 125 MHz the
128-bit path moves at most 2.0 GB/s, and 2.18 GB/s at the session's 136.36 MHz.
- 2 MB: about 1.05 to 1.3 ms of DMA.
- 44 000 rows (704 kB): about 0.35 to 0.45 ms.
- Add the cache invalidate of the DDR buffer and about 0.1 ms of Python per call.

Compare 69 ms and about 23 ms for the same reads over MMIO.

The capture itself takes 1.05 ms after the trigger edge. A copy must not start
earlier, because the CDMA is as fast as the capture.

`doa_mts_dma.xdc` times `pl_clk0` at 7.2 ns, so the 136.36 MHz setting of the
session service is covered. The HWH still declares 125 MHz, so PYNQ's default
clock is unchanged.

## Build

On the x86 build guest (Vivado 2025.2, board files from RFSoC-PYNQ v4.0.0):

```bash
python3 hwh2bd.py ../../PS/python/boot/doa_mts.hwh .      # regenerates bd_from_hwh.tcl, hwh_params.tcl
mkdir run && cd run
source /tools/Xilinx/2025.2/Vivado/settings64.sh
vivado -mode batch -source ../build.tcl -tclargs dma all 6   # or: boot all | dma bd | boot bd
```

Outputs are in `run/out/`: `doa_mts_dma.bit`, `.hwh` and `.xsa` from the same run, timing,
DRC, utilisation, CDC and methodology reports, and the block-design HWH.
Set `RFSOC4X2_BOARD_REPO` if the board files are elsewhere. Use 6 jobs or fewer
on a 32 GB guest: 12 parallel IP synthesis runs were OOM-killed.

## Driver

`PS/python/dma/doa_mts_dma.py` (subclass of the boot wrapper) and
`PS/python/dma/cdma.py` (register-level CDMA driver without PYNQ imports).
Hardware-free tests: `python3 -m unittest discover -s tests -p 'test_doa_mts_dma.py' -v`.
