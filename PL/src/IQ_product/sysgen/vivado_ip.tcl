#-----------------------------------------------------------------
# System Generator version 2022.2 IP Tcl source file.
#
# Copyright(C) 2022 by Xilinx, Inc.  All rights reserved.  This
# text/file contains proprietary, confidential information of Xilinx,
# Inc., is distributed under license from Xilinx, Inc., and may be used,
# copied and/or disclosed only pursuant to the terms of a valid license
# agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
# this text/file solely for design, simulation, implementation and
# creation of design files limited to Xilinx devices or technologies.
# Use with non-Xilinx devices or technologies is expressly prohibited
# and immediately terminates your license unless covered by a separate
# agreement.
#
# Xilinx is providing this design, code, or information "as is" solely
# for use in developing programs and solutions for Xilinx devices.  By
# providing this design, code, or information as one possible
# implementation of this feature, application or standard, Xilinx is
# making no representation that this implementation is free from any
# claims of infringement.  You are responsible for obtaining any rights
# you may require for your implementation.  Xilinx expressly disclaims
# any warranty whatsoever with respect to the adequacy of the
# implementation, including but not limited to warranties of
# merchantability or fitness for a particular purpose.
#
# Xilinx products are not intended for use in life support appliances,
# devices, or systems.  Use in such applications is expressly prohibited.
#
# Any modifications that are made to the source code are done at the user's
# sole risk and will be unsupported.
#
# This copyright and support notice must be retained as part of this
# text at all times.  (c) Copyright 1995-2022 Xilinx, Inc.  All rights
# reserved.
#-----------------------------------------------------------------

set existingipslist [get_ips]
if {[lsearch $existingipslist iq_product_cmpy_v6_0_i0] < 0} {
create_ip -name cmpy -version 6.0 -vendor xilinx.com -library ip -module_name iq_product_cmpy_v6_0_i0
set params_list [list]
lappend params_list CONFIG.Component_Name {iq_product_cmpy_v6_0_i0}
lappend params_list CONFIG.ACLKEN {true}
lappend params_list CONFIG.APortWidth {16}
lappend params_list CONFIG.ARESETN {false}
lappend params_list CONFIG.ATUSERWidth {1}
lappend params_list CONFIG.BPortWidth {16}
lappend params_list CONFIG.BTUSERWidth {1}
lappend params_list CONFIG.CTRLTUSERWidth {1}
lappend params_list CONFIG.FlowControl {NonBlocking}
lappend params_list CONFIG.HasATLAST {false}
lappend params_list CONFIG.HasATUSER {false}
lappend params_list CONFIG.HasBTLAST {false}
lappend params_list CONFIG.HasBTUSER {false}
lappend params_list CONFIG.HasCTRLTLAST {false}
lappend params_list CONFIG.HasCTRLTUSER {false}
lappend params_list CONFIG.LatencyConfig {Manual}
lappend params_list CONFIG.MinimumLatency {4}
lappend params_list CONFIG.MultType {Use_Mults}
lappend params_list CONFIG.OptimizeGoal {Performance}
lappend params_list CONFIG.OutTLASTBehv {Null}
lappend params_list CONFIG.OutputWidth {33}
lappend params_list CONFIG.RoundMode {Truncate}

set_property -dict $params_list [get_ips iq_product_cmpy_v6_0_i0]
}


validate_ip [get_ips]
