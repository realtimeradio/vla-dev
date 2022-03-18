-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity uram_2048x512_latency3_core_stub is
  port (
    addr : in std_logic_vector( 11-1 downto 0 );
    data : in std_logic_vector( 512-1 downto 0 );
    we : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    dout : out std_logic_vector( 512-1 downto 0 )
  );
end uram_2048x512_latency3_core_stub;
architecture structural of uram_2048x512_latency3_core_stub is 
begin
  sysgen_dut : entity xil_defaultlib.uram_2048x512_latency3_core_0 
  port map (
    addr => addr,
    data => data,
    we => we,
    clk => clk,
    dout => dout
  );
end structural;
