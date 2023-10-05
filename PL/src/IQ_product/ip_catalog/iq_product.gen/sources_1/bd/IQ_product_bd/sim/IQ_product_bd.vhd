--Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2.2 (win64) Build 3788238 Tue Feb 21 20:00:34 MST 2023
--Date        : Sun Jun 25 15:57:02 2023
--Host        : Sega running 64-bit major release  (build 9200)
--Command     : generate_target IQ_product_bd.bd
--Design      : IQ_product_bd
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity IQ_product_bd is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of IQ_product_bd : entity is "IQ_product_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=IQ_product_bd,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=1,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SYSGEN,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of IQ_product_bd : entity is "IQ_product_bd.hwdef";
end IQ_product_bd;

architecture STRUCTURE of IQ_product_bd is
  component IQ_product_bd_IQ_product_1_0 is
  port (
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
  end component IQ_product_bd_IQ_product_1_0;
  signal IQ_product_1_gateway_out : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal IQ_product_1_gateway_out1 : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal IQ_product_1_gateway_out10 : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal IQ_product_1_gateway_out11 : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal IQ_product_1_gateway_out12 : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal IQ_product_1_gateway_out13 : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal IQ_product_1_gateway_out14 : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal IQ_product_1_gateway_out15 : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal IQ_product_1_gateway_out16 : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal IQ_product_1_gateway_out17 : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal IQ_product_1_gateway_out18 : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal IQ_product_1_gateway_out19 : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal IQ_product_1_gateway_out2 : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal IQ_product_1_gateway_out3 : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal IQ_product_1_gateway_out4 : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal IQ_product_1_gateway_out5 : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal IQ_product_1_gateway_out6 : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal IQ_product_1_gateway_out7 : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal IQ_product_1_gateway_out8 : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal IQ_product_1_gateway_out9 : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal clk_1 : STD_LOGIC;
  signal i1_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal i2_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal i3_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal i4_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal q1_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal q2_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal q3_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal q4_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN IQ_product_bd_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of gateway_out : signal is "xilinx.com:signal:data:1.0 DATA.GATEWAY_OUT DATA";
  attribute X_INTERFACE_PARAMETER of gateway_out : signal is "XIL_INTERFACENAME DATA.GATEWAY_OUT, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  attribute X_INTERFACE_INFO of gateway_out1 : signal is "xilinx.com:signal:data:1.0 DATA.GATEWAY_OUT1 DATA";
  attribute X_INTERFACE_PARAMETER of gateway_out1 : signal is "XIL_INTERFACENAME DATA.GATEWAY_OUT1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  attribute X_INTERFACE_INFO of gateway_out10 : signal is "xilinx.com:signal:data:1.0 DATA.GATEWAY_OUT10 DATA";
  attribute X_INTERFACE_PARAMETER of gateway_out10 : signal is "XIL_INTERFACENAME DATA.GATEWAY_OUT10, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  attribute X_INTERFACE_INFO of gateway_out11 : signal is "xilinx.com:signal:data:1.0 DATA.GATEWAY_OUT11 DATA";
  attribute X_INTERFACE_PARAMETER of gateway_out11 : signal is "XIL_INTERFACENAME DATA.GATEWAY_OUT11, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  attribute X_INTERFACE_INFO of gateway_out12 : signal is "xilinx.com:signal:data:1.0 DATA.GATEWAY_OUT12 DATA";
  attribute X_INTERFACE_PARAMETER of gateway_out12 : signal is "XIL_INTERFACENAME DATA.GATEWAY_OUT12, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  attribute X_INTERFACE_INFO of gateway_out13 : signal is "xilinx.com:signal:data:1.0 DATA.GATEWAY_OUT13 DATA";
  attribute X_INTERFACE_PARAMETER of gateway_out13 : signal is "XIL_INTERFACENAME DATA.GATEWAY_OUT13, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  attribute X_INTERFACE_INFO of gateway_out14 : signal is "xilinx.com:signal:data:1.0 DATA.GATEWAY_OUT14 DATA";
  attribute X_INTERFACE_PARAMETER of gateway_out14 : signal is "XIL_INTERFACENAME DATA.GATEWAY_OUT14, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  attribute X_INTERFACE_INFO of gateway_out15 : signal is "xilinx.com:signal:data:1.0 DATA.GATEWAY_OUT15 DATA";
  attribute X_INTERFACE_PARAMETER of gateway_out15 : signal is "XIL_INTERFACENAME DATA.GATEWAY_OUT15, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  attribute X_INTERFACE_INFO of gateway_out16 : signal is "xilinx.com:signal:data:1.0 DATA.GATEWAY_OUT16 DATA";
  attribute X_INTERFACE_PARAMETER of gateway_out16 : signal is "XIL_INTERFACENAME DATA.GATEWAY_OUT16, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  attribute X_INTERFACE_INFO of gateway_out17 : signal is "xilinx.com:signal:data:1.0 DATA.GATEWAY_OUT17 DATA";
  attribute X_INTERFACE_PARAMETER of gateway_out17 : signal is "XIL_INTERFACENAME DATA.GATEWAY_OUT17, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  attribute X_INTERFACE_INFO of gateway_out18 : signal is "xilinx.com:signal:data:1.0 DATA.GATEWAY_OUT18 DATA";
  attribute X_INTERFACE_PARAMETER of gateway_out18 : signal is "XIL_INTERFACENAME DATA.GATEWAY_OUT18, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  attribute X_INTERFACE_INFO of gateway_out19 : signal is "xilinx.com:signal:data:1.0 DATA.GATEWAY_OUT19 DATA";
  attribute X_INTERFACE_PARAMETER of gateway_out19 : signal is "XIL_INTERFACENAME DATA.GATEWAY_OUT19, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  attribute X_INTERFACE_INFO of gateway_out2 : signal is "xilinx.com:signal:data:1.0 DATA.GATEWAY_OUT2 DATA";
  attribute X_INTERFACE_PARAMETER of gateway_out2 : signal is "XIL_INTERFACENAME DATA.GATEWAY_OUT2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  attribute X_INTERFACE_INFO of gateway_out3 : signal is "xilinx.com:signal:data:1.0 DATA.GATEWAY_OUT3 DATA";
  attribute X_INTERFACE_PARAMETER of gateway_out3 : signal is "XIL_INTERFACENAME DATA.GATEWAY_OUT3, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  attribute X_INTERFACE_INFO of gateway_out4 : signal is "xilinx.com:signal:data:1.0 DATA.GATEWAY_OUT4 DATA";
  attribute X_INTERFACE_PARAMETER of gateway_out4 : signal is "XIL_INTERFACENAME DATA.GATEWAY_OUT4, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  attribute X_INTERFACE_INFO of gateway_out5 : signal is "xilinx.com:signal:data:1.0 DATA.GATEWAY_OUT5 DATA";
  attribute X_INTERFACE_PARAMETER of gateway_out5 : signal is "XIL_INTERFACENAME DATA.GATEWAY_OUT5, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  attribute X_INTERFACE_INFO of gateway_out6 : signal is "xilinx.com:signal:data:1.0 DATA.GATEWAY_OUT6 DATA";
  attribute X_INTERFACE_PARAMETER of gateway_out6 : signal is "XIL_INTERFACENAME DATA.GATEWAY_OUT6, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  attribute X_INTERFACE_INFO of gateway_out7 : signal is "xilinx.com:signal:data:1.0 DATA.GATEWAY_OUT7 DATA";
  attribute X_INTERFACE_PARAMETER of gateway_out7 : signal is "XIL_INTERFACENAME DATA.GATEWAY_OUT7, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  attribute X_INTERFACE_INFO of gateway_out8 : signal is "xilinx.com:signal:data:1.0 DATA.GATEWAY_OUT8 DATA";
  attribute X_INTERFACE_PARAMETER of gateway_out8 : signal is "XIL_INTERFACENAME DATA.GATEWAY_OUT8, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  attribute X_INTERFACE_INFO of gateway_out9 : signal is "xilinx.com:signal:data:1.0 DATA.GATEWAY_OUT9 DATA";
  attribute X_INTERFACE_PARAMETER of gateway_out9 : signal is "XIL_INTERFACENAME DATA.GATEWAY_OUT9, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  attribute X_INTERFACE_INFO of i1 : signal is "xilinx.com:signal:data:1.0 DATA.I1 DATA";
  attribute X_INTERFACE_PARAMETER of i1 : signal is "XIL_INTERFACENAME DATA.I1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of i2 : signal is "xilinx.com:signal:data:1.0 DATA.I2 DATA";
  attribute X_INTERFACE_PARAMETER of i2 : signal is "XIL_INTERFACENAME DATA.I2, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of i3 : signal is "xilinx.com:signal:data:1.0 DATA.I3 DATA";
  attribute X_INTERFACE_PARAMETER of i3 : signal is "XIL_INTERFACENAME DATA.I3, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of i4 : signal is "xilinx.com:signal:data:1.0 DATA.I4 DATA";
  attribute X_INTERFACE_PARAMETER of i4 : signal is "XIL_INTERFACENAME DATA.I4, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of q1 : signal is "xilinx.com:signal:data:1.0 DATA.Q1 DATA";
  attribute X_INTERFACE_PARAMETER of q1 : signal is "XIL_INTERFACENAME DATA.Q1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of q2 : signal is "xilinx.com:signal:data:1.0 DATA.Q2 DATA";
  attribute X_INTERFACE_PARAMETER of q2 : signal is "XIL_INTERFACENAME DATA.Q2, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of q3 : signal is "xilinx.com:signal:data:1.0 DATA.Q3 DATA";
  attribute X_INTERFACE_PARAMETER of q3 : signal is "XIL_INTERFACENAME DATA.Q3, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of q4 : signal is "xilinx.com:signal:data:1.0 DATA.Q4 DATA";
  attribute X_INTERFACE_PARAMETER of q4 : signal is "XIL_INTERFACENAME DATA.Q4, LAYERED_METADATA undef";
begin
  clk_1 <= clk;
  gateway_out(32 downto 0) <= IQ_product_1_gateway_out(32 downto 0);
  gateway_out1(32 downto 0) <= IQ_product_1_gateway_out1(32 downto 0);
  gateway_out10(32 downto 0) <= IQ_product_1_gateway_out10(32 downto 0);
  gateway_out11(32 downto 0) <= IQ_product_1_gateway_out11(32 downto 0);
  gateway_out12(32 downto 0) <= IQ_product_1_gateway_out12(32 downto 0);
  gateway_out13(32 downto 0) <= IQ_product_1_gateway_out13(32 downto 0);
  gateway_out14(32 downto 0) <= IQ_product_1_gateway_out14(32 downto 0);
  gateway_out15(32 downto 0) <= IQ_product_1_gateway_out15(32 downto 0);
  gateway_out16(32 downto 0) <= IQ_product_1_gateway_out16(32 downto 0);
  gateway_out17(32 downto 0) <= IQ_product_1_gateway_out17(32 downto 0);
  gateway_out18(32 downto 0) <= IQ_product_1_gateway_out18(32 downto 0);
  gateway_out19(32 downto 0) <= IQ_product_1_gateway_out19(32 downto 0);
  gateway_out2(32 downto 0) <= IQ_product_1_gateway_out2(32 downto 0);
  gateway_out3(32 downto 0) <= IQ_product_1_gateway_out3(32 downto 0);
  gateway_out4(32 downto 0) <= IQ_product_1_gateway_out4(32 downto 0);
  gateway_out5(32 downto 0) <= IQ_product_1_gateway_out5(32 downto 0);
  gateway_out6(32 downto 0) <= IQ_product_1_gateway_out6(32 downto 0);
  gateway_out7(32 downto 0) <= IQ_product_1_gateway_out7(32 downto 0);
  gateway_out8(32 downto 0) <= IQ_product_1_gateway_out8(32 downto 0);
  gateway_out9(32 downto 0) <= IQ_product_1_gateway_out9(32 downto 0);
  i1_1(15 downto 0) <= i1(15 downto 0);
  i2_1(15 downto 0) <= i2(15 downto 0);
  i3_1(15 downto 0) <= i3(15 downto 0);
  i4_1(15 downto 0) <= i4(15 downto 0);
  q1_1(15 downto 0) <= q1(15 downto 0);
  q2_1(15 downto 0) <= q2(15 downto 0);
  q3_1(15 downto 0) <= q3(15 downto 0);
  q4_1(15 downto 0) <= q4(15 downto 0);
IQ_product_1: component IQ_product_bd_IQ_product_1_0
     port map (
      clk => clk_1,
      gateway_out(32 downto 0) => IQ_product_1_gateway_out(32 downto 0),
      gateway_out1(32 downto 0) => IQ_product_1_gateway_out1(32 downto 0),
      gateway_out10(32 downto 0) => IQ_product_1_gateway_out10(32 downto 0),
      gateway_out11(32 downto 0) => IQ_product_1_gateway_out11(32 downto 0),
      gateway_out12(32 downto 0) => IQ_product_1_gateway_out12(32 downto 0),
      gateway_out13(32 downto 0) => IQ_product_1_gateway_out13(32 downto 0),
      gateway_out14(32 downto 0) => IQ_product_1_gateway_out14(32 downto 0),
      gateway_out15(32 downto 0) => IQ_product_1_gateway_out15(32 downto 0),
      gateway_out16(32 downto 0) => IQ_product_1_gateway_out16(32 downto 0),
      gateway_out17(32 downto 0) => IQ_product_1_gateway_out17(32 downto 0),
      gateway_out18(32 downto 0) => IQ_product_1_gateway_out18(32 downto 0),
      gateway_out19(32 downto 0) => IQ_product_1_gateway_out19(32 downto 0),
      gateway_out2(32 downto 0) => IQ_product_1_gateway_out2(32 downto 0),
      gateway_out3(32 downto 0) => IQ_product_1_gateway_out3(32 downto 0),
      gateway_out4(32 downto 0) => IQ_product_1_gateway_out4(32 downto 0),
      gateway_out5(32 downto 0) => IQ_product_1_gateway_out5(32 downto 0),
      gateway_out6(32 downto 0) => IQ_product_1_gateway_out6(32 downto 0),
      gateway_out7(32 downto 0) => IQ_product_1_gateway_out7(32 downto 0),
      gateway_out8(32 downto 0) => IQ_product_1_gateway_out8(32 downto 0),
      gateway_out9(32 downto 0) => IQ_product_1_gateway_out9(32 downto 0),
      i1(15 downto 0) => i1_1(15 downto 0),
      i2(15 downto 0) => i2_1(15 downto 0),
      i3(15 downto 0) => i3_1(15 downto 0),
      i4(15 downto 0) => i4_1(15 downto 0),
      q1(15 downto 0) => q1_1(15 downto 0),
      q2(15 downto 0) => q2_1(15 downto 0),
      q3(15 downto 0) => q3_1(15 downto 0),
      q4(15 downto 0) => q4_1(15 downto 0)
    );
end STRUCTURE;
