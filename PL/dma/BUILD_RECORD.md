# Build record, 2026-11-22

Tool: Vivado v2025.2 (64-bit), x86_64 build guest, board files from RFSoC-PYNQ v4.0.0
(`boards/RFSoC4x2/bsp/board_files`). Part xczu48dr-ffvg1517-2-e, board realdigital.org:rfsoc4x2:part0:1.0.
Command: `vivado -mode batch -source ../src/build.tcl -tclargs <boot|dma> all 6`, one run at a time,
from this folder's files (branch dma-capture). Run directories on the guest:
`/work/rfsoc4x2-dma/run-boot` (13:29-13:53 UTC) and `/work/rfsoc4x2-dma/run-dma` (13:53-14:18 UTC).

| | boot (recreated, unchanged) | dma (boot + CDMA) |
|---|---|---|
| Implementation | write_bitstream complete | write_bitstream complete |
| WNS / TNS (setup) | +0.074 ns / 0 | +0.185 ns / 0 |
| WHS / THS (hold) | +0.013 ns / 0 | +0.012 ns / 0 |
| clk_pl_0 constraint | 8.0 ns (125 MHz) | 7.2 ns (138.9 MHz), WNS +0.426 ns |
| Unsafe clock interactions | none | none |
| DRC | 1 warning RTSTAT-10 (no routable loads) | same |
| CLB LUTs | 29 316 (6.89 %) | 33 570 (7.89 %) |
| CLB registers | 28 766 (3.38 %) | 35 313 (4.15 %) |
| Block RAM tiles | 1024 (94.81 %) | 1024 (94.81 %) |
| URAM | 64 (80 %) | 64 (80 %) |
| capture_dma alone | - | 1100 LUT, 1531 FF, 0 BRAM |

Worst setup path in both: clocktreeMTS SYSREF synchroniser -> RFDC marker counter CE
(clocktreeMTS_MTSclkwiz_clk_out2, 8 ns), part of the original MTS logic.
Both runs repeat the original XDC's critical warnings: four MTSclkwiz CLKOUT1 /
BUFGCE_DIV and axi_gpio_dac object lookups resolve to nothing, and IOSTANDARD is set
on a pin object. Timing reports show all clock crossings covered, but these
constraints should be reviewed against the 2022.2 build log (not available).

SHA-256:
    848a92c6e01d11e18c8d10fe7cbbb5b8b212fb5b99363887f4a3e6729623ce11  doa_mts_dma.bit
    57a961c7139f5f7b91904ec17fd49ba971fa5b7c05a020c66544c60b1752fe21  doa_mts_dma.hwh
    0624613147d2358b360e5115df73f88e7f81f0cfd497f21ffecf8c7caaf06dc5  dma/doa_mts_dma.xsa
    17a2dcd6fbc54217f7fe9af00f8fe151723b66dc2286a524c91a72d5c4ed3add  boot/doa_mts.bit
    eafe9532df0d094fe754b15e088d3c991ac8003b76b366fbc36ee62b211ebeb7  boot/doa_mts.hwh
    3ef7a5cf3695e4a8e1bed2eaa0c1cdd3fdc06c1522d16017646e1e384a9fed68  boot/doa_mts.xsa

The XSA files and the boot-variant bit/HWH are kept outside git in the local evidence
folder `evidence/rfsoc4x2-dma-20261122` and on the guest (out/ of each run).
