## PL_SYSREF MTS requirements via PG269
set_property PACKAGE_PIN AN11 [get_ports {PL_CLK_clk_p[0]}]
set_property IOSTANDARD LVDS [get_ports PL_CLK*]
set_property DIFF_TERM_ADV TERM_100 [get_ports PL_CLK*]

set_property PACKAGE_PIN AP18 [get_ports {PL_SYSREF_clk_p[0]}]
set_property IOSTANDARD LVDS [get_ports PL_SYSREF*]
set_property DIFF_TERM_ADV TERM_100 [get_ports PL_SYSREF*]

create_clock -period 2.000 -name PL_CLK [get_ports {PL_CLK_clk_p[0]}]
set_false_path -from [get_clocks clk_pl_0] -to [get_clocks -of_objects [get_pins mts_i/clocktreeMTS/MTSclkwiz/inst/CLK_CORE_DRP_I/clk_inst/BUFGCE_DIV_CLK2_inst/O]]
set_max_delay -from [get_clocks PL_CLK] -to [get_clocks -of_objects [get_pins mts_i/clocktreeMTS/MTSclkwiz/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT1]] 0.200
set_false_path -from [get_clocks clk_pl_0] -to [get_clocks -of_objects [get_pins mts_i/clocktreeMTS/MTSclkwiz/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT1]]

set_false_path -from [get_clocks -of_objects [get_pins mts_i/clocktreeMTS/MTSclkwiz/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst/CLKOUT1]] -to [get_clocks clk_pl_0]
set_false_path -from [get_clocks RFADC*_CLK] -to [get_clocks clk_pl_0]
set_false_path -from [get_clocks RFDAC*_CLK] -to [get_clocks clk_pl_0]

set_false_path -from [get_pins {mts_i/control/gpio_control/axi_gpio_dac/U0/gpio_core_1/Not_Dual.gpio_Data_Out_reg[*]/C}]
set_false_path -from [get_pins {mts_i/clocktreeMTS/RFegressReset/U0/ACTIVE_LOW_PR_OUT_DFF[*].*/C}]

set_property CLOCK_DEDICATED_ROUTE ANY_CMT_COLUMN [get_nets {mts_i/clocktreeMTS/util_ds_buf_*/U0/BUFG_O[0]}]
set_property CLOCK_DEDICATED_ROUTE ANY_CMT_COLUMN [get_nets mts_i/clocktreeMTS/BUFG_PL_CLK/U0/BUFG_O[0]]
set_property CLOCK_DEDICATED_ROUTE ANY_CMT_COLUMN [get_nets {mts_i/clocktreeMTS/util_ds_buf_*/U0/BUFG_O[0]}]

set_max_delay -from [get_pins {mts_i/clocktreeMTS/xpm_cdc_gen_*/inst/xsingle/syncstages_ff_reg[1]/C}] 1.000
set_max_delay -from [get_pins mts_i/clocktreeMTS/xpm_cdc_gen_*/inst/xsingle/src_ff_reg/C] 1.000


set_property BLOCK_SYNTH.RETIMING 1 [get_cells mts_i/usp_rf_data_converter_1/*]
set_property BLOCK_SYNTH.STRATEGY PERFORMANCE_OPTIMIZED [get_cells mts_i/usp_rf_data_converter_1/*]

set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.UNUSEDPIN PULLNONE [current_design]
set_property BITSTREAM.CONFIG.OVERTEMPSHUTDOWN ENABLE [current_design]
set_property BITSTREAM.CONFIG.USR_ACCESS TIMESTAMP [current_design]







