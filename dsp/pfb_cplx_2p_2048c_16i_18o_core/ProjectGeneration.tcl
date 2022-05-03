# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator. 
#


namespace eval ::xilinx::dsp::planaheaddriver {
	set Compilation {IP Catalog}
	set CompilationFlow {IP}
	set CreateInterfaceDocument {off}
	set DSPDevice {xcvu37p}
	set DSPFamily {virtexuplusHBM}
	set DSPPackage {fsvh2892}
	set DSPSpeed {-2-e}
	set FPGAClockPeriod 5
	set GenerateTestBench 0
	set HDLLanguage {vhdl}
	set IPOOCCacheRootPath {/home/jackh/.Xilinx/Sysgen/SysgenVivado/lnx64.o/ip}
	set IP_Auto_Infer {1}
	set IP_Categories_Text {System_Generator_for_DSP}
	set IP_Common_Repos {0}
	set IP_Description {}
	set IP_Dir {}
	set IP_Library_Text {SysGen}
	set IP_LifeCycle_Menu {2}
	set IP_Logo {sysgen_icon_100.png}
	set IP_Name {}
	set IP_Revision {282487673}
	set IP_Socket_IP {0}
	set IP_Socket_IP_Proj_Path {}
	set IP_Vendor_Text {User_Company}
	set IP_Version_Text {1.0}
	set ImplStrategyName {Vivado Implementation Defaults}
	set PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
	set Project {pfb_cplx_2p_2048c_16i_18o_core}
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
		{{pfb_cplx_2p_2048c_16i_18o_core_dist_mem_gen_i0_vivado.coe}}
		{{pfb_cplx_2p_2048c_16i_18o_core_dist_mem_gen_i1_vivado.coe}}
		{{pfb_cplx_2p_2048c_16i_18o_core_dist_mem_gen_i2_vivado.coe}}
		{{xpm_effb0c_vivado.mem}}
		{{xpm_98f453_vivado.mem}}
		{{xpm_cb2434_vivado.mem}}
		{{xpm_a1b7f3_vivado.mem}}
		{{xpm_fc76eb_vivado.mem}}
		{{xpm_4089f0_vivado.mem}}
		{{xpm_45185a_vivado.mem}}
		{{xpm_f93431_vivado.mem}}
		{{xpm_fe551d_vivado.mem}}
		{{xpm_d8fb87_vivado.mem}}
		{{xpm_7610ac_vivado.mem}}
		{{xpm_c58b5d_vivado.mem}}
		{{xpm_3d320b_vivado.mem}}
		{{xpm_6147f8_vivado.mem}}
		{{xpm_4dd9cf_vivado.mem}}
		{{xpm_df8566_dpram.mem}}
		{{xpm_85414f_vivado.mem}}
		{{xpm_432e2a_vivado.mem}}
		{{xpm_fa866d_vivado.mem}}
		{{xpm_0a70a3_vivado.mem}}
		{{xpm_59853c_vivado.mem}}
		{{xpm_de8c57_vivado.mem}}
		{{xpm_c675e7_vivado.mem}}
		{{xpm_c53f31_vivado.mem}}
		{{xpm_4f9703_vivado.mem}}
		{{xpm_c3a205_vivado.mem}}
		{{xpm_87246f_vivado.mem}}
		{{xpm_14d208_vivado.mem}}
		{{xpm_dd42f5_vivado.mem}}
		{{xpm_4c8835_vivado.mem}}
		{{xpm_5cc29f_vivado.mem}}
		{{xpm_0ce423_vivado.mem}}
		{{xpm_bd4a59_vivado.mem}}
		{{xpm_615eb4_vivado.mem}}
		{{xpm_969868_vivado.mem}}
		{{xpm_f7c5e5_vivado.mem}}
		{{xpm_738ebc_vivado.mem}}
		{{xpm_f8ed15_vivado.mem}}
		{{xpm_8828c9_vivado.mem}}
		{{xpm_40c905_vivado.mem}}
		{{xpm_7790c5_vivado.mem}}
		{{xpm_bd9247_vivado.mem}}
		{{xpm_22a41c_vivado.mem}}
		{{xpm_c50f1d_vivado.mem}}
		{{xpm_7a397f_vivado.mem}}
		{{xpm_a26bf0_vivado.mem}}
		{{xpm_11e029_vivado.mem}}
		{{xpm_bf9646_vivado.mem}}
		{{pfb_cplx_2p_2048c_16i_18o_core_entity_declarations.vhd} -lib {xil_defaultlib}}
		{{pfb_cplx_2p_2048c_16i_18o_core.vhd} -lib {xil_defaultlib}}
		{{pfb_cplx_2p_2048c_16i_18o_core_clock.xdc}}
		{{pfb_cplx_2p_2048c_16i_18o_core.xdc}}
	}
	set SimPeriod 1
	set SimTime 4096
	set SimulationTime {20685.00000000 ns}
	set SynthStrategyName {Vivado Synthesis Defaults}
	set SynthesisTool {Vivado}
	set TargetDir {/home/jackh/src/vla-dev/dsp/pfb_cplx_2p_2048c_16i_18o_core}
	set TopLevelModule {pfb_cplx_2p_2048c_16i_18o_core}
	set TopLevelSimulinkHandle 236126
	set VHDLLib {xil_defaultlib}
	set TopLevelPortInterface {}
	dict set TopLevelPortInterface sync Name {sync}
	dict set TopLevelPortInterface sync Type UFix_32_0
	dict set TopLevelPortInterface sync ArithmeticType xlUnsigned
	dict set TopLevelPortInterface sync BinaryPoint 0
	dict set TopLevelPortInterface sync Width 32
	dict set TopLevelPortInterface sync DatFile {pfb_cplx_2p_2048c_16i_18o_core_sync.dat}
	dict set TopLevelPortInterface sync IconText {sync}
	dict set TopLevelPortInterface sync Direction in
	dict set TopLevelPortInterface sync Period 1
	dict set TopLevelPortInterface sync Interface 0
	dict set TopLevelPortInterface sync InterfaceName {}
	dict set TopLevelPortInterface sync InterfaceString {DATA}
	dict set TopLevelPortInterface sync ClockDomain {pfb_cplx_2p_2048c_16i_18o_core}
	dict set TopLevelPortInterface sync Locs {}
	dict set TopLevelPortInterface sync IOStandard {}
	dict set TopLevelPortInterface pol_in1 Name {pol_in1}
	dict set TopLevelPortInterface pol_in1 Type UFix_256_0
	dict set TopLevelPortInterface pol_in1 ArithmeticType xlUnsigned
	dict set TopLevelPortInterface pol_in1 BinaryPoint 0
	dict set TopLevelPortInterface pol_in1 Width 256
	dict set TopLevelPortInterface pol_in1 DatFile {pfb_cplx_2p_2048c_16i_18o_core_pol_in1.dat}
	dict set TopLevelPortInterface pol_in1 IconText {pol_in1}
	dict set TopLevelPortInterface pol_in1 Direction in
	dict set TopLevelPortInterface pol_in1 Period 1
	dict set TopLevelPortInterface pol_in1 Interface 0
	dict set TopLevelPortInterface pol_in1 InterfaceName {}
	dict set TopLevelPortInterface pol_in1 InterfaceString {DATA}
	dict set TopLevelPortInterface pol_in1 ClockDomain {pfb_cplx_2p_2048c_16i_18o_core}
	dict set TopLevelPortInterface pol_in1 Locs {}
	dict set TopLevelPortInterface pol_in1 IOStandard {}
	dict set TopLevelPortInterface pol_in0 Name {pol_in0}
	dict set TopLevelPortInterface pol_in0 Type UFix_256_0
	dict set TopLevelPortInterface pol_in0 ArithmeticType xlUnsigned
	dict set TopLevelPortInterface pol_in0 BinaryPoint 0
	dict set TopLevelPortInterface pol_in0 Width 256
	dict set TopLevelPortInterface pol_in0 DatFile {pfb_cplx_2p_2048c_16i_18o_core_pol_in0.dat}
	dict set TopLevelPortInterface pol_in0 IconText {pol_in0}
	dict set TopLevelPortInterface pol_in0 Direction in
	dict set TopLevelPortInterface pol_in0 Period 1
	dict set TopLevelPortInterface pol_in0 Interface 0
	dict set TopLevelPortInterface pol_in0 InterfaceName {}
	dict set TopLevelPortInterface pol_in0 InterfaceString {DATA}
	dict set TopLevelPortInterface pol_in0 ClockDomain {pfb_cplx_2p_2048c_16i_18o_core}
	dict set TopLevelPortInterface pol_in0 Locs {}
	dict set TopLevelPortInterface pol_in0 IOStandard {}
	dict set TopLevelPortInterface overflow Name {overflow}
	dict set TopLevelPortInterface overflow Type Bool
	dict set TopLevelPortInterface overflow ArithmeticType xlUnsigned
	dict set TopLevelPortInterface overflow BinaryPoint 0
	dict set TopLevelPortInterface overflow Width 1
	dict set TopLevelPortInterface overflow DatFile {pfb_cplx_2p_2048c_16i_18o_core_overflow.dat}
	dict set TopLevelPortInterface overflow IconText {overflow}
	dict set TopLevelPortInterface overflow Direction out
	dict set TopLevelPortInterface overflow Period 1
	dict set TopLevelPortInterface overflow Interface 0
	dict set TopLevelPortInterface overflow InterfaceName {}
	dict set TopLevelPortInterface overflow InterfaceString {DATA}
	dict set TopLevelPortInterface overflow ClockDomain {pfb_cplx_2p_2048c_16i_18o_core}
	dict set TopLevelPortInterface overflow Locs {}
	dict set TopLevelPortInterface overflow IOStandard {}
	dict set TopLevelPortInterface pol_out0 Name {pol_out0}
	dict set TopLevelPortInterface pol_out0 Type UFix_288_0
	dict set TopLevelPortInterface pol_out0 ArithmeticType xlUnsigned
	dict set TopLevelPortInterface pol_out0 BinaryPoint 0
	dict set TopLevelPortInterface pol_out0 Width 288
	dict set TopLevelPortInterface pol_out0 DatFile {pfb_cplx_2p_2048c_16i_18o_core_pol_out0.dat}
	dict set TopLevelPortInterface pol_out0 IconText {pol_out0}
	dict set TopLevelPortInterface pol_out0 Direction out
	dict set TopLevelPortInterface pol_out0 Period 1
	dict set TopLevelPortInterface pol_out0 Interface 0
	dict set TopLevelPortInterface pol_out0 InterfaceName {}
	dict set TopLevelPortInterface pol_out0 InterfaceString {DATA}
	dict set TopLevelPortInterface pol_out0 ClockDomain {pfb_cplx_2p_2048c_16i_18o_core}
	dict set TopLevelPortInterface pol_out0 Locs {}
	dict set TopLevelPortInterface pol_out0 IOStandard {}
	dict set TopLevelPortInterface pol_out1 Name {pol_out1}
	dict set TopLevelPortInterface pol_out1 Type UFix_288_0
	dict set TopLevelPortInterface pol_out1 ArithmeticType xlUnsigned
	dict set TopLevelPortInterface pol_out1 BinaryPoint 0
	dict set TopLevelPortInterface pol_out1 Width 288
	dict set TopLevelPortInterface pol_out1 DatFile {pfb_cplx_2p_2048c_16i_18o_core_pol_out1.dat}
	dict set TopLevelPortInterface pol_out1 IconText {pol_out1}
	dict set TopLevelPortInterface pol_out1 Direction out
	dict set TopLevelPortInterface pol_out1 Period 1
	dict set TopLevelPortInterface pol_out1 Interface 0
	dict set TopLevelPortInterface pol_out1 InterfaceName {}
	dict set TopLevelPortInterface pol_out1 InterfaceString {DATA}
	dict set TopLevelPortInterface pol_out1 ClockDomain {pfb_cplx_2p_2048c_16i_18o_core}
	dict set TopLevelPortInterface pol_out1 Locs {}
	dict set TopLevelPortInterface pol_out1 IOStandard {}
	dict set TopLevelPortInterface sync_out Name {sync_out}
	dict set TopLevelPortInterface sync_out Type Bool
	dict set TopLevelPortInterface sync_out ArithmeticType xlUnsigned
	dict set TopLevelPortInterface sync_out BinaryPoint 0
	dict set TopLevelPortInterface sync_out Width 1
	dict set TopLevelPortInterface sync_out DatFile {pfb_cplx_2p_2048c_16i_18o_core_sync_out.dat}
	dict set TopLevelPortInterface sync_out IconText {sync_out}
	dict set TopLevelPortInterface sync_out Direction out
	dict set TopLevelPortInterface sync_out Period 1
	dict set TopLevelPortInterface sync_out Interface 0
	dict set TopLevelPortInterface sync_out InterfaceName {}
	dict set TopLevelPortInterface sync_out InterfaceString {DATA}
	dict set TopLevelPortInterface sync_out ClockDomain {pfb_cplx_2p_2048c_16i_18o_core}
	dict set TopLevelPortInterface sync_out Locs {}
	dict set TopLevelPortInterface sync_out IOStandard {}
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
	dict set TopLevelPortInterface clk ClockDomain {pfb_cplx_2p_2048c_16i_18o_core}
	dict set TopLevelPortInterface clk Locs {}
	dict set TopLevelPortInterface clk IOStandard {}
	dict set TopLevelPortInterface clk AssociatedInterfaces {}
	dict set TopLevelPortInterface clk AssociatedResets {}
	set MemoryMappedPort {}
}

source SgPaProject.tcl
::xilinx::dsp::planaheadworker::dsp_create_project