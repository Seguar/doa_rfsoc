## Extra constraints for the DMA variant (added after doa_mts_boot.xdc).
##
## pl_clk0 margin: the PS sets pl_clk0 to 125 MHz from the HWH, but the session
## service raises it to 136.36 MHz (IOPLL/11) so the pl_clk0-side capture never
## runs slower than the RF fabric clock. Time the PL at 7.2 ns (138.9 MHz) so that
## setting is covered too. The HWH (and therefore PYNQ's default) stays 125 MHz.
create_clock -period 7.200 -name clk_pl_0 [get_pins -hierarchical -filter {NAME =~ */PS8_i/PLCLK[0]}]

## The boot XDC names the old single DAC-enable GPIO; the deployed design has two.
## Their outputs cross into the RF clock domain (ram_play enable) like before.
set_false_path -from [get_pins -hierarchical -filter {NAME =~ *control/gpio_control/axi_gpio_dac*/U0/gpio_core_1/Not_Dual.gpio_Data_Out_reg*/C}]
