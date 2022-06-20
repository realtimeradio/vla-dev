-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity fft_128c_2p_16i_18b_core_stub is
  port (
    pol_in0 : in std_logic_vector( 288-1 downto 0 );
    shift : in std_logic_vector( 16-1 downto 0 );
    sync : in std_logic_vector( 32-1 downto 0 );
    pol_in1 : in std_logic_vector( 288-1 downto 0 );
    clk : in std_logic;
    overflow : out std_logic_vector( 4-1 downto 0 );
    pol_out0 : out std_logic_vector( 288-1 downto 0 );
    sync_out : out std_logic_vector( 1-1 downto 0 );
    pol_out1 : out std_logic_vector( 288-1 downto 0 )
  );
end fft_128c_2p_16i_18b_core_stub;
architecture structural of fft_128c_2p_16i_18b_core_stub is 
begin
  sysgen_dut : entity xil_defaultlib.fft_128c_2p_16i_18b_core 
  port map (
    pol_in0 => pol_in0,
    shift => shift,
    sync => sync,
    pol_in1 => pol_in1,
    clk => clk,
    overflow => overflow,
    pol_out0 => pol_out0,
    sync_out => sync_out,
    pol_out1 => pol_out1
  );
end structural;
