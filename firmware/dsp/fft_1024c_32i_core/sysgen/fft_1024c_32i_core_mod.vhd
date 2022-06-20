-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity fft_1024c_32i_core_stub is
  port (
    pol_in : in std_logic_vector( 576-1 downto 0 );
    shift : in std_logic_vector( 16-1 downto 0 );
    sync : in std_logic_vector( 32-1 downto 0 );
    clk : in std_logic;
    overflow : out std_logic_vector( 8-1 downto 0 );
    pol_out : out std_logic_vector( 576-1 downto 0 );
    sync_out : out std_logic_vector( 1-1 downto 0 )
  );
end fft_1024c_32i_core_stub;
architecture structural of fft_1024c_32i_core_stub is 
begin
  sysgen_dut : entity xil_defaultlib.fft_1024c_32i_core_0 
  port map (
    pol_in => pol_in,
    shift => shift,
    sync => sync,
    clk => clk,
    overflow => overflow,
    pol_out => pol_out,
    sync_out => sync_out
  );
end structural;
