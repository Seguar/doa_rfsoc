# Variant "dmasync": the dma variant plus one shared start synchroniser for both DAC players.
#
# Before: dac_k/xlconcat_0 + dac_k/util_reduced_logic_0 ORed the pl_clk0 capture trigger with
# axi_gpio_dack and drove dac_k/ram_play_0/enable directly, asynchronously to the players'
# RF fabric clock; each player sampled the edge on its own (one-cycle start skew in ~4 % of
# captures). After: dac_start_sync_0 (src/dac_start_sync.v) at the root synchronises the
# trigger once into clocktreeMTS/util_ds_buf_1 BUFG_O and registers both enables from it.
# The capture side (ADCRAMcapture trig_cap) is unchanged.

foreach k {0 1} {
  delete_bd_objs [get_bd_nets -of_objects [get_bd_pins dac_$k/ram_play_0/enable]]
  delete_bd_objs [get_bd_cells dac_$k/util_reduced_logic_0] [get_bd_cells dac_$k/xlconcat_0]
}
# The dac_k boundary pins that carried the GPIO enable and the trigger into the removed cells:
# only those two plain nets are touched (interface member pins must stay).
foreach k {0 1} {
  foreach net [list control_gpio_control_axi_gpio_dac${k}_gpio_io_o control_gpio_control_xpm_cdc_gen_0_dest_out] {
    foreach p [get_bd_pins -quiet -of_objects [get_bd_nets /$net]] {
      if {[string match "/dac_$k/*" $p] && [llength [split [string trimleft $p /] /]] == 2} {
        disconnect_bd_net /$net $p
        delete_bd_objs $p
        puts "DACSYNC removed boundary pin $p of $net"
      }
    }
  }
}

create_bd_cell -type module -reference dac_start_sync dac_start_sync_0
connect_bd_net -net clocktreeMTS_util_ds_buf_1_BUFG_O                [get_bd_pins dac_start_sync_0/clk]
connect_bd_net -net control_gpio_control_xpm_cdc_gen_0_dest_out      [get_bd_pins dac_start_sync_0/trig_async]
connect_bd_net -net control_gpio_control_axi_gpio_dac0_gpio_io_o     [get_bd_pins dac_start_sync_0/en0_async]
connect_bd_net -net control_gpio_control_axi_gpio_dac1_gpio_io_o     [get_bd_pins dac_start_sync_0/en1_async]
xconnect_net dac_start_sync_0_enable0 dac_start_sync_0/enable0 dac_0/ram_play_0/enable
xconnect_net dac_start_sync_0_enable1 dac_start_sync_0/enable1 dac_1/ram_play_0/enable
