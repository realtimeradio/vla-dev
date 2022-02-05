-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity uram_8192x512_latency3_core_ip_struct is
  port (
    data : in std_logic_vector( 512-1 downto 0 );
    addr : in std_logic_vector( 13-1 downto 0 );
    we   : in std_logic_vector( 1-1 downto 0 );
    dout : out std_logic_vector( 512-1 downto 0 )
  );
end uram_8192x512_latency3_core_ip_struct;

architecture structural of uram_8192x512_latency3_core_ip_struct is
  component uram_8192x512_latency3_core_ip
    port (
      data : in std_logic_vector( 512-1 downto 0 );
      addr : in std_logic_vector( 13-1 downto 0 );
      we   : in std_logic_vector( 1-1 downto 0 );
      dout : out std_logic_vector( 512-1 downto 0 )
    );
  end component;
begin
  uram_8192x512_latency3_core_ip_inst : uram_8192x512_latency3_core_ip
  port map (
    data => data,
    addr => addr,
    we => we,
    dout => dout 
  );
end structural; 
