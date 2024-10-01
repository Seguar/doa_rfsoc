set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets design_1_i/clocktreeMTS/util_ds_buf_2/U0/USE_IBUFDS.GEN_IBUFDS[0].IBUFDS_I/O]
set_property CLOCK_DEDICATED_ROUTE ANY_CMT_COLUMN [get_nets design_1_i/clocktreeMTS/util_ds_buf_0/U0/BUFG_O[0]]
# CLK104_CLK_SPI_MUX_SEL[1:0]
set_property PACKAGE_PIN G10 [get_ports {clk104_clk_spi_mux_sel_tri_o[0]}]
set_property PACKAGE_PIN H11 [get_ports {clk104_clk_spi_mux_sel_tri_o[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {clk104_clk_spi_mux_sel_tri_o[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {clk104_clk_spi_mux_sel_tri_o[1]}]



set_property PACKAGE_PIN E11 [get_ports {PL_SYSREF_clk_p[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {PL_SYSREF_clk_p[0]}]

set_property PACKAGE_PIN E10 [get_ports {PL_CLK_clk_p[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {PL_CLK_clk_p[0]}]

#create_clock -period 2.0 -name pl_clk [get_ports PL_CLK_clk_p]

#set_property CLOCK_DEDICATED_ROUTE ANY_CMT_COLUMN [get_nets pl_clk]
create_clock -period 2.000 -name {PL_CLK_clk_p[0]} -waveform {0.000 1.000} [get_ports {PL_CLK_clk_p[0]}]
set_input_delay -clock [get_clocks PL_CLK_clk_p[0]] -min -add_delay 8.158 [get_ports PL_SYSREF_clk_p[0]]
set_input_delay -clock [get_clocks PL_CLK_clk_p[0]] -max -add_delay 8.178 [get_ports PL_SYSREF_clk_p[0]]
# Input Delay for PL_SYSREF to ensure MTS requirements via PG269
#set_input_delay -clock [get_clocks {PL_CLK_clk_p[0]}] -min -add_delay 2.000 [get_ports PL_SYSREF_clk_p]
#set_input_delay -clock [get_clocks {PL_CLK_clk_p[0]}] -max -add_delay 2.031 [get_ports PL_SYSREF_clk_p]
#set_input_delay -clock [get_clocks {PL_CLK_clk_p[0]}] -min -add_delay 0.000 [get_ports PL_SYSREF_clk_p]
#set_input_delay -clock [get_clocks {PL_CLK_clk_p[0]}] -max -add_delay 1.958 [get_ports PL_SYSREF_clk_p]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets design_1/clocktreeMTS/IBUFDS_PL_CLK/U0/USE_IBUFDS.GEN_IBUFDS[0].IBUFDS_I/O]
#set_property CLOCK_DEDICATED_ROUTE ANY_CMT_COLUMN [get_nets design_1/clocktreeMTS/BUFG_PL_CLK/U0/BUFG_O[0]]
#set_false_path -from [get_clocks clk_pl_0] -to [get_clocks -of_objects [get_pins design_1_i/clocktreeMTS/MTSclkwiz/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT0]]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {design_1_i/util_ds_buf_1/U0/USE_IBUFDS.GEN_IBUFDS[0].IBUFDS_I/O}]
#create_generated_clock -name design_1_i/pl_sysref_0/inst/user_sysref_adc_1 -source [get_pins design_1_i/clocktreeMTS/clk_out1] -divide_by 1 [get_pins design_1_i/pl_sysref_0/inst/user_sysref_adc_reg/Q]

#set_property IOSTANDARD LVCMOS18 [get_ports Ext_Capture]
#set_property IOSTANDARD LVCMOS18 [get_ports Ext_Play]
#set_property PACKAGE_PIN J13 [get_ports Ext_Capture]
#set_property PACKAGE_PIN H13 [get_ports Ext_Play]
#set_property PACKAGE_PIN H14 [get_ports {Send_Cap[0]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {Send_Play[0]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {Send_Cap[0]}]

#set_property PACKAGE_PIN G16 [get_ports {Send_Play[0]}]

set_property PACKAGE_PIN G13 [get_ports {Send_Sync[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {Send_Sync[0]}]
set_property DRIVE 4 [get_ports {Send_Sync[0]}]

#set_property CLOCK_DEDICATED_ROUTE ANY_CMT_COLUMN [get_nets {design_1_i/clocktreeMTS/util_ds_buf_0/U0/IBUF_OUT_BUFG[0]}]
#set_property PULLTYPE PULLDOWN [get_ports Ext_Capture]
#set_property PULLTYPE PULLDOWN [get_ports Ext_Play]
#set_property DRIVE 4 [get_ports {Send_Play[0]}]
#set_property DRIVE 4 [get_ports {Send_Cap[0]}]

#set_property CLOCK_DEDICATED_ROUTE ANY_CMT_COLUMN [get_nets design_1_i/clocktreeMTS/util_ds_buf_0/U0/USE_IBUFDS.GEN_IBUFDS[0].IBUFDS_I/O]
#set_property PULLTYPE PULLDOWN [get_ports {Send_Cap[0]}]
#set_property PULLTYPE PULLDOWN [get_ports {Send_Play[0]}]

#set_property BLOCK_SYNTH.RETIMING 1 [get_cells design_1/usp_rf_data_converter_0/*]
#set_property BLOCK_SYNTH.STRATEGY PERFORMANCE_OPTIMIZED [get_cells design_1/usp_rf_data_converter_0/*]


set_property BLOCK_SYNTH.RETIMING 1 [get_cells design_1_i/usp_rf_data_converter_0/*]
set_property BLOCK_SYNTH.STRATEGY PERFORMANCE_OPTIMIZED [get_cells design_1_i/usp_rf_data_converter_0/*]

set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.UNUSEDPIN PULLNONE [current_design]
set_property BITSTREAM.CONFIG.OVERTEMPSHUTDOWN ENABLE [current_design]
set_property BITSTREAM.CONFIG.USR_ACCESS TIMESTAMP [current_design]