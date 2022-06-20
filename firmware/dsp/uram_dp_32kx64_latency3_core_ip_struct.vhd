-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity uram_dp_32kx64_latency3_core_ip_struct is
  port (
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dina  : in std_logic_vector( 64-1 downto 0 );
    addra : in std_logic_vector( 15-1 downto 0 );
    wea   : in std_logic_vector( 1-1 downto 0 );
    dinb  : in std_logic_vector( 64-1 downto 0 );
    addrb : in std_logic_vector( 15-1 downto 0 );
    web   : in std_logic_vector( 1-1 downto 0 );
    douta : out std_logic_vector( 64-1 downto 0 );
    doutb : out std_logic_vector( 64-1 downto 0 )
  );
end uram_dp_32kx64_latency3_core_ip_struct;

architecture structural of uram_dp_32kx64_latency3_core_ip_struct is
  component uram_dp_32kx64_latency3_core_ip
    port (
      clk : in std_logic;
      dina  : in std_logic_vector( 64-1 downto 0 );
      addra : in std_logic_vector( 15-1 downto 0 );
      wea   : in std_logic_vector( 1-1 downto 0 );
      dinb  : in std_logic_vector( 64-1 downto 0 );
      addrb : in std_logic_vector( 15-1 downto 0 );
      web   : in std_logic_vector( 1-1 downto 0 );
      douta : out std_logic_vector( 64-1 downto 0 );
      doutb : out std_logic_vector( 64-1 downto 0 )
    );
  end component;
begin
  uram_dp_32kx64_latency3_core_ip_inst : uram_dp_32kx64_latency3_core_ip
  port map (
    clk      => clk_1,
    dina => dina,
    addra => addra,
    wea => wea,
    douta => douta,
    dinb => dinb,
    addrb => addrb,
    web => web,
    doutb => doutb
  );
end structural; 
