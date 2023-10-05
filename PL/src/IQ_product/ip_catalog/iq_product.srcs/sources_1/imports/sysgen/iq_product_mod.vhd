-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity iq_product_stub is
  port (
    i1 : in std_logic_vector( 16-1 downto 0 );
    i2 : in std_logic_vector( 16-1 downto 0 );
    i3 : in std_logic_vector( 16-1 downto 0 );
    i4 : in std_logic_vector( 16-1 downto 0 );
    q1 : in std_logic_vector( 16-1 downto 0 );
    q2 : in std_logic_vector( 16-1 downto 0 );
    q3 : in std_logic_vector( 16-1 downto 0 );
    q4 : in std_logic_vector( 16-1 downto 0 );
    clk : in std_logic;
    gateway_out : out std_logic_vector( 33-1 downto 0 );
    gateway_out1 : out std_logic_vector( 33-1 downto 0 );
    gateway_out10 : out std_logic_vector( 33-1 downto 0 );
    gateway_out11 : out std_logic_vector( 33-1 downto 0 );
    gateway_out12 : out std_logic_vector( 33-1 downto 0 );
    gateway_out13 : out std_logic_vector( 33-1 downto 0 );
    gateway_out14 : out std_logic_vector( 33-1 downto 0 );
    gateway_out15 : out std_logic_vector( 33-1 downto 0 );
    gateway_out16 : out std_logic_vector( 33-1 downto 0 );
    gateway_out17 : out std_logic_vector( 33-1 downto 0 );
    gateway_out18 : out std_logic_vector( 33-1 downto 0 );
    gateway_out19 : out std_logic_vector( 33-1 downto 0 );
    gateway_out2 : out std_logic_vector( 33-1 downto 0 );
    gateway_out3 : out std_logic_vector( 33-1 downto 0 );
    gateway_out4 : out std_logic_vector( 33-1 downto 0 );
    gateway_out5 : out std_logic_vector( 33-1 downto 0 );
    gateway_out6 : out std_logic_vector( 33-1 downto 0 );
    gateway_out7 : out std_logic_vector( 33-1 downto 0 );
    gateway_out8 : out std_logic_vector( 33-1 downto 0 );
    gateway_out9 : out std_logic_vector( 33-1 downto 0 )
  );
end iq_product_stub;
architecture structural of iq_product_stub is 
begin
  sysgen_dut : entity xil_defaultlib.iq_product 
  port map (
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
end structural;
