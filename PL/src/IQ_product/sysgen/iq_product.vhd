-- Generated from Simulink block MVDR_BLOCK_old/IQ_product_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity iq_product_struct is
  port (
    i1 : in std_logic_vector( 16-1 downto 0 );
    i2 : in std_logic_vector( 16-1 downto 0 );
    i3 : in std_logic_vector( 16-1 downto 0 );
    i4 : in std_logic_vector( 16-1 downto 0 );
    q1 : in std_logic_vector( 16-1 downto 0 );
    q2 : in std_logic_vector( 16-1 downto 0 );
    q3 : in std_logic_vector( 16-1 downto 0 );
    q4 : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
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
end iq_product_struct;
architecture structural of iq_product_struct is 
  signal product5_p_im_net : std_logic_vector( 33-1 downto 0 );
  signal product6_p_re_net : std_logic_vector( 33-1 downto 0 );
  signal product_p_re_net : std_logic_vector( 33-1 downto 0 );
  signal product5_p_re_net : std_logic_vector( 33-1 downto 0 );
  signal product_p_im_net : std_logic_vector( 33-1 downto 0 );
  signal product7_p_re_net : std_logic_vector( 33-1 downto 0 );
  signal product6_p_im_net : std_logic_vector( 33-1 downto 0 );
  signal product9_p_re_net : std_logic_vector( 33-1 downto 0 );
  signal product1_p_im_net : std_logic_vector( 33-1 downto 0 );
  signal product2_p_im_net : std_logic_vector( 33-1 downto 0 );
  signal product7_p_im_net : std_logic_vector( 33-1 downto 0 );
  signal product8_p_re_net : std_logic_vector( 33-1 downto 0 );
  signal i1_net : std_logic_vector( 16-1 downto 0 );
  signal i3_net : std_logic_vector( 16-1 downto 0 );
  signal i4_net : std_logic_vector( 16-1 downto 0 );
  signal q1_net : std_logic_vector( 16-1 downto 0 );
  signal product1_p_re_net : std_logic_vector( 33-1 downto 0 );
  signal product2_p_re_net : std_logic_vector( 33-1 downto 0 );
  signal product3_p_re_net : std_logic_vector( 33-1 downto 0 );
  signal q2_net : std_logic_vector( 16-1 downto 0 );
  signal product8_p_im_net : std_logic_vector( 33-1 downto 0 );
  signal product9_p_im_net : std_logic_vector( 33-1 downto 0 );
  signal q4_net : std_logic_vector( 16-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal product4_p_im_net : std_logic_vector( 33-1 downto 0 );
  signal i2_net : std_logic_vector( 16-1 downto 0 );
  signal q3_net : std_logic_vector( 16-1 downto 0 );
  signal product3_p_im_net : std_logic_vector( 33-1 downto 0 );
  signal product4_p_re_net : std_logic_vector( 33-1 downto 0 );
begin
  gateway_out <= product_p_re_net;
  gateway_out1 <= product_p_im_net;
  gateway_out10 <= product5_p_re_net;
  gateway_out11 <= product5_p_im_net;
  gateway_out12 <= product6_p_re_net;
  gateway_out13 <= product6_p_im_net;
  gateway_out14 <= product7_p_re_net;
  gateway_out15 <= product7_p_im_net;
  gateway_out16 <= product8_p_re_net;
  gateway_out17 <= product8_p_im_net;
  gateway_out18 <= product9_p_re_net;
  gateway_out19 <= product9_p_im_net;
  gateway_out2 <= product1_p_re_net;
  gateway_out3 <= product1_p_im_net;
  gateway_out4 <= product2_p_re_net;
  gateway_out5 <= product2_p_im_net;
  gateway_out6 <= product3_p_re_net;
  gateway_out7 <= product3_p_im_net;
  gateway_out8 <= product4_p_re_net;
  gateway_out9 <= product4_p_im_net;
  i1_net <= i1;
  i2_net <= i2;
  i3_net <= i3;
  i4_net <= i4;
  q1_net <= q1;
  q2_net <= q2;
  q3_net <= q3;
  q4_net <= q4;
  clk_net <= clk_1;
  ce_net <= ce_1;
  product : entity xil_defaultlib.xliq_product_cmpy_v6_0_i0_75a95789294401c6275e6f76e5ded920 
  port map (
    a_re => i1_net,
    a_im => q1_net,
    b_re => i1_net,
    b_im => q1_net,
    clk => clk_net,
    ce => ce_net,
    p_re => product_p_re_net,
    p_im => product_p_im_net
  );
  product1 : entity xil_defaultlib.xliq_product_cmpy_v6_0_i0_75a95789294401c6275e6f76e5ded920 
  port map (
    a_re => i1_net,
    a_im => q1_net,
    b_re => i2_net,
    b_im => q2_net,
    clk => clk_net,
    ce => ce_net,
    p_re => product1_p_re_net,
    p_im => product1_p_im_net
  );
  product2 : entity xil_defaultlib.xliq_product_cmpy_v6_0_i0_75a95789294401c6275e6f76e5ded920 
  port map (
    a_re => i1_net,
    a_im => q1_net,
    b_re => i3_net,
    b_im => q3_net,
    clk => clk_net,
    ce => ce_net,
    p_re => product2_p_re_net,
    p_im => product2_p_im_net
  );
  product3 : entity xil_defaultlib.xliq_product_cmpy_v6_0_i0_75a95789294401c6275e6f76e5ded920 
  port map (
    a_re => i1_net,
    a_im => q1_net,
    b_re => i4_net,
    b_im => q4_net,
    clk => clk_net,
    ce => ce_net,
    p_re => product3_p_re_net,
    p_im => product3_p_im_net
  );
  product4 : entity xil_defaultlib.xliq_product_cmpy_v6_0_i0_75a95789294401c6275e6f76e5ded920 
  port map (
    a_re => i2_net,
    a_im => q2_net,
    b_re => i2_net,
    b_im => q2_net,
    clk => clk_net,
    ce => ce_net,
    p_re => product4_p_re_net,
    p_im => product4_p_im_net
  );
  product5 : entity xil_defaultlib.xliq_product_cmpy_v6_0_i0_75a95789294401c6275e6f76e5ded920 
  port map (
    a_re => i2_net,
    a_im => q2_net,
    b_re => i3_net,
    b_im => q3_net,
    clk => clk_net,
    ce => ce_net,
    p_re => product5_p_re_net,
    p_im => product5_p_im_net
  );
  product6 : entity xil_defaultlib.xliq_product_cmpy_v6_0_i0_75a95789294401c6275e6f76e5ded920 
  port map (
    a_re => i2_net,
    a_im => q2_net,
    b_re => i4_net,
    b_im => q4_net,
    clk => clk_net,
    ce => ce_net,
    p_re => product6_p_re_net,
    p_im => product6_p_im_net
  );
  product7 : entity xil_defaultlib.xliq_product_cmpy_v6_0_i0_75a95789294401c6275e6f76e5ded920 
  port map (
    a_re => i3_net,
    a_im => q3_net,
    b_re => i3_net,
    b_im => q3_net,
    clk => clk_net,
    ce => ce_net,
    p_re => product7_p_re_net,
    p_im => product7_p_im_net
  );
  product8 : entity xil_defaultlib.xliq_product_cmpy_v6_0_i0_75a95789294401c6275e6f76e5ded920 
  port map (
    a_re => i3_net,
    a_im => q3_net,
    b_re => i4_net,
    b_im => q4_net,
    clk => clk_net,
    ce => ce_net,
    p_re => product8_p_re_net,
    p_im => product8_p_im_net
  );
  product9 : entity xil_defaultlib.xliq_product_cmpy_v6_0_i0_75a95789294401c6275e6f76e5ded920 
  port map (
    a_re => i4_net,
    a_im => q4_net,
    b_re => i4_net,
    b_im => q4_net,
    clk => clk_net,
    ce => ce_net,
    p_re => product9_p_re_net,
    p_im => product9_p_im_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity iq_product_default_clock_driver is
  port (
    iq_product_sysclk : in std_logic;
    iq_product_sysce : in std_logic;
    iq_product_sysclr : in std_logic;
    iq_product_clk1 : out std_logic;
    iq_product_ce1 : out std_logic
  );
end iq_product_default_clock_driver;
architecture structural of iq_product_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => iq_product_sysclk,
    sysce => iq_product_sysce,
    sysclr => iq_product_sysclr,
    clk => iq_product_clk1,
    ce => iq_product_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity iq_product is
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
end iq_product;
architecture structural of iq_product is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "iq_product,sysgen_core_2022_2,{,compilation=IP Catalog,block_icon_display=Default,family=zynquplusRFSOC,part=xczu48dr,speed=-2-e,package=ffvg1517,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=10,system_simulink_period=1,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=10,product_macro=10,}";
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
begin
  iq_product_default_clock_driver : entity xil_defaultlib.iq_product_default_clock_driver 
  port map (
    iq_product_sysclk => clk,
    iq_product_sysce => '1',
    iq_product_sysclr => '0',
    iq_product_clk1 => clk_1_net,
    iq_product_ce1 => ce_1_net
  );
  iq_product_struct : entity xil_defaultlib.iq_product_struct 
  port map (
    i1 => i1,
    i2 => i2,
    i3 => i3,
    i4 => i4,
    q1 => q1,
    q2 => q2,
    q3 => q3,
    q4 => q4,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
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
