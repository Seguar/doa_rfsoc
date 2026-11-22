# DMA capture addition to the recreated doa_mts design (variant "dma").
#
# The ADC capture path is unchanged: ADCRAMcapture still fills URAM_capture's 2 MB
# URAM on the shared trigger, and the PS can still read it via
# URAM_capture/axi_bram_ctrl_0. Added:
#   capture_dma  AXI CDMA 4.1, simple mode (no scatter-gather), 128-bit, 256-beat
#                bursts, 40-bit addresses. Copies the capture RAM (and, if wanted,
#                writes the DAC player RAMs) to/from PS DDR.
#   axi_smc      gains slave S01 (CDMA master) and master M03 -> S_AXI_HP0_FPD.
#   PS           S_AXI_HP0_FPD (SAXIGP2) enabled, 128-bit, clocked by pl_clk0.
#   control_interconnect gains M07 -> capture_dma/S_AXI_LITE at 0x8005_0000.
# CDMA address map: the BRAM controllers at the same addresses the PS uses
# (0xA000_0000 dac_0, 0xA020_0000 dac_1, 0xA040_0000 capture) and PS DDR through
# HP0 (DDR_LOW 0x0 / 2 GB, DDR_HIGH 0x8_0000_0000 / 2 GB). The PS address map is
# unchanged apart from the CDMA register window.

set ps [get_bd_cells zynq_ultra_ps_e_0]
set_property -dict [list \
  CONFIG.PSU__USE__S_AXI_GP2 {1} \
  CONFIG.PSU__SAXIGP2__DATA_WIDTH {128} \
] $ps

set cdma [create_bd_cell -type ip -vlnv [latest_vlnv xilinx.com:ip:axi_cdma] capture_dma]
set_property -dict [list \
  CONFIG.C_INCLUDE_SG {0} \
  CONFIG.C_M_AXI_DATA_WIDTH {128} \
  CONFIG.C_M_AXI_MAX_BURST_LEN {256} \
  CONFIG.C_ADDR_WIDTH {40} \
  CONFIG.C_INCLUDE_DRE {0} \
  CONFIG.C_USE_DATAMOVER_LITE {0} \
] $cdma

set smc [get_bd_cells axi_smc]
set_property -dict [list CONFIG.NUM_SI {2} CONFIG.NUM_MI {4}] $smc
connect_bd_intf_net -intf_net capture_dma_M_AXI [get_bd_intf_pins capture_dma/M_AXI] [get_bd_intf_pins axi_smc/S01_AXI]
connect_bd_intf_net -intf_net axi_smc_M03_AXI [get_bd_intf_pins axi_smc/M03_AXI] [get_bd_intf_pins zynq_ultra_ps_e_0/S_AXI_HP0_FPD]

set ic [get_bd_cells control/control_interconnect]
set_property CONFIG.NUM_MI {8} $ic
xconnect_intf control_control_interconnect_M07_AXI control/control_interconnect/M07_AXI capture_dma/S_AXI_LITE

# clocks and resets: everything on pl_clk0 / PSreset_control like the rest of the AXI side
# (axi_smc/aclk and axi_smc/aresetn are root-level pins of those two nets)
connect_bd_net [get_bd_pins axi_smc/aclk] \
  [get_bd_pins capture_dma/m_axi_aclk] [get_bd_pins capture_dma/s_axi_lite_aclk] \
  [get_bd_pins zynq_ultra_ps_e_0/saxihp0_fpd_aclk]
connect_bd_net [get_bd_pins axi_smc/aresetn] [get_bd_pins capture_dma/s_axi_lite_aresetn]
# M07 clock/reset: join the control-hierarchy boundary pins that feed M06
proc _boundary_pin_of {pin hier} {
  set n [get_bd_nets -of_objects [get_bd_pins $pin]]
  foreach p [get_bd_pins -of_objects $n] {
    if {[regexp "^/$hier/\[^/\]+\$" $p]} { return $p }
  }
  error "no boundary pin of $hier on the net of $pin"
}
connect_bd_net [get_bd_pins [_boundary_pin_of /control/control_interconnect/M06_ACLK control]] [get_bd_pins /control/control_interconnect/M07_ACLK]
connect_bd_net [get_bd_pins [_boundary_pin_of /control/control_interconnect/M06_ARESETN control]] [get_bd_pins /control/control_interconnect/M07_ARESETN]

# address map
assign_bd_address -offset 0x80050000 -range 0x00010000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs capture_dma/S_AXI_LITE/Reg] -force
set cs [get_bd_addr_spaces capture_dma/Data]
assign_bd_address -offset 0xA0400000 -range 0x00200000 -target_address_space $cs [get_bd_addr_segs URAM_capture/axi_bram_ctrl_0/S_AXI/Mem0] -force
assign_bd_address -offset 0xA0000000 -range 0x00200000 -target_address_space $cs [get_bd_addr_segs dac_0/axi_bram_ctrl_0/S_AXI/Mem0] -force
assign_bd_address -offset 0xA0200000 -range 0x00200000 -target_address_space $cs [get_bd_addr_segs dac_1/axi_bram_ctrl_0/S_AXI/Mem0] -force
assign_bd_address -offset 0x00000000 -range 0x80000000 -target_address_space $cs [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP2/HP0_DDR_LOW] -force
assign_bd_address -offset 0x000800000000 -range 0x80000000 -target_address_space $cs [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP2/HP0_DDR_HIGH] -force
# HP0 is only for the CDMA: keep its segments out of the PS address space, and
# keep QSPI / LPD OCM windows out of the CDMA address space.
foreach s {HP0_DDR_LOW HP0_DDR_HIGH HP0_QSPI HP0_LPS_OCM} {
  catch {exclude_bd_addr_seg -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP2/$s]}
}
foreach s {HP0_QSPI HP0_LPS_OCM} {
  catch {exclude_bd_addr_seg -target_address_space $cs [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP2/$s]}
}
