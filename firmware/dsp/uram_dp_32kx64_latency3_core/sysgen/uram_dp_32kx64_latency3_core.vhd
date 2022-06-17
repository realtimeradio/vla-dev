-- Generated from Simulink block uram_dp_32kx64_latency3_core_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity uram_dp_32kx64_latency3_core_struct is
  port (
    addra : in std_logic_vector( 15-1 downto 0 );
    dina : in std_logic_vector( 64-1 downto 0 );
    wea : in std_logic_vector( 1-1 downto 0 );
    addrb : in std_logic_vector( 15-1 downto 0 );
    dinb : in std_logic_vector( 64-1 downto 0 );
    web : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    douta : out std_logic_vector( 64-1 downto 0 );
    doutb : out std_logic_vector( 64-1 downto 0 )
  );
end uram_dp_32kx64_latency3_core_struct;
architecture structural of uram_dp_32kx64_latency3_core_struct is 
  signal wea_net : std_logic_vector( 1-1 downto 0 );
  signal bram0_douta_net : std_logic_vector( 64-1 downto 0 );
  signal ce_net : std_logic;
  signal web_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal bram0_doutb_net : std_logic_vector( 64-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 1-1 downto 0 );
  signal addrb_net : std_logic_vector( 15-1 downto 0 );
  signal dinb_net : std_logic_vector( 64-1 downto 0 );
  signal clk_net : std_logic;
  signal addra_net : std_logic_vector( 15-1 downto 0 );
  signal dina_net : std_logic_vector( 64-1 downto 0 );
begin
  addra_net <= addra;
  dina_net <= dina;
  douta <= bram0_douta_net;
  wea_net <= wea;
  addrb_net <= addrb;
  dinb_net <= dinb;
  web_net <= web;
  doutb <= bram0_doutb_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  convert : entity xil_defaultlib.uram_dp_32kx64_latency3_core_xlconvert 
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
    din => wea_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  bram0 : entity xil_defaultlib.uram_dp_32kx64_latency3_core_xltdpram 
  generic map (
    addr_width_b => 15,
    data_width_b => 64,
    latency => 3,
    mem_size => 2097152,
    width => 64,
    width_addr => 15,
    write_mode_a => "no_change",
    write_mode_b => "no_change"
  )
  port map (
    ena => "1",
    enb => "1",
    rsta => "0",
    rstb => "0",
    addra => addra_net,
    dina => dina_net,
    wea => convert_dout_net,
    addrb => addrb_net,
    dinb => dinb_net,
    web => convert1_dout_net,
    a_clk => clk_net,
    a_ce => ce_net,
    b_clk => clk_net,
    b_ce => ce_net,
    douta => bram0_douta_net,
    doutb => bram0_doutb_net
  );
  convert1 : entity xil_defaultlib.uram_dp_32kx64_latency3_core_xlconvert 
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
    din => web_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity uram_dp_32kx64_latency3_core_default_clock_driver is
  port (
    uram_dp_32kx64_latency3_core_sysclk : in std_logic;
    uram_dp_32kx64_latency3_core_sysce : in std_logic;
    uram_dp_32kx64_latency3_core_sysclr : in std_logic;
    uram_dp_32kx64_latency3_core_clk1 : out std_logic;
    uram_dp_32kx64_latency3_core_ce1 : out std_logic
  );
end uram_dp_32kx64_latency3_core_default_clock_driver;
architecture structural of uram_dp_32kx64_latency3_core_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => uram_dp_32kx64_latency3_core_sysclk,
    sysce => uram_dp_32kx64_latency3_core_sysce,
    sysclr => uram_dp_32kx64_latency3_core_sysclr,
    clk => uram_dp_32kx64_latency3_core_clk1,
    ce => uram_dp_32kx64_latency3_core_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity uram_dp_32kx64_latency3_core is
  port (
    addra : in std_logic_vector( 15-1 downto 0 );
    dina : in std_logic_vector( 64-1 downto 0 );
    wea : in std_logic_vector( 1-1 downto 0 );
    addrb : in std_logic_vector( 15-1 downto 0 );
    dinb : in std_logic_vector( 64-1 downto 0 );
    web : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    douta : out std_logic_vector( 64-1 downto 0 );
    doutb : out std_logic_vector( 64-1 downto 0 )
  );
end uram_dp_32kx64_latency3_core;
architecture structural of uram_dp_32kx64_latency3_core is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "uram_dp_32kx64_latency3_core,sysgen_core_2019_1,{,compilation=IP Catalog,block_icon_display=Default,family=virtexuplus,part=xcvu9p,speed=-1-e,package=flga2104,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=5,system_simulink_period=1,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=10,convert=2,dpram=1,}";
  signal ce_1_net : std_logic;
  signal clk_1_net : std_logic;
begin
  uram_dp_32kx64_latency3_core_default_clock_driver : entity xil_defaultlib.uram_dp_32kx64_latency3_core_default_clock_driver 
  port map (
    uram_dp_32kx64_latency3_core_sysclk => clk,
    uram_dp_32kx64_latency3_core_sysce => '1',
    uram_dp_32kx64_latency3_core_sysclr => '0',
    uram_dp_32kx64_latency3_core_clk1 => clk_1_net,
    uram_dp_32kx64_latency3_core_ce1 => ce_1_net
  );
  uram_dp_32kx64_latency3_core_struct : entity xil_defaultlib.uram_dp_32kx64_latency3_core_struct 
  port map (
    addra => addra,
    dina => dina,
    wea => wea,
    addrb => addrb,
    dinb => dinb,
    web => web,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    douta => douta,
    doutb => doutb
  );
end structural;
