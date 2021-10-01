# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator. 
#


namespace eval ::xilinx::dsp::planaheaddriver {
	set Compilation {IP Catalog}
	set CompilationFlow {IP}
	set CreateInterfaceDocument {off}
	set DSPDevice {xcku115}
	set DSPFamily {kintexu}
	set DSPPackage {flvf1924}
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
	set IP_Revision {264005805}
	set IP_Socket_IP {0}
	set IP_Socket_IP_Proj_Path {}
	set IP_Vendor_Text {User_Company}
	set IP_Version_Text {1.0}
	set ImplStrategyName {Vivado Implementation Defaults}
	set PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
	set Project {fft_256c_16i_18b_core}
	set ProjectFiles {
		{{conv_pkg.vhd} -lib {xil_defaultlib}}
		{{synth_reg.vhd} -lib {xil_defaultlib}}
		{{synth_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{srl17e.vhd} -lib {xil_defaultlib}}
		{{srl33e.vhd} -lib {xil_defaultlib}}
		{{synth_reg_reg.vhd} -lib {xil_defaultlib}}
		{{single_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{xlclockdriver_rd.vhd} -lib {xil_defaultlib}}
		{{xpm_255fd5_vivado.mem}}
		{{vivado_ip.tcl}}
		{{fft_256c_16i_18b_core_dist_mem_gen_i0_vivado.coe}}
		{{fft_256c_16i_18b_core_dist_mem_gen_i1_vivado.coe}}
		{{fft_256c_16i_18b_core_dist_mem_gen_i2_vivado.coe}}
		{{fft_256c_16i_18b_core_dist_mem_gen_i3_vivado.coe}}
		{{fft_256c_16i_18b_core_dist_mem_gen_i4_vivado.coe}}
		{{fft_256c_16i_18b_core_dist_mem_gen_i5_vivado.coe}}
		{{xpm_effb0c_vivado.mem}}
		{{xpm_ab21d8_vivado.mem}}
		{{xpm_ce727f_vivado.mem}}
		{{xpm_0b5bdc_vivado.mem}}
		{{xpm_b4a74f_vivado.mem}}
		{{xpm_173557_vivado.mem}}
		{{xpm_dbbe6b_vivado.mem}}
		{{xpm_8e8960_vivado.mem}}
		{{xpm_2d5c24_vivado.mem}}
		{{xpm_e420d6_vivado.mem}}
		{{xpm_bf5a7b_vivado.mem}}
		{{xpm_843e0f_vivado.mem}}
		{{xpm_95f1ee_vivado.mem}}
		{{xpm_aca9a7_vivado.mem}}
		{{xpm_ec1c52_vivado.mem}}
		{{xpm_abc795_vivado.mem}}
		{{xpm_0bde1c_vivado.mem}}
		{{xpm_9b1740_dpram.mem}}
		{{fft_256c_16i_18b_core_entity_declarations.vhd} -lib {xil_defaultlib}}
		{{fft_256c_16i_18b_core.vhd} -lib {xil_defaultlib}}
		{{fft_256c_16i_18b_core_clock.xdc}}
		{{fft_256c_16i_18b_core.xdc}}
	}
	set SimPeriod 1
	set SimTime 6144
	set SimulationTime {30925.00000000 ns}
	set SynthStrategyName {Vivado Synthesis Defaults}
	set SynthesisTool {Vivado}
	set TargetDir {/home/jackh/src/vla-dev/dsp/fft_256c_16i_18b_core}
	set TopLevelModule {fft_256c_16i_18b_core}
	set TopLevelSimulinkHandle 90646
	set VHDLLib {xil_defaultlib}
	set TopLevelPortInterface {}
	dict set TopLevelPortInterface sync Name {sync}
	dict set TopLevelPortInterface sync Type UFix_32_0
	dict set TopLevelPortInterface sync ArithmeticType xlUnsigned
	dict set TopLevelPortInterface sync BinaryPoint 0
	dict set TopLevelPortInterface sync Width 32
	dict set TopLevelPortInterface sync DatFile {fft_256c_16i_18b_core_sync.dat}
	dict set TopLevelPortInterface sync IconText {sync}
	dict set TopLevelPortInterface sync Direction in
	dict set TopLevelPortInterface sync Period 1
	dict set TopLevelPortInterface sync Interface 0
	dict set TopLevelPortInterface sync InterfaceName {}
	dict set TopLevelPortInterface sync InterfaceString {DATA}
	dict set TopLevelPortInterface sync ClockDomain {fft_256c_16i_18b_core}
	dict set TopLevelPortInterface sync Locs {}
	dict set TopLevelPortInterface sync IOStandard {}
	dict set TopLevelPortInterface shift Name {shift}
	dict set TopLevelPortInterface shift Type UFix_16_0
	dict set TopLevelPortInterface shift ArithmeticType xlUnsigned
	dict set TopLevelPortInterface shift BinaryPoint 0
	dict set TopLevelPortInterface shift Width 16
	dict set TopLevelPortInterface shift DatFile {fft_256c_16i_18b_core_shift.dat}
	dict set TopLevelPortInterface shift IconText {shift}
	dict set TopLevelPortInterface shift Direction in
	dict set TopLevelPortInterface shift Period 1
	dict set TopLevelPortInterface shift Interface 0
	dict set TopLevelPortInterface shift InterfaceName {}
	dict set TopLevelPortInterface shift InterfaceString {DATA}
	dict set TopLevelPortInterface shift ClockDomain {fft_256c_16i_18b_core}
	dict set TopLevelPortInterface shift Locs {}
	dict set TopLevelPortInterface shift IOStandard {}
	dict set TopLevelPortInterface pol_in Name {pol_in}
	dict set TopLevelPortInterface pol_in Type UFix_288_0
	dict set TopLevelPortInterface pol_in ArithmeticType xlUnsigned
	dict set TopLevelPortInterface pol_in BinaryPoint 0
	dict set TopLevelPortInterface pol_in Width 288
	dict set TopLevelPortInterface pol_in DatFile {fft_256c_16i_18b_core_pol_in.dat}
	dict set TopLevelPortInterface pol_in IconText {pol_in}
	dict set TopLevelPortInterface pol_in Direction in
	dict set TopLevelPortInterface pol_in Period 1
	dict set TopLevelPortInterface pol_in Interface 0
	dict set TopLevelPortInterface pol_in InterfaceName {}
	dict set TopLevelPortInterface pol_in InterfaceString {DATA}
	dict set TopLevelPortInterface pol_in ClockDomain {fft_256c_16i_18b_core}
	dict set TopLevelPortInterface pol_in Locs {}
	dict set TopLevelPortInterface pol_in IOStandard {}
	dict set TopLevelPortInterface overflow Name {overflow}
	dict set TopLevelPortInterface overflow Type UFix_4_0
	dict set TopLevelPortInterface overflow ArithmeticType xlUnsigned
	dict set TopLevelPortInterface overflow BinaryPoint 0
	dict set TopLevelPortInterface overflow Width 4
	dict set TopLevelPortInterface overflow DatFile {fft_256c_16i_18b_core_overflow.dat}
	dict set TopLevelPortInterface overflow IconText {overflow}
	dict set TopLevelPortInterface overflow Direction out
	dict set TopLevelPortInterface overflow Period 1
	dict set TopLevelPortInterface overflow Interface 0
	dict set TopLevelPortInterface overflow InterfaceName {}
	dict set TopLevelPortInterface overflow InterfaceString {DATA}
	dict set TopLevelPortInterface overflow ClockDomain {fft_256c_16i_18b_core}
	dict set TopLevelPortInterface overflow Locs {}
	dict set TopLevelPortInterface overflow IOStandard {}
	dict set TopLevelPortInterface pol_out Name {pol_out}
	dict set TopLevelPortInterface pol_out Type UFix_288_0
	dict set TopLevelPortInterface pol_out ArithmeticType xlUnsigned
	dict set TopLevelPortInterface pol_out BinaryPoint 0
	dict set TopLevelPortInterface pol_out Width 288
	dict set TopLevelPortInterface pol_out DatFile {fft_256c_16i_18b_core_pol_out.dat}
	dict set TopLevelPortInterface pol_out IconText {pol_out}
	dict set TopLevelPortInterface pol_out Direction out
	dict set TopLevelPortInterface pol_out Period 1
	dict set TopLevelPortInterface pol_out Interface 0
	dict set TopLevelPortInterface pol_out InterfaceName {}
	dict set TopLevelPortInterface pol_out InterfaceString {DATA}
	dict set TopLevelPortInterface pol_out ClockDomain {fft_256c_16i_18b_core}
	dict set TopLevelPortInterface pol_out Locs {}
	dict set TopLevelPortInterface pol_out IOStandard {}
	dict set TopLevelPortInterface sync_out Name {sync_out}
	dict set TopLevelPortInterface sync_out Type Bool
	dict set TopLevelPortInterface sync_out ArithmeticType xlUnsigned
	dict set TopLevelPortInterface sync_out BinaryPoint 0
	dict set TopLevelPortInterface sync_out Width 1
	dict set TopLevelPortInterface sync_out DatFile {fft_256c_16i_18b_core_sync_out.dat}
	dict set TopLevelPortInterface sync_out IconText {sync_out}
	dict set TopLevelPortInterface sync_out Direction out
	dict set TopLevelPortInterface sync_out Period 1
	dict set TopLevelPortInterface sync_out Interface 0
	dict set TopLevelPortInterface sync_out InterfaceName {}
	dict set TopLevelPortInterface sync_out InterfaceString {DATA}
	dict set TopLevelPortInterface sync_out ClockDomain {fft_256c_16i_18b_core}
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
	dict set TopLevelPortInterface clk ClockDomain {fft_256c_16i_18b_core}
	dict set TopLevelPortInterface clk Locs {}
	dict set TopLevelPortInterface clk IOStandard {}
	dict set TopLevelPortInterface clk AssociatedInterfaces {}
	dict set TopLevelPortInterface clk AssociatedResets {}
	set MemoryMappedPort {}
}

source SgPaProject.tcl
::xilinx::dsp::planaheadworker::dsp_create_project