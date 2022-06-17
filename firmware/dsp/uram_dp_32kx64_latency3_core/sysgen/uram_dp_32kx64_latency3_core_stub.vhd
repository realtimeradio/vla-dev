-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity uram_dp_32kx64_latency3_core_stub is
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
end uram_dp_32kx64_latency3_core_stub;
architecture structural of uram_dp_32kx64_latency3_core_stub is 
begin
  sysgen_dut : entity xil_defaultlib.uram_dp_32kx64_latency3_core 
  port map (
    addra => addra,
    dina => dina,
    wea => wea,
    addrb => addrb,
    dinb => dinb,
    web => web,
    clk => clk,
    douta => douta,
    doutb => doutb
  );
end structural;
