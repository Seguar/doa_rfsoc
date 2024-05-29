
# CLK104_CLK_SPI_MUX_SEL[1:0]
set_property PACKAGE_PIN G10 [get_ports {clk104_clk_spi_mux_sel_tri_o[0]}]
set_property PACKAGE_PIN H11 [get_ports {clk104_clk_spi_mux_sel_tri_o[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {clk104_clk_spi_mux_sel_tri_o[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {clk104_clk_spi_mux_sel_tri_o[1]}]



set_property PACKAGE_PIN E11 [get_ports PL_SYSREF_clk_p]
set_property IOSTANDARD LVDS_25 [get_ports PL_SYSREF_clk_p]

set_property PACKAGE_PIN E10 [get_ports {PL_CLK_clk_p[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {PL_CLK_clk_p[0]}]

#create_clock -period 13.0208 -name pl_clk [get_ports PL_CLK_clk_p]

#set_property CLOCK_DEDICATED_ROUTE ANY_CMT_COLUMN [get_nets pl_clk]



create_clock -period 2.0 -name {PL_CLK_clk_p[0]} -waveform {0.000 1.0} [get_ports {PL_CLK_clk_p[0]}]
create_generated_clock -name design_1_i/pl_sysref_0/inst/user_sysref_adc_1 -source [get_pins design_1_i/clocktreeMTS/MTSclkwiz/inst/mmcme4_adv_inst/CLKOUT0] -divide_by 1 [get_pins design_1_i/pl_sysref_0/inst/user_sysref_adc_reg/Q]

set_property IOSTANDARD LVCMOS18 [get_ports Ext_Capture]
set_property IOSTANDARD LVCMOS18 [get_ports Ext_Play]
set_property PACKAGE_PIN J13 [get_ports Ext_Capture]
set_property PACKAGE_PIN H13 [get_ports Ext_Play]
set_property PACKAGE_PIN H14 [get_ports {Send_Cap[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {Send_Play[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {Send_Cap[0]}]

set_property PACKAGE_PIN G16 [get_ports {Send_Play[0]}]

set_property PACKAGE_PIN G13 [get_ports {Send_Sync[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {Send_Sync[0]}]
set_property DRIVE 4 [get_ports {Send_Sync[0]}]

set_property CLOCK_DEDICATED_ROUTE ANY_CMT_COLUMN [get_nets {design_1_i/clocktreeMTS/util_ds_buf_0/U0/IBUF_OUT_BUFG[0]}]
set_property PULLDOWN true [get_ports Ext_Capture]
set_property PULLDOWN true [get_ports Ext_Play]
set_property DRIVE 4 [get_ports {Send_Play[0]}]
set_property DRIVE 4 [get_ports {Send_Cap[0]}]

set_property CLOCK_DEDICATED_ROUTE ANY_CMT_COLUMN [get_nets design_1_i/clocktreeMTS/util_ds_buf_0/U0/USE_IBUFDS.GEN_IBUFDS[0].IBUFDS_I/O]
set_property PULLDOWN true [get_ports {Send_Cap[0]}]
set_property PULLDOWN true [get_ports {Send_Play[0]}]

