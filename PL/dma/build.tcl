# Build the doa_mts overlay (boot design recreated from its HWH) and optionally the
# DMA capture variant, in Vivado batch mode.
#
#   vivado -mode batch -source build.tcl -tclargs <variant> <stage> [jobs]
#     variant: boot (recreated boot design)   dma (boot + AXI CDMA capture to DDR)
#              dmasync (dma + one shared RF-clock start synchroniser for both DAC players)
#     stage:   bd (block design + HWH only)    all (through bitstream, reports, XSA)
#
# Run from an empty run directory; sources are read from this script's folder.
set here [file normalize [file dirname [info script]]]
set variant [lindex $argv 0]
set stage   [lindex $argv 1]
set jobs    [expr {[llength $argv] > 2 ? [lindex $argv 2] : 8}]
if {$variant ni {boot dma dmasync}} { error "variant must be boot, dma or dmasync" }
if {$stage ni {bd all}} { error "stage must be bd or all" }
set out_name [expr {$variant eq "boot" ? "doa_mts" : "doa_mts_dma"}]
set design doa_mts
set board_repo [expr {[info exists ::env(RFSOC4X2_BOARD_REPO)] ? $::env(RFSOC4X2_BOARD_REPO) : "/work/RFSoC-PYNQ/boards/RFSoC4x2/bsp/board_files"}]

puts "BUILD variant=$variant stage=$stage jobs=$jobs vivado=[version -short] here=$here"
set_param board.repoPaths [list $board_repo]
create_project prj ./prj -part xczu48dr-ffvg1517-2-e -force
set_property board_part realdigital.org:rfsoc4x2:part0:1.0 [current_project]
set_property target_language Verilog [current_project]
add_files -norecurse [glob $here/src/*.v]
if {$variant ne "dmasync"} { remove_files [get_files */dac_start_sync.v] }
update_compile_order -fileset sources_1
add_files -fileset constrs_1 -norecurse $here/doa_mts_boot.xdc

source $here/bd_helpers.tcl
source $here/ps_config.tcl
source $here/hwh_params.tcl
create_bd_design $design
source $here/bd_from_hwh.tcl
set_property CONFIG.FREQ_HZ 500000000 [get_bd_intf_ports PL_CLK]
if {$variant in {dma dmasync}} {
  source $here/add_cdma.tcl
  add_files -fileset constrs_1 -norecurse $here/doa_mts_dma.xdc
  set_property PROCESSING_ORDER LATE [get_files $here/doa_mts_dma.xdc]
}
if {$variant eq "dmasync"} {
  source $here/add_dac_sync.tcl
  add_files -fileset constrs_1 -norecurse $here/dac_sync.xdc
  set_property PROCESSING_ORDER LATE [get_files $here/dac_sync.xdc]
}
validate_bd_design
save_bd_design
set bd_file [get_files $design.bd]
generate_target all $bd_file
make_wrapper -files $bd_file -top
add_files -norecurse [glob ./prj/prj.gen/sources_1/bd/$design/hdl/${design}_wrapper.v]
set_property top ${design}_wrapper [current_fileset]
update_compile_order -fileset sources_1
file mkdir out
file copy -force ./prj/prj.gen/sources_1/bd/$design/hw_handoff/$design.hwh out/${out_name}_bd.hwh
report_ip_status -file out/ip_status.txt
puts "BUILD_STAGE_DONE bd"
if {$stage eq "bd"} { return }

launch_runs impl_1 -to_step write_bitstream -jobs $jobs
wait_on_run impl_1
set st [get_property STATUS [get_runs impl_1]]
puts "IMPL_STATUS $st"
if {![string match "*Complete*" $st] && ![string match "*complete*" $st]} { error "implementation failed: $st" }
open_run impl_1
report_timing_summary -max_paths 20 -report_unconstrained -file out/timing_summary.txt
report_clock_interaction -file out/clock_interaction.txt
report_utilization -file out/utilization.txt
report_utilization -hierarchical -hierarchical_depth 3 -file out/utilization_hier.txt
report_drc -file out/drc.txt
report_methodology -file out/methodology.txt
report_cdc -file out/cdc.txt
set wns [get_property STATS.WNS [get_runs impl_1]]
set tns [get_property STATS.TNS [get_runs impl_1]]
set whs [get_property STATS.WHS [get_runs impl_1]]
set ths [get_property STATS.THS [get_runs impl_1]]
puts "TIMING WNS=$wns TNS=$tns WHS=$whs THS=$ths"
file copy -force ./prj/prj.runs/impl_1/${design}_wrapper.bit out/${out_name}.bit
file copy -force ./prj/prj.gen/sources_1/bd/$design/hw_handoff/$design.hwh out/${out_name}.hwh
write_hw_platform -fixed -include_bit -force out/${out_name}.xsa
puts "BUILD_STAGE_DONE all"
