# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator. 
#


namespace eval ::xilinx::dsp::planaheaddriver {
	set VHDL2008Support 1
	set Compilation {IP Catalog}
	set CompilationFlow {IP}
	set CreateInterfaceDocument {off}
	set DSPDevice {xczu48dr}
	set DSPFamily {zynquplus}
	set DSPPackage {ffvg1517}
	set DSPSpeed {-2-e}
	set FPGAClockPeriod 10
	set GenerateTestBench 0
	set HDLLanguage {vhdl}
	set IPOOCCacheRootPath {C:/Users/sega-/AppData/Local/Xilinx/Sysgen/SysgenVivado/win64.o/ip}
	set IP_Auto_Infer {1}
	set IP_Categories_Text {Vitis Model Composer}
	set IP_Common_Repos {0}
	set IP_Description {}
	set IP_Dir {}
	set IP_Library_Text {VMC}
	set IP_LifeCycle_Menu {3}
	set IP_Logo {sysgen_icon_100.png}
	set IP_Name {IQ_product}
	set IP_Revision {318614207}
	set IP_Socket_IP {0}
	set IP_Socket_IP_Proj_Path {}
	set IP_Vendor_Text {Technion}
	set IP_Version_Text {1.0}
	set ImplStrategyName {Vivado Implementation Defaults}
	set PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
	set Project {iq_product}
	set ProjectFiles {
		{{conv_pkg.vhd} -lib {xil_defaultlib}}
		{{synth_reg.vhd} -lib {xil_defaultlib}}
		{{synth_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{srl17e.vhd} -lib {xil_defaultlib}}
		{{srl33e.vhd} -lib {xil_defaultlib}}
		{{synth_reg_reg.vhd} -lib {xil_defaultlib}}
		{{single_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{xlclockdriver_rd.vhd} -lib {xil_defaultlib}}
		{{vivado_ip.tcl}}
		{{iq_product_entity_declarations.vhd} -lib {xil_defaultlib}}
		{{iq_product.vhd} -lib {xil_defaultlib}}
		{{iq_product_clock.xdc}}
		{{iq_product.xdc}}
	}
	set SimPeriod 1
	set SimTime 10
	set SimulationTime {310.00000000 ns}
	set SynthStrategyName {Vivado Synthesis Defaults}
	set SynthesisTool {Vivado}
	set TargetDir {C:/Users/sega-/OneDrive/Documents/Xilinx/IQ_product}
	set TopLevelModule {iq_product}
	set TopLevelSimulinkHandle 20.0002
	set VHDLLib {xil_defaultlib}
	set TopLevelPortInterface {}
	dict set TopLevelPortInterface q4 Name {q4}
	dict set TopLevelPortInterface q4 Type Fix_16_14
	dict set TopLevelPortInterface q4 ArithmeticType xlSigned
	dict set TopLevelPortInterface q4 BinaryPoint 14
	dict set TopLevelPortInterface q4 Width 16
	dict set TopLevelPortInterface q4 DatFile {mvdr_block_old_iq_product_q4.dat}
	dict set TopLevelPortInterface q4 IconText {Q4}
	dict set TopLevelPortInterface q4 Direction in
	dict set TopLevelPortInterface q4 Period 1
	dict set TopLevelPortInterface q4 Interface 0
	dict set TopLevelPortInterface q4 InterfaceName {}
	dict set TopLevelPortInterface q4 InterfaceString {DATA}
	dict set TopLevelPortInterface q4 ClockDomain {iq_product}
	dict set TopLevelPortInterface q4 Locs {}
	dict set TopLevelPortInterface q4 IOStandard {}
	dict set TopLevelPortInterface q3 Name {q3}
	dict set TopLevelPortInterface q3 Type Fix_16_14
	dict set TopLevelPortInterface q3 ArithmeticType xlSigned
	dict set TopLevelPortInterface q3 BinaryPoint 14
	dict set TopLevelPortInterface q3 Width 16
	dict set TopLevelPortInterface q3 DatFile {mvdr_block_old_iq_product_q3.dat}
	dict set TopLevelPortInterface q3 IconText {Q3}
	dict set TopLevelPortInterface q3 Direction in
	dict set TopLevelPortInterface q3 Period 1
	dict set TopLevelPortInterface q3 Interface 0
	dict set TopLevelPortInterface q3 InterfaceName {}
	dict set TopLevelPortInterface q3 InterfaceString {DATA}
	dict set TopLevelPortInterface q3 ClockDomain {iq_product}
	dict set TopLevelPortInterface q3 Locs {}
	dict set TopLevelPortInterface q3 IOStandard {}
	dict set TopLevelPortInterface q2 Name {q2}
	dict set TopLevelPortInterface q2 Type Fix_16_14
	dict set TopLevelPortInterface q2 ArithmeticType xlSigned
	dict set TopLevelPortInterface q2 BinaryPoint 14
	dict set TopLevelPortInterface q2 Width 16
	dict set TopLevelPortInterface q2 DatFile {mvdr_block_old_iq_product_q2.dat}
	dict set TopLevelPortInterface q2 IconText {Q2}
	dict set TopLevelPortInterface q2 Direction in
	dict set TopLevelPortInterface q2 Period 1
	dict set TopLevelPortInterface q2 Interface 0
	dict set TopLevelPortInterface q2 InterfaceName {}
	dict set TopLevelPortInterface q2 InterfaceString {DATA}
	dict set TopLevelPortInterface q2 ClockDomain {iq_product}
	dict set TopLevelPortInterface q2 Locs {}
	dict set TopLevelPortInterface q2 IOStandard {}
	dict set TopLevelPortInterface q1 Name {q1}
	dict set TopLevelPortInterface q1 Type Fix_16_14
	dict set TopLevelPortInterface q1 ArithmeticType xlSigned
	dict set TopLevelPortInterface q1 BinaryPoint 14
	dict set TopLevelPortInterface q1 Width 16
	dict set TopLevelPortInterface q1 DatFile {mvdr_block_old_iq_product_q1.dat}
	dict set TopLevelPortInterface q1 IconText {Q1}
	dict set TopLevelPortInterface q1 Direction in
	dict set TopLevelPortInterface q1 Period 1
	dict set TopLevelPortInterface q1 Interface 0
	dict set TopLevelPortInterface q1 InterfaceName {}
	dict set TopLevelPortInterface q1 InterfaceString {DATA}
	dict set TopLevelPortInterface q1 ClockDomain {iq_product}
	dict set TopLevelPortInterface q1 Locs {}
	dict set TopLevelPortInterface q1 IOStandard {}
	dict set TopLevelPortInterface i4 Name {i4}
	dict set TopLevelPortInterface i4 Type Fix_16_14
	dict set TopLevelPortInterface i4 ArithmeticType xlSigned
	dict set TopLevelPortInterface i4 BinaryPoint 14
	dict set TopLevelPortInterface i4 Width 16
	dict set TopLevelPortInterface i4 DatFile {mvdr_block_old_iq_product_i4.dat}
	dict set TopLevelPortInterface i4 IconText {I4}
	dict set TopLevelPortInterface i4 Direction in
	dict set TopLevelPortInterface i4 Period 1
	dict set TopLevelPortInterface i4 Interface 0
	dict set TopLevelPortInterface i4 InterfaceName {}
	dict set TopLevelPortInterface i4 InterfaceString {DATA}
	dict set TopLevelPortInterface i4 ClockDomain {iq_product}
	dict set TopLevelPortInterface i4 Locs {}
	dict set TopLevelPortInterface i4 IOStandard {}
	dict set TopLevelPortInterface i3 Name {i3}
	dict set TopLevelPortInterface i3 Type Fix_16_14
	dict set TopLevelPortInterface i3 ArithmeticType xlSigned
	dict set TopLevelPortInterface i3 BinaryPoint 14
	dict set TopLevelPortInterface i3 Width 16
	dict set TopLevelPortInterface i3 DatFile {mvdr_block_old_iq_product_i3.dat}
	dict set TopLevelPortInterface i3 IconText {I3}
	dict set TopLevelPortInterface i3 Direction in
	dict set TopLevelPortInterface i3 Period 1
	dict set TopLevelPortInterface i3 Interface 0
	dict set TopLevelPortInterface i3 InterfaceName {}
	dict set TopLevelPortInterface i3 InterfaceString {DATA}
	dict set TopLevelPortInterface i3 ClockDomain {iq_product}
	dict set TopLevelPortInterface i3 Locs {}
	dict set TopLevelPortInterface i3 IOStandard {}
	dict set TopLevelPortInterface i2 Name {i2}
	dict set TopLevelPortInterface i2 Type Fix_16_14
	dict set TopLevelPortInterface i2 ArithmeticType xlSigned
	dict set TopLevelPortInterface i2 BinaryPoint 14
	dict set TopLevelPortInterface i2 Width 16
	dict set TopLevelPortInterface i2 DatFile {mvdr_block_old_iq_product_i2.dat}
	dict set TopLevelPortInterface i2 IconText {I2}
	dict set TopLevelPortInterface i2 Direction in
	dict set TopLevelPortInterface i2 Period 1
	dict set TopLevelPortInterface i2 Interface 0
	dict set TopLevelPortInterface i2 InterfaceName {}
	dict set TopLevelPortInterface i2 InterfaceString {DATA}
	dict set TopLevelPortInterface i2 ClockDomain {iq_product}
	dict set TopLevelPortInterface i2 Locs {}
	dict set TopLevelPortInterface i2 IOStandard {}
	dict set TopLevelPortInterface i1 Name {i1}
	dict set TopLevelPortInterface i1 Type Fix_16_14
	dict set TopLevelPortInterface i1 ArithmeticType xlSigned
	dict set TopLevelPortInterface i1 BinaryPoint 14
	dict set TopLevelPortInterface i1 Width 16
	dict set TopLevelPortInterface i1 DatFile {mvdr_block_old_iq_product_i1.dat}
	dict set TopLevelPortInterface i1 IconText {I1}
	dict set TopLevelPortInterface i1 Direction in
	dict set TopLevelPortInterface i1 Period 1
	dict set TopLevelPortInterface i1 Interface 0
	dict set TopLevelPortInterface i1 InterfaceName {}
	dict set TopLevelPortInterface i1 InterfaceString {DATA}
	dict set TopLevelPortInterface i1 ClockDomain {iq_product}
	dict set TopLevelPortInterface i1 Locs {}
	dict set TopLevelPortInterface i1 IOStandard {}
	dict set TopLevelPortInterface gateway_out Name {gateway_out}
	dict set TopLevelPortInterface gateway_out Type Fix_33_28
	dict set TopLevelPortInterface gateway_out ArithmeticType xlSigned
	dict set TopLevelPortInterface gateway_out BinaryPoint 28
	dict set TopLevelPortInterface gateway_out Width 33
	dict set TopLevelPortInterface gateway_out DatFile {mvdr_block_old_iq_product_gateway_out.dat}
	dict set TopLevelPortInterface gateway_out IconText {Gateway Out}
	dict set TopLevelPortInterface gateway_out Direction out
	dict set TopLevelPortInterface gateway_out Period 1
	dict set TopLevelPortInterface gateway_out Interface 0
	dict set TopLevelPortInterface gateway_out InterfaceName {}
	dict set TopLevelPortInterface gateway_out InterfaceString {DATA}
	dict set TopLevelPortInterface gateway_out ClockDomain {iq_product}
	dict set TopLevelPortInterface gateway_out Locs {}
	dict set TopLevelPortInterface gateway_out IOStandard {}
	dict set TopLevelPortInterface gateway_out1 Name {gateway_out1}
	dict set TopLevelPortInterface gateway_out1 Type Fix_33_28
	dict set TopLevelPortInterface gateway_out1 ArithmeticType xlSigned
	dict set TopLevelPortInterface gateway_out1 BinaryPoint 28
	dict set TopLevelPortInterface gateway_out1 Width 33
	dict set TopLevelPortInterface gateway_out1 DatFile {mvdr_block_old_iq_product_gateway_out1.dat}
	dict set TopLevelPortInterface gateway_out1 IconText {Gateway Out1}
	dict set TopLevelPortInterface gateway_out1 Direction out
	dict set TopLevelPortInterface gateway_out1 Period 1
	dict set TopLevelPortInterface gateway_out1 Interface 0
	dict set TopLevelPortInterface gateway_out1 InterfaceName {}
	dict set TopLevelPortInterface gateway_out1 InterfaceString {DATA}
	dict set TopLevelPortInterface gateway_out1 ClockDomain {iq_product}
	dict set TopLevelPortInterface gateway_out1 Locs {}
	dict set TopLevelPortInterface gateway_out1 IOStandard {}
	dict set TopLevelPortInterface gateway_out10 Name {gateway_out10}
	dict set TopLevelPortInterface gateway_out10 Type Fix_33_28
	dict set TopLevelPortInterface gateway_out10 ArithmeticType xlSigned
	dict set TopLevelPortInterface gateway_out10 BinaryPoint 28
	dict set TopLevelPortInterface gateway_out10 Width 33
	dict set TopLevelPortInterface gateway_out10 DatFile {mvdr_block_old_iq_product_gateway_out10.dat}
	dict set TopLevelPortInterface gateway_out10 IconText {Gateway Out10}
	dict set TopLevelPortInterface gateway_out10 Direction out
	dict set TopLevelPortInterface gateway_out10 Period 1
	dict set TopLevelPortInterface gateway_out10 Interface 0
	dict set TopLevelPortInterface gateway_out10 InterfaceName {}
	dict set TopLevelPortInterface gateway_out10 InterfaceString {DATA}
	dict set TopLevelPortInterface gateway_out10 ClockDomain {iq_product}
	dict set TopLevelPortInterface gateway_out10 Locs {}
	dict set TopLevelPortInterface gateway_out10 IOStandard {}
	dict set TopLevelPortInterface gateway_out11 Name {gateway_out11}
	dict set TopLevelPortInterface gateway_out11 Type Fix_33_28
	dict set TopLevelPortInterface gateway_out11 ArithmeticType xlSigned
	dict set TopLevelPortInterface gateway_out11 BinaryPoint 28
	dict set TopLevelPortInterface gateway_out11 Width 33
	dict set TopLevelPortInterface gateway_out11 DatFile {mvdr_block_old_iq_product_gateway_out11.dat}
	dict set TopLevelPortInterface gateway_out11 IconText {Gateway Out11}
	dict set TopLevelPortInterface gateway_out11 Direction out
	dict set TopLevelPortInterface gateway_out11 Period 1
	dict set TopLevelPortInterface gateway_out11 Interface 0
	dict set TopLevelPortInterface gateway_out11 InterfaceName {}
	dict set TopLevelPortInterface gateway_out11 InterfaceString {DATA}
	dict set TopLevelPortInterface gateway_out11 ClockDomain {iq_product}
	dict set TopLevelPortInterface gateway_out11 Locs {}
	dict set TopLevelPortInterface gateway_out11 IOStandard {}
	dict set TopLevelPortInterface gateway_out12 Name {gateway_out12}
	dict set TopLevelPortInterface gateway_out12 Type Fix_33_28
	dict set TopLevelPortInterface gateway_out12 ArithmeticType xlSigned
	dict set TopLevelPortInterface gateway_out12 BinaryPoint 28
	dict set TopLevelPortInterface gateway_out12 Width 33
	dict set TopLevelPortInterface gateway_out12 DatFile {mvdr_block_old_iq_product_gateway_out12.dat}
	dict set TopLevelPortInterface gateway_out12 IconText {Gateway Out12}
	dict set TopLevelPortInterface gateway_out12 Direction out
	dict set TopLevelPortInterface gateway_out12 Period 1
	dict set TopLevelPortInterface gateway_out12 Interface 0
	dict set TopLevelPortInterface gateway_out12 InterfaceName {}
	dict set TopLevelPortInterface gateway_out12 InterfaceString {DATA}
	dict set TopLevelPortInterface gateway_out12 ClockDomain {iq_product}
	dict set TopLevelPortInterface gateway_out12 Locs {}
	dict set TopLevelPortInterface gateway_out12 IOStandard {}
	dict set TopLevelPortInterface gateway_out13 Name {gateway_out13}
	dict set TopLevelPortInterface gateway_out13 Type Fix_33_28
	dict set TopLevelPortInterface gateway_out13 ArithmeticType xlSigned
	dict set TopLevelPortInterface gateway_out13 BinaryPoint 28
	dict set TopLevelPortInterface gateway_out13 Width 33
	dict set TopLevelPortInterface gateway_out13 DatFile {mvdr_block_old_iq_product_gateway_out13.dat}
	dict set TopLevelPortInterface gateway_out13 IconText {Gateway Out13}
	dict set TopLevelPortInterface gateway_out13 Direction out
	dict set TopLevelPortInterface gateway_out13 Period 1
	dict set TopLevelPortInterface gateway_out13 Interface 0
	dict set TopLevelPortInterface gateway_out13 InterfaceName {}
	dict set TopLevelPortInterface gateway_out13 InterfaceString {DATA}
	dict set TopLevelPortInterface gateway_out13 ClockDomain {iq_product}
	dict set TopLevelPortInterface gateway_out13 Locs {}
	dict set TopLevelPortInterface gateway_out13 IOStandard {}
	dict set TopLevelPortInterface gateway_out14 Name {gateway_out14}
	dict set TopLevelPortInterface gateway_out14 Type Fix_33_28
	dict set TopLevelPortInterface gateway_out14 ArithmeticType xlSigned
	dict set TopLevelPortInterface gateway_out14 BinaryPoint 28
	dict set TopLevelPortInterface gateway_out14 Width 33
	dict set TopLevelPortInterface gateway_out14 DatFile {mvdr_block_old_iq_product_gateway_out14.dat}
	dict set TopLevelPortInterface gateway_out14 IconText {Gateway Out14}
	dict set TopLevelPortInterface gateway_out14 Direction out
	dict set TopLevelPortInterface gateway_out14 Period 1
	dict set TopLevelPortInterface gateway_out14 Interface 0
	dict set TopLevelPortInterface gateway_out14 InterfaceName {}
	dict set TopLevelPortInterface gateway_out14 InterfaceString {DATA}
	dict set TopLevelPortInterface gateway_out14 ClockDomain {iq_product}
	dict set TopLevelPortInterface gateway_out14 Locs {}
	dict set TopLevelPortInterface gateway_out14 IOStandard {}
	dict set TopLevelPortInterface gateway_out15 Name {gateway_out15}
	dict set TopLevelPortInterface gateway_out15 Type Fix_33_28
	dict set TopLevelPortInterface gateway_out15 ArithmeticType xlSigned
	dict set TopLevelPortInterface gateway_out15 BinaryPoint 28
	dict set TopLevelPortInterface gateway_out15 Width 33
	dict set TopLevelPortInterface gateway_out15 DatFile {mvdr_block_old_iq_product_gateway_out15.dat}
	dict set TopLevelPortInterface gateway_out15 IconText {Gateway Out15}
	dict set TopLevelPortInterface gateway_out15 Direction out
	dict set TopLevelPortInterface gateway_out15 Period 1
	dict set TopLevelPortInterface gateway_out15 Interface 0
	dict set TopLevelPortInterface gateway_out15 InterfaceName {}
	dict set TopLevelPortInterface gateway_out15 InterfaceString {DATA}
	dict set TopLevelPortInterface gateway_out15 ClockDomain {iq_product}
	dict set TopLevelPortInterface gateway_out15 Locs {}
	dict set TopLevelPortInterface gateway_out15 IOStandard {}
	dict set TopLevelPortInterface gateway_out16 Name {gateway_out16}
	dict set TopLevelPortInterface gateway_out16 Type Fix_33_28
	dict set TopLevelPortInterface gateway_out16 ArithmeticType xlSigned
	dict set TopLevelPortInterface gateway_out16 BinaryPoint 28
	dict set TopLevelPortInterface gateway_out16 Width 33
	dict set TopLevelPortInterface gateway_out16 DatFile {mvdr_block_old_iq_product_gateway_out16.dat}
	dict set TopLevelPortInterface gateway_out16 IconText {Gateway Out16}
	dict set TopLevelPortInterface gateway_out16 Direction out
	dict set TopLevelPortInterface gateway_out16 Period 1
	dict set TopLevelPortInterface gateway_out16 Interface 0
	dict set TopLevelPortInterface gateway_out16 InterfaceName {}
	dict set TopLevelPortInterface gateway_out16 InterfaceString {DATA}
	dict set TopLevelPortInterface gateway_out16 ClockDomain {iq_product}
	dict set TopLevelPortInterface gateway_out16 Locs {}
	dict set TopLevelPortInterface gateway_out16 IOStandard {}
	dict set TopLevelPortInterface gateway_out17 Name {gateway_out17}
	dict set TopLevelPortInterface gateway_out17 Type Fix_33_28
	dict set TopLevelPortInterface gateway_out17 ArithmeticType xlSigned
	dict set TopLevelPortInterface gateway_out17 BinaryPoint 28
	dict set TopLevelPortInterface gateway_out17 Width 33
	dict set TopLevelPortInterface gateway_out17 DatFile {mvdr_block_old_iq_product_gateway_out17.dat}
	dict set TopLevelPortInterface gateway_out17 IconText {Gateway Out17}
	dict set TopLevelPortInterface gateway_out17 Direction out
	dict set TopLevelPortInterface gateway_out17 Period 1
	dict set TopLevelPortInterface gateway_out17 Interface 0
	dict set TopLevelPortInterface gateway_out17 InterfaceName {}
	dict set TopLevelPortInterface gateway_out17 InterfaceString {DATA}
	dict set TopLevelPortInterface gateway_out17 ClockDomain {iq_product}
	dict set TopLevelPortInterface gateway_out17 Locs {}
	dict set TopLevelPortInterface gateway_out17 IOStandard {}
	dict set TopLevelPortInterface gateway_out18 Name {gateway_out18}
	dict set TopLevelPortInterface gateway_out18 Type Fix_33_28
	dict set TopLevelPortInterface gateway_out18 ArithmeticType xlSigned
	dict set TopLevelPortInterface gateway_out18 BinaryPoint 28
	dict set TopLevelPortInterface gateway_out18 Width 33
	dict set TopLevelPortInterface gateway_out18 DatFile {mvdr_block_old_iq_product_gateway_out18.dat}
	dict set TopLevelPortInterface gateway_out18 IconText {Gateway Out18}
	dict set TopLevelPortInterface gateway_out18 Direction out
	dict set TopLevelPortInterface gateway_out18 Period 1
	dict set TopLevelPortInterface gateway_out18 Interface 0
	dict set TopLevelPortInterface gateway_out18 InterfaceName {}
	dict set TopLevelPortInterface gateway_out18 InterfaceString {DATA}
	dict set TopLevelPortInterface gateway_out18 ClockDomain {iq_product}
	dict set TopLevelPortInterface gateway_out18 Locs {}
	dict set TopLevelPortInterface gateway_out18 IOStandard {}
	dict set TopLevelPortInterface gateway_out19 Name {gateway_out19}
	dict set TopLevelPortInterface gateway_out19 Type Fix_33_28
	dict set TopLevelPortInterface gateway_out19 ArithmeticType xlSigned
	dict set TopLevelPortInterface gateway_out19 BinaryPoint 28
	dict set TopLevelPortInterface gateway_out19 Width 33
	dict set TopLevelPortInterface gateway_out19 DatFile {mvdr_block_old_iq_product_gateway_out19.dat}
	dict set TopLevelPortInterface gateway_out19 IconText {Gateway Out19}
	dict set TopLevelPortInterface gateway_out19 Direction out
	dict set TopLevelPortInterface gateway_out19 Period 1
	dict set TopLevelPortInterface gateway_out19 Interface 0
	dict set TopLevelPortInterface gateway_out19 InterfaceName {}
	dict set TopLevelPortInterface gateway_out19 InterfaceString {DATA}
	dict set TopLevelPortInterface gateway_out19 ClockDomain {iq_product}
	dict set TopLevelPortInterface gateway_out19 Locs {}
	dict set TopLevelPortInterface gateway_out19 IOStandard {}
	dict set TopLevelPortInterface gateway_out2 Name {gateway_out2}
	dict set TopLevelPortInterface gateway_out2 Type Fix_33_28
	dict set TopLevelPortInterface gateway_out2 ArithmeticType xlSigned
	dict set TopLevelPortInterface gateway_out2 BinaryPoint 28
	dict set TopLevelPortInterface gateway_out2 Width 33
	dict set TopLevelPortInterface gateway_out2 DatFile {mvdr_block_old_iq_product_gateway_out2.dat}
	dict set TopLevelPortInterface gateway_out2 IconText {Gateway Out2}
	dict set TopLevelPortInterface gateway_out2 Direction out
	dict set TopLevelPortInterface gateway_out2 Period 1
	dict set TopLevelPortInterface gateway_out2 Interface 0
	dict set TopLevelPortInterface gateway_out2 InterfaceName {}
	dict set TopLevelPortInterface gateway_out2 InterfaceString {DATA}
	dict set TopLevelPortInterface gateway_out2 ClockDomain {iq_product}
	dict set TopLevelPortInterface gateway_out2 Locs {}
	dict set TopLevelPortInterface gateway_out2 IOStandard {}
	dict set TopLevelPortInterface gateway_out3 Name {gateway_out3}
	dict set TopLevelPortInterface gateway_out3 Type Fix_33_28
	dict set TopLevelPortInterface gateway_out3 ArithmeticType xlSigned
	dict set TopLevelPortInterface gateway_out3 BinaryPoint 28
	dict set TopLevelPortInterface gateway_out3 Width 33
	dict set TopLevelPortInterface gateway_out3 DatFile {mvdr_block_old_iq_product_gateway_out3.dat}
	dict set TopLevelPortInterface gateway_out3 IconText {Gateway Out3}
	dict set TopLevelPortInterface gateway_out3 Direction out
	dict set TopLevelPortInterface gateway_out3 Period 1
	dict set TopLevelPortInterface gateway_out3 Interface 0
	dict set TopLevelPortInterface gateway_out3 InterfaceName {}
	dict set TopLevelPortInterface gateway_out3 InterfaceString {DATA}
	dict set TopLevelPortInterface gateway_out3 ClockDomain {iq_product}
	dict set TopLevelPortInterface gateway_out3 Locs {}
	dict set TopLevelPortInterface gateway_out3 IOStandard {}
	dict set TopLevelPortInterface gateway_out4 Name {gateway_out4}
	dict set TopLevelPortInterface gateway_out4 Type Fix_33_28
	dict set TopLevelPortInterface gateway_out4 ArithmeticType xlSigned
	dict set TopLevelPortInterface gateway_out4 BinaryPoint 28
	dict set TopLevelPortInterface gateway_out4 Width 33
	dict set TopLevelPortInterface gateway_out4 DatFile {mvdr_block_old_iq_product_gateway_out4.dat}
	dict set TopLevelPortInterface gateway_out4 IconText {Gateway Out4}
	dict set TopLevelPortInterface gateway_out4 Direction out
	dict set TopLevelPortInterface gateway_out4 Period 1
	dict set TopLevelPortInterface gateway_out4 Interface 0
	dict set TopLevelPortInterface gateway_out4 InterfaceName {}
	dict set TopLevelPortInterface gateway_out4 InterfaceString {DATA}
	dict set TopLevelPortInterface gateway_out4 ClockDomain {iq_product}
	dict set TopLevelPortInterface gateway_out4 Locs {}
	dict set TopLevelPortInterface gateway_out4 IOStandard {}
	dict set TopLevelPortInterface gateway_out5 Name {gateway_out5}
	dict set TopLevelPortInterface gateway_out5 Type Fix_33_28
	dict set TopLevelPortInterface gateway_out5 ArithmeticType xlSigned
	dict set TopLevelPortInterface gateway_out5 BinaryPoint 28
	dict set TopLevelPortInterface gateway_out5 Width 33
	dict set TopLevelPortInterface gateway_out5 DatFile {mvdr_block_old_iq_product_gateway_out5.dat}
	dict set TopLevelPortInterface gateway_out5 IconText {Gateway Out5}
	dict set TopLevelPortInterface gateway_out5 Direction out
	dict set TopLevelPortInterface gateway_out5 Period 1
	dict set TopLevelPortInterface gateway_out5 Interface 0
	dict set TopLevelPortInterface gateway_out5 InterfaceName {}
	dict set TopLevelPortInterface gateway_out5 InterfaceString {DATA}
	dict set TopLevelPortInterface gateway_out5 ClockDomain {iq_product}
	dict set TopLevelPortInterface gateway_out5 Locs {}
	dict set TopLevelPortInterface gateway_out5 IOStandard {}
	dict set TopLevelPortInterface gateway_out6 Name {gateway_out6}
	dict set TopLevelPortInterface gateway_out6 Type Fix_33_28
	dict set TopLevelPortInterface gateway_out6 ArithmeticType xlSigned
	dict set TopLevelPortInterface gateway_out6 BinaryPoint 28
	dict set TopLevelPortInterface gateway_out6 Width 33
	dict set TopLevelPortInterface gateway_out6 DatFile {mvdr_block_old_iq_product_gateway_out6.dat}
	dict set TopLevelPortInterface gateway_out6 IconText {Gateway Out6}
	dict set TopLevelPortInterface gateway_out6 Direction out
	dict set TopLevelPortInterface gateway_out6 Period 1
	dict set TopLevelPortInterface gateway_out6 Interface 0
	dict set TopLevelPortInterface gateway_out6 InterfaceName {}
	dict set TopLevelPortInterface gateway_out6 InterfaceString {DATA}
	dict set TopLevelPortInterface gateway_out6 ClockDomain {iq_product}
	dict set TopLevelPortInterface gateway_out6 Locs {}
	dict set TopLevelPortInterface gateway_out6 IOStandard {}
	dict set TopLevelPortInterface gateway_out7 Name {gateway_out7}
	dict set TopLevelPortInterface gateway_out7 Type Fix_33_28
	dict set TopLevelPortInterface gateway_out7 ArithmeticType xlSigned
	dict set TopLevelPortInterface gateway_out7 BinaryPoint 28
	dict set TopLevelPortInterface gateway_out7 Width 33
	dict set TopLevelPortInterface gateway_out7 DatFile {mvdr_block_old_iq_product_gateway_out7.dat}
	dict set TopLevelPortInterface gateway_out7 IconText {Gateway Out7}
	dict set TopLevelPortInterface gateway_out7 Direction out
	dict set TopLevelPortInterface gateway_out7 Period 1
	dict set TopLevelPortInterface gateway_out7 Interface 0
	dict set TopLevelPortInterface gateway_out7 InterfaceName {}
	dict set TopLevelPortInterface gateway_out7 InterfaceString {DATA}
	dict set TopLevelPortInterface gateway_out7 ClockDomain {iq_product}
	dict set TopLevelPortInterface gateway_out7 Locs {}
	dict set TopLevelPortInterface gateway_out7 IOStandard {}
	dict set TopLevelPortInterface gateway_out8 Name {gateway_out8}
	dict set TopLevelPortInterface gateway_out8 Type Fix_33_28
	dict set TopLevelPortInterface gateway_out8 ArithmeticType xlSigned
	dict set TopLevelPortInterface gateway_out8 BinaryPoint 28
	dict set TopLevelPortInterface gateway_out8 Width 33
	dict set TopLevelPortInterface gateway_out8 DatFile {mvdr_block_old_iq_product_gateway_out8.dat}
	dict set TopLevelPortInterface gateway_out8 IconText {Gateway Out8}
	dict set TopLevelPortInterface gateway_out8 Direction out
	dict set TopLevelPortInterface gateway_out8 Period 1
	dict set TopLevelPortInterface gateway_out8 Interface 0
	dict set TopLevelPortInterface gateway_out8 InterfaceName {}
	dict set TopLevelPortInterface gateway_out8 InterfaceString {DATA}
	dict set TopLevelPortInterface gateway_out8 ClockDomain {iq_product}
	dict set TopLevelPortInterface gateway_out8 Locs {}
	dict set TopLevelPortInterface gateway_out8 IOStandard {}
	dict set TopLevelPortInterface gateway_out9 Name {gateway_out9}
	dict set TopLevelPortInterface gateway_out9 Type Fix_33_28
	dict set TopLevelPortInterface gateway_out9 ArithmeticType xlSigned
	dict set TopLevelPortInterface gateway_out9 BinaryPoint 28
	dict set TopLevelPortInterface gateway_out9 Width 33
	dict set TopLevelPortInterface gateway_out9 DatFile {mvdr_block_old_iq_product_gateway_out9.dat}
	dict set TopLevelPortInterface gateway_out9 IconText {Gateway Out9}
	dict set TopLevelPortInterface gateway_out9 Direction out
	dict set TopLevelPortInterface gateway_out9 Period 1
	dict set TopLevelPortInterface gateway_out9 Interface 0
	dict set TopLevelPortInterface gateway_out9 InterfaceName {}
	dict set TopLevelPortInterface gateway_out9 InterfaceString {DATA}
	dict set TopLevelPortInterface gateway_out9 ClockDomain {iq_product}
	dict set TopLevelPortInterface gateway_out9 Locs {}
	dict set TopLevelPortInterface gateway_out9 IOStandard {}
	dict set TopLevelPortInterface clk Name {clk}
	dict set TopLevelPortInterface clk Type -
	dict set TopLevelPortInterface clk ArithmeticType xlUnsigned
	dict set TopLevelPortInterface clk BinaryPoint 0
	dict set TopLevelPortInterface clk Width 1
	dict set TopLevelPortInterface clk DatFile {}
	dict set TopLevelPortInterface clk Direction in
	dict set TopLevelPortInterface clk Period 1
	dict set TopLevelPortInterface clk Interface 6
	dict set TopLevelPortInterface clk InterfaceName {}
	dict set TopLevelPortInterface clk InterfaceString {CLOCK}
	dict set TopLevelPortInterface clk ClockDomain {iq_product}
	dict set TopLevelPortInterface clk Locs {}
	dict set TopLevelPortInterface clk IOStandard {}
	dict set TopLevelPortInterface clk AssociatedInterfaces {}
	dict set TopLevelPortInterface clk AssociatedResets {}
	set MemoryMappedPort {}
}

source SgPaProject.tcl
::xilinx::dsp::planaheadworker::dsp_create_project