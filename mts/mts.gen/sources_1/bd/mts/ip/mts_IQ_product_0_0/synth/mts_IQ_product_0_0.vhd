-- (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: Technion:VMC:IQ_product:1.0
-- IP Revision: 318614207

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY xil_defaultlib;
USE xil_defaultlib.iq_product;

ENTITY mts_IQ_product_0_0 IS
  PORT (
    i1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    i2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    i3 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    i4 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    q1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    q2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    q3 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    q4 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    clk : IN STD_LOGIC;
    gateway_out : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    gateway_out1 : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    gateway_out10 : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    gateway_out11 : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    gateway_out12 : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    gateway_out13 : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    gateway_out14 : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    gateway_out15 : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    gateway_out16 : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    gateway_out17 : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    gateway_out18 : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    gateway_out19 : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    gateway_out2 : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    gateway_out3 : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    gateway_out4 : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    gateway_out5 : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    gateway_out6 : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    gateway_out7 : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    gateway_out8 : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    gateway_out9 : OUT STD_LOGIC_VECTOR(32 DOWNTO 0)
  );
END mts_IQ_product_0_0;

ARCHITECTURE mts_IQ_product_0_0_arch OF mts_IQ_product_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF mts_IQ_product_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT iq_product IS
    PORT (
      i1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      i2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      i3 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      i4 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      q1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      q2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      q3 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      q4 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      clk : IN STD_LOGIC;
      gateway_out : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      gateway_out1 : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      gateway_out10 : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      gateway_out11 : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      gateway_out12 : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      gateway_out13 : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      gateway_out14 : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      gateway_out15 : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      gateway_out16 : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      gateway_out17 : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      gateway_out18 : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      gateway_out19 : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      gateway_out2 : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      gateway_out3 : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      gateway_out4 : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      gateway_out5 : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      gateway_out6 : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      gateway_out7 : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      gateway_out8 : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      gateway_out9 : OUT STD_LOGIC_VECTOR(32 DOWNTO 0)
    );
  END COMPONENT iq_product;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF mts_IQ_product_0_0_arch: ARCHITECTURE IS "iq_product,Vivado 2022.2.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF mts_IQ_product_0_0_arch : ARCHITECTURE IS "mts_IQ_product_0_0,iq_product,{}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF mts_IQ_product_0_0_arch: ARCHITECTURE IS "sysgen";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clocktreeMTS/MTSclkwiz_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF gateway_out: SIGNAL IS "XIL_INTERFACENAME gateway_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maxim" & 
"um {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF gateway_out: SIGNAL IS "xilinx.com:signal:data:1.0 gateway_out DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF gateway_out1: SIGNAL IS "XIL_INTERFACENAME gateway_out1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maxi" & 
"mum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF gateway_out1: SIGNAL IS "xilinx.com:signal:data:1.0 gateway_out1 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF gateway_out10: SIGNAL IS "XIL_INTERFACENAME gateway_out10, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} max" & 
"imum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF gateway_out10: SIGNAL IS "xilinx.com:signal:data:1.0 gateway_out10 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF gateway_out11: SIGNAL IS "XIL_INTERFACENAME gateway_out11, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} max" & 
"imum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF gateway_out11: SIGNAL IS "xilinx.com:signal:data:1.0 gateway_out11 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF gateway_out12: SIGNAL IS "XIL_INTERFACENAME gateway_out12, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} max" & 
"imum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF gateway_out12: SIGNAL IS "xilinx.com:signal:data:1.0 gateway_out12 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF gateway_out13: SIGNAL IS "XIL_INTERFACENAME gateway_out13, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} max" & 
"imum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF gateway_out13: SIGNAL IS "xilinx.com:signal:data:1.0 gateway_out13 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF gateway_out14: SIGNAL IS "XIL_INTERFACENAME gateway_out14, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} max" & 
"imum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF gateway_out14: SIGNAL IS "xilinx.com:signal:data:1.0 gateway_out14 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF gateway_out15: SIGNAL IS "XIL_INTERFACENAME gateway_out15, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} max" & 
"imum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF gateway_out15: SIGNAL IS "xilinx.com:signal:data:1.0 gateway_out15 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF gateway_out16: SIGNAL IS "XIL_INTERFACENAME gateway_out16, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} max" & 
"imum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF gateway_out16: SIGNAL IS "xilinx.com:signal:data:1.0 gateway_out16 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF gateway_out17: SIGNAL IS "XIL_INTERFACENAME gateway_out17, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} max" & 
"imum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF gateway_out17: SIGNAL IS "xilinx.com:signal:data:1.0 gateway_out17 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF gateway_out18: SIGNAL IS "XIL_INTERFACENAME gateway_out18, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} max" & 
"imum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF gateway_out18: SIGNAL IS "xilinx.com:signal:data:1.0 gateway_out18 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF gateway_out19: SIGNAL IS "XIL_INTERFACENAME gateway_out19, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} max" & 
"imum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF gateway_out19: SIGNAL IS "xilinx.com:signal:data:1.0 gateway_out19 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF gateway_out2: SIGNAL IS "XIL_INTERFACENAME gateway_out2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maxi" & 
"mum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF gateway_out2: SIGNAL IS "xilinx.com:signal:data:1.0 gateway_out2 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF gateway_out3: SIGNAL IS "XIL_INTERFACENAME gateway_out3, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maxi" & 
"mum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF gateway_out3: SIGNAL IS "xilinx.com:signal:data:1.0 gateway_out3 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF gateway_out4: SIGNAL IS "XIL_INTERFACENAME gateway_out4, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maxi" & 
"mum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF gateway_out4: SIGNAL IS "xilinx.com:signal:data:1.0 gateway_out4 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF gateway_out5: SIGNAL IS "XIL_INTERFACENAME gateway_out5, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maxi" & 
"mum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF gateway_out5: SIGNAL IS "xilinx.com:signal:data:1.0 gateway_out5 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF gateway_out6: SIGNAL IS "XIL_INTERFACENAME gateway_out6, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maxi" & 
"mum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF gateway_out6: SIGNAL IS "xilinx.com:signal:data:1.0 gateway_out6 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF gateway_out7: SIGNAL IS "XIL_INTERFACENAME gateway_out7, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maxi" & 
"mum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF gateway_out7: SIGNAL IS "xilinx.com:signal:data:1.0 gateway_out7 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF gateway_out8: SIGNAL IS "XIL_INTERFACENAME gateway_out8, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maxi" & 
"mum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF gateway_out8: SIGNAL IS "xilinx.com:signal:data:1.0 gateway_out8 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF gateway_out9: SIGNAL IS "XIL_INTERFACENAME gateway_out9, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 33} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maxi" & 
"mum {}} value 28} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF gateway_out9: SIGNAL IS "xilinx.com:signal:data:1.0 gateway_out9 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF i1: SIGNAL IS "XIL_INTERFACENAME i1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} va" & 
"lue 14} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF i1: SIGNAL IS "xilinx.com:signal:data:1.0 i1 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF i2: SIGNAL IS "XIL_INTERFACENAME i2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} va" & 
"lue 14} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF i2: SIGNAL IS "xilinx.com:signal:data:1.0 i2 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF i3: SIGNAL IS "XIL_INTERFACENAME i3, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} va" & 
"lue 14} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF i3: SIGNAL IS "xilinx.com:signal:data:1.0 i3 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF i4: SIGNAL IS "XIL_INTERFACENAME i4, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} va" & 
"lue 14} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF i4: SIGNAL IS "xilinx.com:signal:data:1.0 i4 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF q1: SIGNAL IS "XIL_INTERFACENAME q1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} va" & 
"lue 14} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF q1: SIGNAL IS "xilinx.com:signal:data:1.0 q1 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF q2: SIGNAL IS "XIL_INTERFACENAME q2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} va" & 
"lue 14} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF q2: SIGNAL IS "xilinx.com:signal:data:1.0 q2 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF q3: SIGNAL IS "XIL_INTERFACENAME q3, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} va" & 
"lue 14} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF q3: SIGNAL IS "xilinx.com:signal:data:1.0 q3 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF q4: SIGNAL IS "XIL_INTERFACENAME q4, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} va" & 
"lue 14} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF q4: SIGNAL IS "xilinx.com:signal:data:1.0 q4 DATA";
BEGIN
  U0 : iq_product
    PORT MAP (
      i1 => i1,
      i2 => i2,
      i3 => i3,
      i4 => i4,
      q1 => q1,
      q2 => q2,
      q3 => q3,
      q4 => q4,
      clk => clk,
      gateway_out => gateway_out,
      gateway_out1 => gateway_out1,
      gateway_out10 => gateway_out10,
      gateway_out11 => gateway_out11,
      gateway_out12 => gateway_out12,
      gateway_out13 => gateway_out13,
      gateway_out14 => gateway_out14,
      gateway_out15 => gateway_out15,
      gateway_out16 => gateway_out16,
      gateway_out17 => gateway_out17,
      gateway_out18 => gateway_out18,
      gateway_out19 => gateway_out19,
      gateway_out2 => gateway_out2,
      gateway_out3 => gateway_out3,
      gateway_out4 => gateway_out4,
      gateway_out5 => gateway_out5,
      gateway_out6 => gateway_out6,
      gateway_out7 => gateway_out7,
      gateway_out8 => gateway_out8,
      gateway_out9 => gateway_out9
    );
END mts_IQ_product_0_0_arch;
