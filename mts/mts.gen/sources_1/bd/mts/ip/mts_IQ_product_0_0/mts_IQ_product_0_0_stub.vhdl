-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2.2 (win64) Build 3788238 Tue Feb 21 20:00:34 MST 2023
-- Date        : Sun Jun 25 16:19:42 2023
-- Host        : Sega running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Work/FPGA/RFSoC-MTS/boards/RFSoC4x2/build_mts/mts/mts.gen/sources_1/bd/mts/ip/mts_IQ_product_0_0/mts_IQ_product_0_0_stub.vhdl
-- Design      : mts_IQ_product_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu48dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mts_IQ_product_0_0 is
  Port ( 
    i1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    q1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    q2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    q3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    q4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
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
    gateway_out9 : out STD_LOGIC_VECTOR ( 32 downto 0 )
  );

end mts_IQ_product_0_0;

architecture stub of mts_IQ_product_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i1[15:0],i2[15:0],i3[15:0],i4[15:0],q1[15:0],q2[15:0],q3[15:0],q4[15:0],clk,gateway_out[32:0],gateway_out1[32:0],gateway_out10[32:0],gateway_out11[32:0],gateway_out12[32:0],gateway_out13[32:0],gateway_out14[32:0],gateway_out15[32:0],gateway_out16[32:0],gateway_out17[32:0],gateway_out18[32:0],gateway_out19[32:0],gateway_out2[32:0],gateway_out3[32:0],gateway_out4[32:0],gateway_out5[32:0],gateway_out6[32:0],gateway_out7[32:0],gateway_out8[32:0],gateway_out9[32:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "iq_product,Vivado 2022.2.2";
begin
end;
