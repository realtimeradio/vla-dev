-- Generated from Simulink block uram_8192x512_latency3_core_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity uram_8192x512_latency3_core_struct is
  port (
    data : in std_logic_vector( 512-1 downto 0 );
    addr : in std_logic_vector( 13-1 downto 0 );
    we : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 512-1 downto 0 )
  );
end uram_8192x512_latency3_core_struct;
architecture structural of uram_8192x512_latency3_core_struct is 
  signal data_net : std_logic_vector( 512-1 downto 0 );
  signal bram0_data_out_net : std_logic_vector( 512-1 downto 0 );
  signal addr_net : std_logic_vector( 13-1 downto 0 );
  signal we_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal convert_dout_net : std_logic_vector( 1-1 downto 0 );
begin
  data_net <= data;
  dout <= bram0_data_out_net;
  addr_net <= addr;
  we_net <= we;
  clk_net <= clk_1;
  ce_net <= ce_1;
  bram0 : entity xil_defaultlib.uram_8192x512_latency3_core_xlspram 
  generic map (
    init_value => b"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
    latency => 3,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 4194304,
    mem_type => "ultra",
    read_reset_val => "0",
    width => 512,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 3
  )
  port map (
    en => "1",
    rst => "0",
    addr => addr_net,
    data_in => data_net,
    we => convert_dout_net,
    clk => clk_net,
    ce => ce_net,
    data_out => bram0_data_out_net
  );
  convert : entity xil_defaultlib.uram_8192x512_latency3_core_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => we_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity uram_8192x512_latency3_core_default_clock_driver is
  port (
    uram_8192x512_latency3_core_sysclk : in std_logic;
    uram_8192x512_latency3_core_sysce : in std_logic;
    uram_8192x512_latency3_core_sysclr : in std_logic;
    uram_8192x512_latency3_core_clk1 : out std_logic;
    uram_8192x512_latency3_core_ce1 : out std_logic
  );
end uram_8192x512_latency3_core_default_clock_driver;
architecture structural of uram_8192x512_latency3_core_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => uram_8192x512_latency3_core_sysclk,
    sysce => uram_8192x512_latency3_core_sysce,
    sysclr => uram_8192x512_latency3_core_sysclr,
    clk => uram_8192x512_latency3_core_clk1,
    ce => uram_8192x512_latency3_core_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity uram_8192x512_latency3_core is
  port (
    data : in std_logic_vector( 512-1 downto 0 );
    addr : in std_logic_vector( 13-1 downto 0 );
    we : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    dout : out std_logic_vector( 512-1 downto 0 )
  );
end uram_8192x512_latency3_core;
architecture structural of uram_8192x512_latency3_core is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "uram_8192x512_latency3_core,sysgen_core_2019_1,{,compilation=IP Catalog,block_icon_display=Default,family=virtexuplus,part=xcvu9p,speed=-1-e,package=flga2104,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=5,system_simulink_period=1,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=10,convert=1,spram=1,}";
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
begin
  uram_8192x512_latency3_core_default_clock_driver : entity xil_defaultlib.uram_8192x512_latency3_core_default_clock_driver 
  port map (
    uram_8192x512_latency3_core_sysclk => clk,
    uram_8192x512_latency3_core_sysce => '1',
    uram_8192x512_latency3_core_sysclr => '0',
    uram_8192x512_latency3_core_clk1 => clk_1_net,
    uram_8192x512_latency3_core_ce1 => ce_1_net
  );
  uram_8192x512_latency3_core_struct : entity xil_defaultlib.uram_8192x512_latency3_core_struct 
  port map (
    data => data,
    addr => addr,
    we => we,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    dout => dout
  );
end structural;
