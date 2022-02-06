--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1.3 (lin64) Build 2644227 Wed Sep  4 09:44:18 MDT 2019
--Date        : Sat Feb  5 18:25:38 2022
--Host        : rtr-dev1 running 64-bit Ubuntu 18.04.4 LTS
--Command     : generate_target uram_dp_32kx64_latency3_core_bd_wrapper.bd
--Design      : uram_dp_32kx64_latency3_core_bd_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uram_dp_32kx64_latency3_core_bd_wrapper is
  port (
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 14 downto 0 );
    clk : in STD_LOGIC;
    dina : in STD_LOGIC_VECTOR ( 63 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 63 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end uram_dp_32kx64_latency3_core_bd_wrapper;

architecture STRUCTURE of uram_dp_32kx64_latency3_core_bd_wrapper is
  component uram_dp_32kx64_latency3_core_bd is
  port (
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 14 downto 0 );
    clk : in STD_LOGIC;
    dina : in STD_LOGIC_VECTOR ( 63 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 63 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component uram_dp_32kx64_latency3_core_bd;
begin
uram_dp_32kx64_latency3_core_bd_i: component uram_dp_32kx64_latency3_core_bd
     port map (
      addra(14 downto 0) => addra(14 downto 0),
      addrb(14 downto 0) => addrb(14 downto 0),
      clk => clk,
      dina(63 downto 0) => dina(63 downto 0),
      dinb(63 downto 0) => dinb(63 downto 0),
      douta(63 downto 0) => douta(63 downto 0),
      doutb(63 downto 0) => doutb(63 downto 0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
