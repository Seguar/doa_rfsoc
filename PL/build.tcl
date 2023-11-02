variable design_name
set design_name doa_mts
set origin_dir "." 

source doa_mts_prj.tcl
# Set IP repository paths
set obj [get_filesets sources_1]
if { $obj != {} } {
   set_property "ip_repo_paths" "[file normalize "$origin_dir/src"]" $obj

   # Rebuild user ip_repo's index before adding any source files
   update_ip_catalog -rebuild
}

# Set 'constrs_1' fileset object
set obj [get_filesets constrs_1]

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/xdc/$design_name.xdc"]"
set file_added [add_files -norecurse -fileset $obj [list $file]]
set file "$origin_dir/xdc/*.xdc"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property -name "file_type" -value "XDC" -objects $file_obj

# Set 'constrs_1' fileset properties
set obj [get_filesets constrs_1]
set_property target_constrs_file $origin_dir/xdc/$design_name.xdc [current_fileset -constrset]
# Set 'sources_1' fileset object
set obj [get_filesets sources_1]
set files [glob "${origin_dir}/src/*"]
add_files -norecurse -fileset $obj $files
# set_property FILE_TYPE {VHDL 2008} [get_files *.vhd]

set_property source_mgmt_mode All [current_project]
update_compile_order -fileset sources_1

# create_root_design ""

make_wrapper -files [get_files $origin_dir/myproj/project_1.srcs/sources_1/bd/$design_name/$design_name.bd] -top
add_files -norecurse $origin_dir/myproj/project_1.gen/sources_1/bd/$design_name/hdl/$design_name\_wrapper.v
update_compile_order -fileset sources_1