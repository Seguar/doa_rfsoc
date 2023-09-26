--Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2.2 (win64) Build 3788238 Tue Feb 21 20:00:34 MST 2023
--Date        : Thu Jul  6 18:20:02 2023
--Host        : Sega running 64-bit major release  (build 9200)
--Command     : generate_target mts_wrapper.bd
--Design      : mts_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mts_wrapper is
  port (
    PL_CLK : in STD_LOGIC_VECTOR ( 0 to 0 );
    PL_SYSREF : in STD_LOGIC_VECTOR ( 0 to 0 );
    adc2_clk_clk_n : in STD_LOGIC;
    adc2_clk_clk_p : in STD_LOGIC;
    dac2_clk_clk_n : in STD_LOGIC;
    dac2_clk_clk_p : in STD_LOGIC;
    sysref_in_diff_n : in STD_LOGIC;
    sysref_in_diff_p : in STD_LOGIC;
    vin0_01_v_n : in STD_LOGIC;
    vin0_01_v_p : in STD_LOGIC;
    vin0_23_v_n : in STD_LOGIC;
    vin0_23_v_p : in STD_LOGIC;
    vin1_01_v_n : in STD_LOGIC;
    vin1_01_v_p : in STD_LOGIC;
    vin2_01_v_n : in STD_LOGIC;
    vin2_01_v_p : in STD_LOGIC;
    vin2_23_v_n : in STD_LOGIC;
    vin2_23_v_p : in STD_LOGIC;
    vout00_v_n : out STD_LOGIC;
    vout00_v_p : out STD_LOGIC;
    vout10_v_n : out STD_LOGIC;
    vout10_v_p : out STD_LOGIC;
    vout20_v_n : out STD_LOGIC;
    vout20_v_p : out STD_LOGIC
  );
end mts_wrapper;

architecture STRUCTURE of mts_wrapper is
  component mts is
  port (
    adc2_clk_clk_n : in STD_LOGIC;
    adc2_clk_clk_p : in STD_LOGIC;
    dac2_clk_clk_n : in STD_LOGIC;
    dac2_clk_clk_p : in STD_LOGIC;
    sysref_in_diff_n : in STD_LOGIC;
    sysref_in_diff_p : in STD_LOGIC;
    vin0_01_v_n : in STD_LOGIC;
    vin0_01_v_p : in STD_LOGIC;
    vin0_23_v_n : in STD_LOGIC;
    vin0_23_v_p : in STD_LOGIC;
    vin1_01_v_n : in STD_LOGIC;
    vin1_01_v_p : in STD_LOGIC;
    vin2_01_v_n : in STD_LOGIC;
    vin2_01_v_p : in STD_LOGIC;
    vin2_23_v_n : in STD_LOGIC;
    vin2_23_v_p : in STD_LOGIC;
    vout00_v_n : out STD_LOGIC;
    vout00_v_p : out STD_LOGIC;
    vout10_v_n : out STD_LOGIC;
    vout10_v_p : out STD_LOGIC;
    vout20_v_n : out STD_LOGIC;
    vout20_v_p : out STD_LOGIC;
    PL_CLK : in STD_LOGIC_VECTOR ( 0 to 0 );
    PL_SYSREF : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component mts;
begin
mts_i: component mts
     port map (
      PL_CLK(0) => PL_CLK(0),
      PL_SYSREF(0) => PL_SYSREF(0),
      adc2_clk_clk_n => adc2_clk_clk_n,
      adc2_clk_clk_p => adc2_clk_clk_p,
      dac2_clk_clk_n => dac2_clk_clk_n,
      dac2_clk_clk_p => dac2_clk_clk_p,
      sysref_in_diff_n => sysref_in_diff_n,
      sysref_in_diff_p => sysref_in_diff_p,
      vin0_01_v_n => vin0_01_v_n,
      vin0_01_v_p => vin0_01_v_p,
      vin0_23_v_n => vin0_23_v_n,
      vin0_23_v_p => vin0_23_v_p,
      vin1_01_v_n => vin1_01_v_n,
      vin1_01_v_p => vin1_01_v_p,
      vin2_01_v_n => vin2_01_v_n,
      vin2_01_v_p => vin2_01_v_p,
      vin2_23_v_n => vin2_23_v_n,
      vin2_23_v_p => vin2_23_v_p,
      vout00_v_n => vout00_v_n,
      vout00_v_p => vout00_v_p,
      vout10_v_n => vout10_v_n,
      vout10_v_p => vout10_v_p,
      vout20_v_n => vout20_v_n,
      vout20_v_p => vout20_v_p
    );
end STRUCTURE;
