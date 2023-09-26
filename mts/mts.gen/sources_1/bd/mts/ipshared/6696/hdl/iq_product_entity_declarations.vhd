-------------------------------------------------------------------
-- System Generator version 2022.2 VHDL source file.
--
-- Copyright(C) 2022 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2022 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

entity xliq_product_cmpy_v6_0_i0_75a95789294401c6275e6f76e5ded920 is 
  port(
    a_im:in std_logic_vector(15 downto 0);
    a_re:in std_logic_vector(15 downto 0);
    b_im:in std_logic_vector(15 downto 0);
    b_re:in std_logic_vector(15 downto 0);
    ce:in std_logic;
    clk:in std_logic;
    p_im:out std_logic_vector(32 downto 0);
    p_re:out std_logic_vector(32 downto 0)
  );
end xliq_product_cmpy_v6_0_i0_75a95789294401c6275e6f76e5ded920; 

architecture behavior of xliq_product_cmpy_v6_0_i0_75a95789294401c6275e6f76e5ded920  is
  component iq_product_cmpy_v6_0_i0
    port(
      aclk:in std_logic;
      aclken:in std_logic;
      m_axis_dout_tdata:out std_logic_vector(79 downto 0);
      m_axis_dout_tvalid:out std_logic;
      s_axis_a_tdata:in std_logic_vector(31 downto 0);
      s_axis_a_tvalid:in std_logic;
      s_axis_b_tdata:in std_logic_vector(31 downto 0);
      s_axis_b_tvalid:in std_logic
    );
end component;
signal m_axis_dout_tdata_net: std_logic_vector(79 downto 0) := (others=>'0');
signal m_axis_dout_tvalid: std_logic := '0';
signal s_axis_a_tdata_net: std_logic_vector(31 downto 0) := (others=>'0');
signal s_axis_b_tdata_net: std_logic_vector(31 downto 0) := (others=>'0');
begin
  p_im <= m_axis_dout_tdata_net(72 downto 40);
  p_re <= m_axis_dout_tdata_net(32 downto 0);
  s_axis_a_tdata_net(31 downto 16) <= a_im;
  s_axis_a_tdata_net(15 downto 0) <= a_re;
  s_axis_b_tdata_net(31 downto 16) <= b_im;
  s_axis_b_tdata_net(15 downto 0) <= b_re;
  iq_product_cmpy_v6_0_i0_instance : iq_product_cmpy_v6_0_i0
    port map(
      aclk=>clk,
      aclken=>ce,
      m_axis_dout_tdata=>m_axis_dout_tdata_net,
      m_axis_dout_tvalid=>m_axis_dout_tvalid,
      s_axis_a_tdata=>s_axis_a_tdata_net,
      s_axis_a_tvalid=>ce,
      s_axis_b_tdata=>s_axis_b_tdata_net,
      s_axis_b_tvalid=>ce
    );
end behavior;



