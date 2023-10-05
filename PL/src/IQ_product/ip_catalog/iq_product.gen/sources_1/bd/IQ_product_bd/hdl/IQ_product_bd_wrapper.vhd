--Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2.2 (win64) Build 3788238 Tue Feb 21 20:00:34 MST 2023
--Date        : Sun Jun 25 15:57:02 2023
--Host        : Sega running 64-bit major release  (build 9200)
--Command     : generate_target IQ_product_bd_wrapper.bd
--Design      : IQ_product_bd_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity IQ_product_bd_wrapper is
  port (
    clk : in STD_LOGIC;
    gateway_out : out STD_LOGIC_VECTOR ( 32 downto 0 );
    gateway_out1 : out STD_LOGIC_VECTOR ( 32 downto 0 );
    gateway_out10 : out STD_LOGIC_VECTOR ( 32 downto 0 );
    gateway_out11 : out STD_LOGIC_VECTOR ( 32 downto 0 );
    gateway_out12 : out STD_LOGIC_VECTOR ( 32 downto 0 );
    gateway_out13 : out STD_LOGIC_VECTOR ( 32 downto 0 );
    gateway_out14 : out STD_LOGIC_VECTOR ( 32 downto 0 );
    gateway_out15 : out STD_LOGIC_VECTOR ( 32 downto 0 );
    gateway_out16 : out STD_LOGIC_VECTOR ( 32 downto 0 );
    gateway_out17 : out STD_LOGIC_VECTOR ( 32 downto 0 );
    gateway_out18 : out STD_LOGIC_VECTOR ( 32 downto 0 );
    gateway_out19 : out STD_LOGIC_VECTOR ( 32 downto 0 );
    gateway_out2 : out STD_LOGIC_VECTOR ( 32 downto 0 );
    gateway_out3 : out STD_LOGIC_VECTOR ( 32 downto 0 );
    gateway_out4 : out STD_LOGIC_VECTOR ( 32 downto 0 );
    gateway_out5 : out STD_LOGIC_VECTOR ( 32 downto 0 );
    gateway_out6 : out STD_LOGIC_VECTOR ( 32 downto 0 );
    gateway_out7 : out STD_LOGIC_VECTOR ( 32 downto 0 );
    gateway_out8 : out STD_LOGIC_VECTOR ( 32 downto 0 );
    gateway_out9 : out STD_LOGIC_VECTOR ( 32 downto 0 );
    i1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    q1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    q2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    q3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    q4 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end IQ_product_bd_wrapper;

architecture STRUCTURE of IQ_product_bd_wrapper is
  component IQ_product_bd is
  port (
    clk : in STD_LOGIC;
    gateway_out : out STD_LOGIC_VECTOR ( 32 downto 0 );
    gateway_out1 : out STD_LOGIC_VECTOR ( 32 downto 0 );
    gateway_out10 : out STD_LOGIC_VECTOR ( 32 downto 0 );
    gateway_out11 : out STD_LOGIC_VECTOR ( 32 downto 0 );
    gateway_out12 : out STD_LOGIC_VECTOR ( 32 downto 0 );
    gateway_out13 : out STD_LOGIC_VECTOR ( 32 downto 0 );
    gateway_out14 : out STD_LOGIC_VECTOR ( 32 downto 0 );
    gateway_out15 : out STD_LOGIC_VECTOR ( 32 downto 0 );
    gateway_out16 : out STD_LOGIC_VECTOR ( 32 downto 0 );
    gateway_out17 : out STD_LOGIC_VECTOR ( 32 downto 0 );
    gateway_out18 : out STD_LOGIC_VECTOR ( 32 downto 0 );
    gateway_out19 : out STD_LOGIC_VECTOR ( 32 downto 0 );
    gateway_out2 : out STD_LOGIC_VECTOR ( 32 downto 0 );
    gateway_out3 : out STD_LOGIC_VECTOR ( 32 downto 0 );
    gateway_out4 : out STD_LOGIC_VECTOR ( 32 downto 0 );
    gateway_out5 : out STD_LOGIC_VECTOR ( 32 downto 0 );
    gateway_out6 : out STD_LOGIC_VECTOR ( 32 downto 0 );
    gateway_out7 : out STD_LOGIC_VECTOR ( 32 downto 0 );
    gateway_out8 : out STD_LOGIC_VECTOR ( 32 downto 0 );
    gateway_out9 : out STD_LOGIC_VECTOR ( 32 downto 0 );
    i1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    q1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    q2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    q3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    q4 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component IQ_product_bd;
begin
IQ_product_bd_i: component IQ_product_bd
     port map (
      clk => clk,
      gateway_out(32 downto 0) => gateway_out(32 downto 0),
      gateway_out1(32 downto 0) => gateway_out1(32 downto 0),
      gateway_out10(32 downto 0) => gateway_out10(32 downto 0),
      gateway_out11(32 downto 0) => gateway_out11(32 downto 0),
      gateway_out12(32 downto 0) => gateway_out12(32 downto 0),
      gateway_out13(32 downto 0) => gateway_out13(32 downto 0),
      gateway_out14(32 downto 0) => gateway_out14(32 downto 0),
      gateway_out15(32 downto 0) => gateway_out15(32 downto 0),
      gateway_out16(32 downto 0) => gateway_out16(32 downto 0),
      gateway_out17(32 downto 0) => gateway_out17(32 downto 0),
      gateway_out18(32 downto 0) => gateway_out18(32 downto 0),
      gateway_out19(32 downto 0) => gateway_out19(32 downto 0),
      gateway_out2(32 downto 0) => gateway_out2(32 downto 0),
      gateway_out3(32 downto 0) => gateway_out3(32 downto 0),
      gateway_out4(32 downto 0) => gateway_out4(32 downto 0),
      gateway_out5(32 downto 0) => gateway_out5(32 downto 0),
      gateway_out6(32 downto 0) => gateway_out6(32 downto 0),
      gateway_out7(32 downto 0) => gateway_out7(32 downto 0),
      gateway_out8(32 downto 0) => gateway_out8(32 downto 0),
      gateway_out9(32 downto 0) => gateway_out9(32 downto 0),
      i1(15 downto 0) => i1(15 downto 0),
      i2(15 downto 0) => i2(15 downto 0),
      i3(15 downto 0) => i3(15 downto 0),
      i4(15 downto 0) => i4(15 downto 0),
      q1(15 downto 0) => q1(15 downto 0),
      q2(15 downto 0) => q2(15 downto 0),
      q3(15 downto 0) => q3(15 downto 0),
      q4(15 downto 0) => q4(15 downto 0)
    );
end STRUCTURE;
