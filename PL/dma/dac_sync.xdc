# dmasync variant: first stages of the DAC start synchronisers (pl_clk0 -> RF fabric clock).
set_false_path -to [get_pins -hierarchical -filter {NAME =~ *dac_start_sync_0/inst/trig_s_reg[0]/D}]
set_false_path -to [get_pins -hierarchical -filter {NAME =~ *dac_start_sync_0/inst/en0_s_reg[0]/D}]
set_false_path -to [get_pins -hierarchical -filter {NAME =~ *dac_start_sync_0/inst/en1_s_reg[0]/D}]
