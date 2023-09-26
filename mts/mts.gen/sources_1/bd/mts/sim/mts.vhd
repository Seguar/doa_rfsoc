--Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2.2 (win64) Build 3788238 Tue Feb 21 20:00:34 MST 2023
--Date        : Thu Jul  6 18:20:02 2023
--Host        : Sega running 64-bit major release  (build 9200)
--Command     : generate_target mts.bd
--Design      : mts
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clocktreeMTS_imp_ZMYI0T is
  port (
    PL_CLK : in STD_LOGIC_VECTOR ( 0 to 0 );
    PL_SYSREF : in STD_LOGIC_VECTOR ( 0 to 0 );
    UserSYSREF : out STD_LOGIC_VECTOR ( 0 to 0 );
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    clkRF : out STD_LOGIC;
    clkRFdiv2 : out STD_LOGIC;
    egress_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    ext_reset_in : in STD_LOGIC;
    ingress_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    interrupt : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_lite_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_lite_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_lite_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_lite_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_lite_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_lite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end clocktreeMTS_imp_ZMYI0T;

architecture STRUCTURE of clocktreeMTS_imp_ZMYI0T is
  component mts_BUFG_PL_CLK_0 is
  port (
    BUFG_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_O : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component mts_BUFG_PL_CLK_0;
  component mts_MTSclkwiz_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ref_clk : in STD_LOGIC;
    clk_stop : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_glitch : out STD_LOGIC_VECTOR ( 3 downto 0 );
    interrupt : out STD_LOGIC;
    clk_oor : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component mts_MTSclkwiz_0;
  component mts_PSreset_control_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component mts_PSreset_control_0;
  component mts_RFegressReset_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component mts_RFegressReset_0;
  component mts_RFingressReset_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component mts_RFingressReset_0;
  component mts_synchronizeSYSREF_0 is
  port (
    src_clk : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    src_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    dest_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component mts_synchronizeSYSREF_0;
  signal BUFG_I_0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal MTSclkwiz_interrupt : STD_LOGIC;
  signal PSreset_control_bus_struct_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal RFegressReset_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal RFingressReset_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal clk_wiz_0_locked : STD_LOGIC;
  signal clk_wiz_adc0_clk_out2 : STD_LOGIC;
  signal control_interconnect_M07_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal control_interconnect_M07_AXI_ARREADY : STD_LOGIC;
  signal control_interconnect_M07_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal control_interconnect_M07_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal control_interconnect_M07_AXI_AWREADY : STD_LOGIC;
  signal control_interconnect_M07_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal control_interconnect_M07_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal control_interconnect_M07_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_interconnect_M07_AXI_BVALID : STD_LOGIC;
  signal control_interconnect_M07_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal control_interconnect_M07_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal control_interconnect_M07_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_interconnect_M07_AXI_RVALID : STD_LOGIC;
  signal control_interconnect_M07_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal control_interconnect_M07_AXI_WREADY : STD_LOGIC;
  signal control_interconnect_M07_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal control_interconnect_M07_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal src_in_0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal synchronizeSYSREF_dest_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_0_BUFG_O : STD_LOGIC_VECTOR ( 0 to 0 );
  signal zynq_ultra_ps_e_0_pl_clk0 : STD_LOGIC;
  signal zynq_ultra_ps_e_0_pl_resetn0 : STD_LOGIC;
  signal NLW_MTSclkwiz_clk_glitch_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_MTSclkwiz_clk_oor_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_MTSclkwiz_clk_stop_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_PSreset_control_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_PSreset_control_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_PSreset_control_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_RFegressReset_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_RFegressReset_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_RFegressReset_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_RFegressReset_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_RFingressReset_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_RFingressReset_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_RFingressReset_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_RFingressReset_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  BUFG_I_0_1(0) <= PL_CLK(0);
  UserSYSREF(0) <= synchronizeSYSREF_dest_out(0);
  bus_struct_reset(0) <= PSreset_control_bus_struct_reset(0);
  clkRF <= clk_wiz_0_clk_out1;
  clkRFdiv2 <= clk_wiz_adc0_clk_out2;
  control_interconnect_M07_AXI_ARADDR(39 downto 0) <= s_axi_lite_araddr(39 downto 0);
  control_interconnect_M07_AXI_ARVALID(0) <= s_axi_lite_arvalid(0);
  control_interconnect_M07_AXI_AWADDR(39 downto 0) <= s_axi_lite_awaddr(39 downto 0);
  control_interconnect_M07_AXI_AWVALID(0) <= s_axi_lite_awvalid(0);
  control_interconnect_M07_AXI_BREADY(0) <= s_axi_lite_bready(0);
  control_interconnect_M07_AXI_RREADY(0) <= s_axi_lite_rready(0);
  control_interconnect_M07_AXI_WDATA(31 downto 0) <= s_axi_lite_wdata(31 downto 0);
  control_interconnect_M07_AXI_WSTRB(3 downto 0) <= s_axi_lite_wstrb(3 downto 0);
  control_interconnect_M07_AXI_WVALID(0) <= s_axi_lite_wvalid(0);
  egress_aresetn(0) <= RFegressReset_peripheral_aresetn(0);
  ingress_aresetn(0) <= RFingressReset_peripheral_aresetn(0);
  interrupt <= MTSclkwiz_interrupt;
  s_axi_aresetn(0) <= proc_sys_reset_0_peripheral_aresetn(0);
  s_axi_lite_arready(0) <= control_interconnect_M07_AXI_ARREADY;
  s_axi_lite_awready(0) <= control_interconnect_M07_AXI_AWREADY;
  s_axi_lite_bresp(1 downto 0) <= control_interconnect_M07_AXI_BRESP(1 downto 0);
  s_axi_lite_bvalid(0) <= control_interconnect_M07_AXI_BVALID;
  s_axi_lite_rdata(31 downto 0) <= control_interconnect_M07_AXI_RDATA(31 downto 0);
  s_axi_lite_rresp(1 downto 0) <= control_interconnect_M07_AXI_RRESP(1 downto 0);
  s_axi_lite_rvalid(0) <= control_interconnect_M07_AXI_RVALID;
  s_axi_lite_wready(0) <= control_interconnect_M07_AXI_WREADY;
  src_in_0_1(0) <= PL_SYSREF(0);
  zynq_ultra_ps_e_0_pl_clk0 <= s_axi_aclk;
  zynq_ultra_ps_e_0_pl_resetn0 <= ext_reset_in;
BUFG_PL_CLK: component mts_BUFG_PL_CLK_0
     port map (
      BUFG_I(0) => BUFG_I_0_1(0),
      BUFG_O(0) => util_ds_buf_0_BUFG_O(0)
    );
MTSclkwiz: component mts_MTSclkwiz_0
     port map (
      clk_glitch(3 downto 0) => NLW_MTSclkwiz_clk_glitch_UNCONNECTED(3 downto 0),
      clk_in1 => util_ds_buf_0_BUFG_O(0),
      clk_oor(3 downto 0) => NLW_MTSclkwiz_clk_oor_UNCONNECTED(3 downto 0),
      clk_out1 => clk_wiz_0_clk_out1,
      clk_out2 => clk_wiz_adc0_clk_out2,
      clk_stop(3 downto 0) => NLW_MTSclkwiz_clk_stop_UNCONNECTED(3 downto 0),
      interrupt => MTSclkwiz_interrupt,
      locked => clk_wiz_0_locked,
      ref_clk => zynq_ultra_ps_e_0_pl_clk0,
      s_axi_aclk => zynq_ultra_ps_e_0_pl_clk0,
      s_axi_araddr(10 downto 0) => control_interconnect_M07_AXI_ARADDR(10 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s_axi_arready => control_interconnect_M07_AXI_ARREADY,
      s_axi_arvalid => control_interconnect_M07_AXI_ARVALID(0),
      s_axi_awaddr(10 downto 0) => control_interconnect_M07_AXI_AWADDR(10 downto 0),
      s_axi_awready => control_interconnect_M07_AXI_AWREADY,
      s_axi_awvalid => control_interconnect_M07_AXI_AWVALID(0),
      s_axi_bready => control_interconnect_M07_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => control_interconnect_M07_AXI_BRESP(1 downto 0),
      s_axi_bvalid => control_interconnect_M07_AXI_BVALID,
      s_axi_rdata(31 downto 0) => control_interconnect_M07_AXI_RDATA(31 downto 0),
      s_axi_rready => control_interconnect_M07_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => control_interconnect_M07_AXI_RRESP(1 downto 0),
      s_axi_rvalid => control_interconnect_M07_AXI_RVALID,
      s_axi_wdata(31 downto 0) => control_interconnect_M07_AXI_WDATA(31 downto 0),
      s_axi_wready => control_interconnect_M07_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => control_interconnect_M07_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => control_interconnect_M07_AXI_WVALID(0)
    );
PSreset_control: component mts_PSreset_control_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => PSreset_control_bus_struct_reset(0),
      dcm_locked => '1',
      ext_reset_in => zynq_ultra_ps_e_0_pl_resetn0,
      interconnect_aresetn(0) => NLW_PSreset_control_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_PSreset_control_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_0_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_PSreset_control_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => zynq_ultra_ps_e_0_pl_clk0
    );
RFegressReset: component mts_RFegressReset_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_RFegressReset_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_0_locked,
      ext_reset_in => zynq_ultra_ps_e_0_pl_resetn0,
      interconnect_aresetn(0) => NLW_RFegressReset_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_RFegressReset_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => RFegressReset_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_RFegressReset_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clk_wiz_adc0_clk_out2
    );
RFingressReset: component mts_RFingressReset_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_RFingressReset_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_0_locked,
      ext_reset_in => proc_sys_reset_0_peripheral_aresetn(0),
      interconnect_aresetn(0) => NLW_RFingressReset_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_RFingressReset_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => RFingressReset_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_RFingressReset_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clk_wiz_0_clk_out1
    );
synchronizeSYSREF: component mts_synchronizeSYSREF_0
     port map (
      dest_clk => clk_wiz_0_clk_out1,
      dest_out(0) => synchronizeSYSREF_dest_out(0),
      src_clk => util_ds_buf_0_BUFG_O(0),
      src_in(0) => src_in_0_1(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gpio_control_imp_1VWM5ZY is
  port (
    S_AXI1_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI1_arready : out STD_LOGIC;
    S_AXI1_arvalid : in STD_LOGIC;
    S_AXI1_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI1_awready : out STD_LOGIC;
    S_AXI1_awvalid : in STD_LOGIC;
    S_AXI1_bready : in STD_LOGIC;
    S_AXI1_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI1_bvalid : out STD_LOGIC;
    S_AXI1_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI1_rready : in STD_LOGIC;
    S_AXI1_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI1_rvalid : out STD_LOGIC;
    S_AXI1_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI1_wready : out STD_LOGIC;
    S_AXI1_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI1_wvalid : in STD_LOGIC;
    S_AXI2_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI2_arready : out STD_LOGIC;
    S_AXI2_arvalid : in STD_LOGIC;
    S_AXI2_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI2_awready : out STD_LOGIC;
    S_AXI2_awvalid : in STD_LOGIC;
    S_AXI2_bready : in STD_LOGIC;
    S_AXI2_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI2_bvalid : out STD_LOGIC;
    S_AXI2_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI2_rready : in STD_LOGIC;
    S_AXI2_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI2_rvalid : out STD_LOGIC;
    S_AXI2_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI2_wready : out STD_LOGIC;
    S_AXI2_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI2_wvalid : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC;
    dac_enable : out STD_LOGIC_VECTOR ( 0 to 0 );
    dest_clk : in STD_LOGIC;
    fifoflush : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    trig_cap : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end gpio_control_imp_1VWM5ZY;

architecture STRUCTURE of gpio_control_imp_1VWM5ZY is
  component mts_axi_gpio_bram_adc_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component mts_axi_gpio_bram_adc_0;
  component mts_axi_gpio_dac_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component mts_axi_gpio_dac_0;
  component mts_axi_gpio_fifoflush_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component mts_axi_gpio_fifoflush_0;
  component mts_xpm_cdc_gen_0_0 is
  port (
    src_clk : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    src_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    dest_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component mts_xpm_cdc_gen_0_0;
  signal axi_gpio_bram_cap_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_gpio_dac_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_gpio_fifo_flush_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal control_interconnect_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal control_interconnect_M04_AXI_ARREADY : STD_LOGIC;
  signal control_interconnect_M04_AXI_ARVALID : STD_LOGIC;
  signal control_interconnect_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal control_interconnect_M04_AXI_AWREADY : STD_LOGIC;
  signal control_interconnect_M04_AXI_AWVALID : STD_LOGIC;
  signal control_interconnect_M04_AXI_BREADY : STD_LOGIC;
  signal control_interconnect_M04_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_interconnect_M04_AXI_BVALID : STD_LOGIC;
  signal control_interconnect_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal control_interconnect_M04_AXI_RREADY : STD_LOGIC;
  signal control_interconnect_M04_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_interconnect_M04_AXI_RVALID : STD_LOGIC;
  signal control_interconnect_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal control_interconnect_M04_AXI_WREADY : STD_LOGIC;
  signal control_interconnect_M04_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal control_interconnect_M04_AXI_WVALID : STD_LOGIC;
  signal control_interconnect_M05_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal control_interconnect_M05_AXI_ARREADY : STD_LOGIC;
  signal control_interconnect_M05_AXI_ARVALID : STD_LOGIC;
  signal control_interconnect_M05_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal control_interconnect_M05_AXI_AWREADY : STD_LOGIC;
  signal control_interconnect_M05_AXI_AWVALID : STD_LOGIC;
  signal control_interconnect_M05_AXI_BREADY : STD_LOGIC;
  signal control_interconnect_M05_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_interconnect_M05_AXI_BVALID : STD_LOGIC;
  signal control_interconnect_M05_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal control_interconnect_M05_AXI_RREADY : STD_LOGIC;
  signal control_interconnect_M05_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_interconnect_M05_AXI_RVALID : STD_LOGIC;
  signal control_interconnect_M05_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal control_interconnect_M05_AXI_WREADY : STD_LOGIC;
  signal control_interconnect_M05_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal control_interconnect_M05_AXI_WVALID : STD_LOGIC;
  signal control_interconnect_M06_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal control_interconnect_M06_AXI_ARREADY : STD_LOGIC;
  signal control_interconnect_M06_AXI_ARVALID : STD_LOGIC;
  signal control_interconnect_M06_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal control_interconnect_M06_AXI_AWREADY : STD_LOGIC;
  signal control_interconnect_M06_AXI_AWVALID : STD_LOGIC;
  signal control_interconnect_M06_AXI_BREADY : STD_LOGIC;
  signal control_interconnect_M06_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_interconnect_M06_AXI_BVALID : STD_LOGIC;
  signal control_interconnect_M06_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal control_interconnect_M06_AXI_RREADY : STD_LOGIC;
  signal control_interconnect_M06_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_interconnect_M06_AXI_RVALID : STD_LOGIC;
  signal control_interconnect_M06_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal control_interconnect_M06_AXI_WREADY : STD_LOGIC;
  signal control_interconnect_M06_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal control_interconnect_M06_AXI_WVALID : STD_LOGIC;
  signal dest_clk_1 : STD_LOGIC;
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC;
  signal xpm_cdc_gen_0_dest_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal zynq_ultra_ps_e_0_pl_clk0 : STD_LOGIC;
begin
  S_AXI1_arready <= control_interconnect_M05_AXI_ARREADY;
  S_AXI1_awready <= control_interconnect_M05_AXI_AWREADY;
  S_AXI1_bresp(1 downto 0) <= control_interconnect_M05_AXI_BRESP(1 downto 0);
  S_AXI1_bvalid <= control_interconnect_M05_AXI_BVALID;
  S_AXI1_rdata(31 downto 0) <= control_interconnect_M05_AXI_RDATA(31 downto 0);
  S_AXI1_rresp(1 downto 0) <= control_interconnect_M05_AXI_RRESP(1 downto 0);
  S_AXI1_rvalid <= control_interconnect_M05_AXI_RVALID;
  S_AXI1_wready <= control_interconnect_M05_AXI_WREADY;
  S_AXI2_arready <= control_interconnect_M06_AXI_ARREADY;
  S_AXI2_awready <= control_interconnect_M06_AXI_AWREADY;
  S_AXI2_bresp(1 downto 0) <= control_interconnect_M06_AXI_BRESP(1 downto 0);
  S_AXI2_bvalid <= control_interconnect_M06_AXI_BVALID;
  S_AXI2_rdata(31 downto 0) <= control_interconnect_M06_AXI_RDATA(31 downto 0);
  S_AXI2_rresp(1 downto 0) <= control_interconnect_M06_AXI_RRESP(1 downto 0);
  S_AXI2_rvalid <= control_interconnect_M06_AXI_RVALID;
  S_AXI2_wready <= control_interconnect_M06_AXI_WREADY;
  S_AXI_arready <= control_interconnect_M04_AXI_ARREADY;
  S_AXI_awready <= control_interconnect_M04_AXI_AWREADY;
  S_AXI_bresp(1 downto 0) <= control_interconnect_M04_AXI_BRESP(1 downto 0);
  S_AXI_bvalid <= control_interconnect_M04_AXI_BVALID;
  S_AXI_rdata(31 downto 0) <= control_interconnect_M04_AXI_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= control_interconnect_M04_AXI_RRESP(1 downto 0);
  S_AXI_rvalid <= control_interconnect_M04_AXI_RVALID;
  S_AXI_wready <= control_interconnect_M04_AXI_WREADY;
  control_interconnect_M04_AXI_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  control_interconnect_M04_AXI_ARVALID <= S_AXI_arvalid;
  control_interconnect_M04_AXI_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  control_interconnect_M04_AXI_AWVALID <= S_AXI_awvalid;
  control_interconnect_M04_AXI_BREADY <= S_AXI_bready;
  control_interconnect_M04_AXI_RREADY <= S_AXI_rready;
  control_interconnect_M04_AXI_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  control_interconnect_M04_AXI_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  control_interconnect_M04_AXI_WVALID <= S_AXI_wvalid;
  control_interconnect_M05_AXI_ARADDR(39 downto 0) <= S_AXI1_araddr(39 downto 0);
  control_interconnect_M05_AXI_ARVALID <= S_AXI1_arvalid;
  control_interconnect_M05_AXI_AWADDR(39 downto 0) <= S_AXI1_awaddr(39 downto 0);
  control_interconnect_M05_AXI_AWVALID <= S_AXI1_awvalid;
  control_interconnect_M05_AXI_BREADY <= S_AXI1_bready;
  control_interconnect_M05_AXI_RREADY <= S_AXI1_rready;
  control_interconnect_M05_AXI_WDATA(31 downto 0) <= S_AXI1_wdata(31 downto 0);
  control_interconnect_M05_AXI_WSTRB(3 downto 0) <= S_AXI1_wstrb(3 downto 0);
  control_interconnect_M05_AXI_WVALID <= S_AXI1_wvalid;
  control_interconnect_M06_AXI_ARADDR(39 downto 0) <= S_AXI2_araddr(39 downto 0);
  control_interconnect_M06_AXI_ARVALID <= S_AXI2_arvalid;
  control_interconnect_M06_AXI_AWADDR(39 downto 0) <= S_AXI2_awaddr(39 downto 0);
  control_interconnect_M06_AXI_AWVALID <= S_AXI2_awvalid;
  control_interconnect_M06_AXI_BREADY <= S_AXI2_bready;
  control_interconnect_M06_AXI_RREADY <= S_AXI2_rready;
  control_interconnect_M06_AXI_WDATA(31 downto 0) <= S_AXI2_wdata(31 downto 0);
  control_interconnect_M06_AXI_WSTRB(3 downto 0) <= S_AXI2_wstrb(3 downto 0);
  control_interconnect_M06_AXI_WVALID <= S_AXI2_wvalid;
  dac_enable(0) <= axi_gpio_dac_gpio_io_o(0);
  dest_clk_1 <= dest_clk;
  fifoflush(0) <= axi_gpio_fifo_flush_gpio_io_o(0);
  proc_sys_reset_0_peripheral_aresetn <= s_axi_aresetn;
  trig_cap(0) <= xpm_cdc_gen_0_dest_out(0);
  zynq_ultra_ps_e_0_pl_clk0 <= s_axi_aclk;
axi_gpio_bram_adc: component mts_axi_gpio_bram_adc_0
     port map (
      gpio_io_o(0) => axi_gpio_bram_cap_gpio_io_o(0),
      s_axi_aclk => zynq_ultra_ps_e_0_pl_clk0,
      s_axi_araddr(8 downto 0) => control_interconnect_M06_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn,
      s_axi_arready => control_interconnect_M06_AXI_ARREADY,
      s_axi_arvalid => control_interconnect_M06_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => control_interconnect_M06_AXI_AWADDR(8 downto 0),
      s_axi_awready => control_interconnect_M06_AXI_AWREADY,
      s_axi_awvalid => control_interconnect_M06_AXI_AWVALID,
      s_axi_bready => control_interconnect_M06_AXI_BREADY,
      s_axi_bresp(1 downto 0) => control_interconnect_M06_AXI_BRESP(1 downto 0),
      s_axi_bvalid => control_interconnect_M06_AXI_BVALID,
      s_axi_rdata(31 downto 0) => control_interconnect_M06_AXI_RDATA(31 downto 0),
      s_axi_rready => control_interconnect_M06_AXI_RREADY,
      s_axi_rresp(1 downto 0) => control_interconnect_M06_AXI_RRESP(1 downto 0),
      s_axi_rvalid => control_interconnect_M06_AXI_RVALID,
      s_axi_wdata(31 downto 0) => control_interconnect_M06_AXI_WDATA(31 downto 0),
      s_axi_wready => control_interconnect_M06_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => control_interconnect_M06_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => control_interconnect_M06_AXI_WVALID
    );
axi_gpio_dac: component mts_axi_gpio_dac_0
     port map (
      gpio_io_o(0) => axi_gpio_dac_gpio_io_o(0),
      s_axi_aclk => zynq_ultra_ps_e_0_pl_clk0,
      s_axi_araddr(8 downto 0) => control_interconnect_M04_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn,
      s_axi_arready => control_interconnect_M04_AXI_ARREADY,
      s_axi_arvalid => control_interconnect_M04_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => control_interconnect_M04_AXI_AWADDR(8 downto 0),
      s_axi_awready => control_interconnect_M04_AXI_AWREADY,
      s_axi_awvalid => control_interconnect_M04_AXI_AWVALID,
      s_axi_bready => control_interconnect_M04_AXI_BREADY,
      s_axi_bresp(1 downto 0) => control_interconnect_M04_AXI_BRESP(1 downto 0),
      s_axi_bvalid => control_interconnect_M04_AXI_BVALID,
      s_axi_rdata(31 downto 0) => control_interconnect_M04_AXI_RDATA(31 downto 0),
      s_axi_rready => control_interconnect_M04_AXI_RREADY,
      s_axi_rresp(1 downto 0) => control_interconnect_M04_AXI_RRESP(1 downto 0),
      s_axi_rvalid => control_interconnect_M04_AXI_RVALID,
      s_axi_wdata(31 downto 0) => control_interconnect_M04_AXI_WDATA(31 downto 0),
      s_axi_wready => control_interconnect_M04_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => control_interconnect_M04_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => control_interconnect_M04_AXI_WVALID
    );
axi_gpio_fifoflush: component mts_axi_gpio_fifoflush_0
     port map (
      gpio_io_o(0) => axi_gpio_fifo_flush_gpio_io_o(0),
      s_axi_aclk => zynq_ultra_ps_e_0_pl_clk0,
      s_axi_araddr(8 downto 0) => control_interconnect_M05_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn,
      s_axi_arready => control_interconnect_M05_AXI_ARREADY,
      s_axi_arvalid => control_interconnect_M05_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => control_interconnect_M05_AXI_AWADDR(8 downto 0),
      s_axi_awready => control_interconnect_M05_AXI_AWREADY,
      s_axi_awvalid => control_interconnect_M05_AXI_AWVALID,
      s_axi_bready => control_interconnect_M05_AXI_BREADY,
      s_axi_bresp(1 downto 0) => control_interconnect_M05_AXI_BRESP(1 downto 0),
      s_axi_bvalid => control_interconnect_M05_AXI_BVALID,
      s_axi_rdata(31 downto 0) => control_interconnect_M05_AXI_RDATA(31 downto 0),
      s_axi_rready => control_interconnect_M05_AXI_RREADY,
      s_axi_rresp(1 downto 0) => control_interconnect_M05_AXI_RRESP(1 downto 0),
      s_axi_rvalid => control_interconnect_M05_AXI_RVALID,
      s_axi_wdata(31 downto 0) => control_interconnect_M05_AXI_WDATA(31 downto 0),
      s_axi_wready => control_interconnect_M05_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => control_interconnect_M05_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => control_interconnect_M05_AXI_WVALID
    );
xpm_cdc_gen_0: component mts_xpm_cdc_gen_0_0
     port map (
      dest_clk => dest_clk_1,
      dest_out(0) => xpm_cdc_gen_0_dest_out(0),
      src_clk => zynq_ultra_ps_e_0_pl_clk0,
      src_in(0) => axi_gpio_bram_cap_gpio_io_o(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_1UOYSZK is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_1UOYSZK;

architecture STRUCTURE of m00_couplers_imp_1UOYSZK is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(39 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(39 downto 0);
  M_AXI_arvalid <= m00_couplers_to_m00_couplers_ARVALID;
  M_AXI_awaddr(39 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(39 downto 0);
  M_AXI_awvalid <= m00_couplers_to_m00_couplers_AWVALID;
  M_AXI_bready <= m00_couplers_to_m00_couplers_BREADY;
  M_AXI_rready <= m00_couplers_to_m00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m00_couplers_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m00_couplers_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m00_couplers_to_m00_couplers_WVALID;
  S_AXI_arready <= m00_couplers_to_m00_couplers_ARREADY;
  S_AXI_awready <= m00_couplers_to_m00_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_m00_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_m00_couplers_RVALID;
  S_AXI_wready <= m00_couplers_to_m00_couplers_WREADY;
  m00_couplers_to_m00_couplers_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  m00_couplers_to_m00_couplers_ARREADY <= M_AXI_arready;
  m00_couplers_to_m00_couplers_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_m00_couplers_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  m00_couplers_to_m00_couplers_AWREADY <= M_AXI_awready;
  m00_couplers_to_m00_couplers_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_m00_couplers_BREADY <= S_AXI_bready;
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID <= M_AXI_bvalid;
  m00_couplers_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_couplers_to_m00_couplers_RREADY <= S_AXI_rready;
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID <= M_AXI_rvalid;
  m00_couplers_to_m00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_couplers_WREADY <= M_AXI_wready;
  m00_couplers_to_m00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_m00_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_CPC24L is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m01_couplers_imp_CPC24L;

architecture STRUCTURE of m01_couplers_imp_CPC24L is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARPROT : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWPROT : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= m01_couplers_to_m01_couplers_ARADDR;
  M_AXI_arprot <= m01_couplers_to_m01_couplers_ARPROT;
  M_AXI_arvalid <= m01_couplers_to_m01_couplers_ARVALID;
  M_AXI_awaddr <= m01_couplers_to_m01_couplers_AWADDR;
  M_AXI_awprot <= m01_couplers_to_m01_couplers_AWPROT;
  M_AXI_awvalid <= m01_couplers_to_m01_couplers_AWVALID;
  M_AXI_bready <= m01_couplers_to_m01_couplers_BREADY;
  M_AXI_rready <= m01_couplers_to_m01_couplers_RREADY;
  M_AXI_wdata <= m01_couplers_to_m01_couplers_WDATA;
  M_AXI_wstrb <= m01_couplers_to_m01_couplers_WSTRB;
  M_AXI_wvalid <= m01_couplers_to_m01_couplers_WVALID;
  S_AXI_arready <= m01_couplers_to_m01_couplers_ARREADY;
  S_AXI_awready <= m01_couplers_to_m01_couplers_AWREADY;
  S_AXI_bresp <= m01_couplers_to_m01_couplers_BRESP;
  S_AXI_bvalid <= m01_couplers_to_m01_couplers_BVALID;
  S_AXI_rdata <= m01_couplers_to_m01_couplers_RDATA;
  S_AXI_rresp <= m01_couplers_to_m01_couplers_RRESP;
  S_AXI_rvalid <= m01_couplers_to_m01_couplers_RVALID;
  S_AXI_wready <= m01_couplers_to_m01_couplers_WREADY;
  m01_couplers_to_m01_couplers_ARADDR <= S_AXI_araddr;
  m01_couplers_to_m01_couplers_ARPROT <= S_AXI_arprot;
  m01_couplers_to_m01_couplers_ARREADY <= M_AXI_arready;
  m01_couplers_to_m01_couplers_ARVALID <= S_AXI_arvalid;
  m01_couplers_to_m01_couplers_AWADDR <= S_AXI_awaddr;
  m01_couplers_to_m01_couplers_AWPROT <= S_AXI_awprot;
  m01_couplers_to_m01_couplers_AWREADY <= M_AXI_awready;
  m01_couplers_to_m01_couplers_AWVALID <= S_AXI_awvalid;
  m01_couplers_to_m01_couplers_BREADY <= S_AXI_bready;
  m01_couplers_to_m01_couplers_BRESP <= M_AXI_bresp;
  m01_couplers_to_m01_couplers_BVALID <= M_AXI_bvalid;
  m01_couplers_to_m01_couplers_RDATA <= M_AXI_rdata;
  m01_couplers_to_m01_couplers_RREADY <= S_AXI_rready;
  m01_couplers_to_m01_couplers_RRESP <= M_AXI_rresp;
  m01_couplers_to_m01_couplers_RVALID <= M_AXI_rvalid;
  m01_couplers_to_m01_couplers_WDATA <= S_AXI_wdata;
  m01_couplers_to_m01_couplers_WREADY <= M_AXI_wready;
  m01_couplers_to_m01_couplers_WSTRB <= S_AXI_wstrb;
  m01_couplers_to_m01_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_13YH53F is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m02_couplers_imp_13YH53F;

architecture STRUCTURE of m02_couplers_imp_13YH53F is
  signal m02_couplers_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m02_couplers_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m02_couplers_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(39 downto 0) <= m02_couplers_to_m02_couplers_ARADDR(39 downto 0);
  M_AXI_arvalid(0) <= m02_couplers_to_m02_couplers_ARVALID(0);
  M_AXI_awaddr(39 downto 0) <= m02_couplers_to_m02_couplers_AWADDR(39 downto 0);
  M_AXI_awvalid(0) <= m02_couplers_to_m02_couplers_AWVALID(0);
  M_AXI_bready(0) <= m02_couplers_to_m02_couplers_BREADY(0);
  M_AXI_rready(0) <= m02_couplers_to_m02_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m02_couplers_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m02_couplers_to_m02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m02_couplers_to_m02_couplers_WVALID(0);
  S_AXI_arready(0) <= m02_couplers_to_m02_couplers_ARREADY(0);
  S_AXI_awready(0) <= m02_couplers_to_m02_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_m02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m02_couplers_to_m02_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_m02_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_m02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m02_couplers_to_m02_couplers_RVALID(0);
  S_AXI_wready(0) <= m02_couplers_to_m02_couplers_WREADY(0);
  m02_couplers_to_m02_couplers_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  m02_couplers_to_m02_couplers_ARREADY(0) <= M_AXI_arready(0);
  m02_couplers_to_m02_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m02_couplers_to_m02_couplers_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  m02_couplers_to_m02_couplers_AWREADY(0) <= M_AXI_awready(0);
  m02_couplers_to_m02_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m02_couplers_to_m02_couplers_BREADY(0) <= S_AXI_bready(0);
  m02_couplers_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m02_couplers_to_m02_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m02_couplers_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m02_couplers_to_m02_couplers_RREADY(0) <= S_AXI_rready(0);
  m02_couplers_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m02_couplers_to_m02_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m02_couplers_to_m02_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_m02_couplers_WREADY(0) <= M_AXI_wready(0);
  m02_couplers_to_m02_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_m02_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m03_couplers_imp_LIX1FY is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m03_couplers_imp_LIX1FY;

architecture STRUCTURE of m03_couplers_imp_LIX1FY is
  signal m03_couplers_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m03_couplers_to_m03_couplers_ARREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_ARVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m03_couplers_to_m03_couplers_AWREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_BREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_BVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_RREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_RVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_WREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_m03_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(39 downto 0) <= m03_couplers_to_m03_couplers_ARADDR(39 downto 0);
  M_AXI_arvalid <= m03_couplers_to_m03_couplers_ARVALID;
  M_AXI_awaddr(39 downto 0) <= m03_couplers_to_m03_couplers_AWADDR(39 downto 0);
  M_AXI_awvalid <= m03_couplers_to_m03_couplers_AWVALID;
  M_AXI_bready <= m03_couplers_to_m03_couplers_BREADY;
  M_AXI_rready <= m03_couplers_to_m03_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m03_couplers_to_m03_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m03_couplers_to_m03_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m03_couplers_to_m03_couplers_WVALID;
  S_AXI_arready <= m03_couplers_to_m03_couplers_ARREADY;
  S_AXI_awready <= m03_couplers_to_m03_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m03_couplers_to_m03_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m03_couplers_to_m03_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m03_couplers_to_m03_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m03_couplers_to_m03_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m03_couplers_to_m03_couplers_RVALID;
  S_AXI_wready <= m03_couplers_to_m03_couplers_WREADY;
  m03_couplers_to_m03_couplers_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  m03_couplers_to_m03_couplers_ARREADY <= M_AXI_arready;
  m03_couplers_to_m03_couplers_ARVALID <= S_AXI_arvalid;
  m03_couplers_to_m03_couplers_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  m03_couplers_to_m03_couplers_AWREADY <= M_AXI_awready;
  m03_couplers_to_m03_couplers_AWVALID <= S_AXI_awvalid;
  m03_couplers_to_m03_couplers_BREADY <= S_AXI_bready;
  m03_couplers_to_m03_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m03_couplers_to_m03_couplers_BVALID <= M_AXI_bvalid;
  m03_couplers_to_m03_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m03_couplers_to_m03_couplers_RREADY <= S_AXI_rready;
  m03_couplers_to_m03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m03_couplers_to_m03_couplers_RVALID <= M_AXI_rvalid;
  m03_couplers_to_m03_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m03_couplers_to_m03_couplers_WREADY <= M_AXI_wready;
  m03_couplers_to_m03_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m03_couplers_to_m03_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m04_couplers_imp_DKHEXI is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m04_couplers_imp_DKHEXI;

architecture STRUCTURE of m04_couplers_imp_DKHEXI is
  signal m04_couplers_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m04_couplers_to_m04_couplers_ARREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_ARVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m04_couplers_to_m04_couplers_AWREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_BREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_BVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_RREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_RVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_WREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_m04_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(39 downto 0) <= m04_couplers_to_m04_couplers_ARADDR(39 downto 0);
  M_AXI_arvalid <= m04_couplers_to_m04_couplers_ARVALID;
  M_AXI_awaddr(39 downto 0) <= m04_couplers_to_m04_couplers_AWADDR(39 downto 0);
  M_AXI_awvalid <= m04_couplers_to_m04_couplers_AWVALID;
  M_AXI_bready <= m04_couplers_to_m04_couplers_BREADY;
  M_AXI_rready <= m04_couplers_to_m04_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m04_couplers_to_m04_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m04_couplers_to_m04_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m04_couplers_to_m04_couplers_WVALID;
  S_AXI_arready <= m04_couplers_to_m04_couplers_ARREADY;
  S_AXI_awready <= m04_couplers_to_m04_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m04_couplers_to_m04_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m04_couplers_to_m04_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m04_couplers_to_m04_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m04_couplers_to_m04_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m04_couplers_to_m04_couplers_RVALID;
  S_AXI_wready <= m04_couplers_to_m04_couplers_WREADY;
  m04_couplers_to_m04_couplers_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  m04_couplers_to_m04_couplers_ARREADY <= M_AXI_arready;
  m04_couplers_to_m04_couplers_ARVALID <= S_AXI_arvalid;
  m04_couplers_to_m04_couplers_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  m04_couplers_to_m04_couplers_AWREADY <= M_AXI_awready;
  m04_couplers_to_m04_couplers_AWVALID <= S_AXI_awvalid;
  m04_couplers_to_m04_couplers_BREADY <= S_AXI_bready;
  m04_couplers_to_m04_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m04_couplers_to_m04_couplers_BVALID <= M_AXI_bvalid;
  m04_couplers_to_m04_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m04_couplers_to_m04_couplers_RREADY <= S_AXI_rready;
  m04_couplers_to_m04_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m04_couplers_to_m04_couplers_RVALID <= M_AXI_rvalid;
  m04_couplers_to_m04_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m04_couplers_to_m04_couplers_WREADY <= M_AXI_wready;
  m04_couplers_to_m04_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m04_couplers_to_m04_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m05_couplers_imp_1TVRB6B is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m05_couplers_imp_1TVRB6B;

architecture STRUCTURE of m05_couplers_imp_1TVRB6B is
  signal m05_couplers_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m05_couplers_to_m05_couplers_ARREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_ARVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m05_couplers_to_m05_couplers_AWREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_AWVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_BREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_BVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_RREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_RVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_WREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_m05_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(39 downto 0) <= m05_couplers_to_m05_couplers_ARADDR(39 downto 0);
  M_AXI_arvalid <= m05_couplers_to_m05_couplers_ARVALID;
  M_AXI_awaddr(39 downto 0) <= m05_couplers_to_m05_couplers_AWADDR(39 downto 0);
  M_AXI_awvalid <= m05_couplers_to_m05_couplers_AWVALID;
  M_AXI_bready <= m05_couplers_to_m05_couplers_BREADY;
  M_AXI_rready <= m05_couplers_to_m05_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m05_couplers_to_m05_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m05_couplers_to_m05_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m05_couplers_to_m05_couplers_WVALID;
  S_AXI_arready <= m05_couplers_to_m05_couplers_ARREADY;
  S_AXI_awready <= m05_couplers_to_m05_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m05_couplers_to_m05_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m05_couplers_to_m05_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m05_couplers_to_m05_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m05_couplers_to_m05_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m05_couplers_to_m05_couplers_RVALID;
  S_AXI_wready <= m05_couplers_to_m05_couplers_WREADY;
  m05_couplers_to_m05_couplers_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  m05_couplers_to_m05_couplers_ARREADY <= M_AXI_arready;
  m05_couplers_to_m05_couplers_ARVALID <= S_AXI_arvalid;
  m05_couplers_to_m05_couplers_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  m05_couplers_to_m05_couplers_AWREADY <= M_AXI_awready;
  m05_couplers_to_m05_couplers_AWVALID <= S_AXI_awvalid;
  m05_couplers_to_m05_couplers_BREADY <= S_AXI_bready;
  m05_couplers_to_m05_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m05_couplers_to_m05_couplers_BVALID <= M_AXI_bvalid;
  m05_couplers_to_m05_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m05_couplers_to_m05_couplers_RREADY <= S_AXI_rready;
  m05_couplers_to_m05_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m05_couplers_to_m05_couplers_RVALID <= M_AXI_rvalid;
  m05_couplers_to_m05_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m05_couplers_to_m05_couplers_WREADY <= M_AXI_wready;
  m05_couplers_to_m05_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m05_couplers_to_m05_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m06_couplers_imp_MEFJX9 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m06_couplers_imp_MEFJX9;

architecture STRUCTURE of m06_couplers_imp_MEFJX9 is
  signal m06_couplers_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m06_couplers_to_m06_couplers_ARREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m06_couplers_to_m06_couplers_AWREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_BREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_m06_couplers_BVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_RREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_m06_couplers_RVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_WREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_m06_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(39 downto 0) <= m06_couplers_to_m06_couplers_ARADDR(39 downto 0);
  M_AXI_arvalid <= m06_couplers_to_m06_couplers_ARVALID;
  M_AXI_awaddr(39 downto 0) <= m06_couplers_to_m06_couplers_AWADDR(39 downto 0);
  M_AXI_awvalid <= m06_couplers_to_m06_couplers_AWVALID;
  M_AXI_bready <= m06_couplers_to_m06_couplers_BREADY;
  M_AXI_rready <= m06_couplers_to_m06_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m06_couplers_to_m06_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m06_couplers_to_m06_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m06_couplers_to_m06_couplers_WVALID;
  S_AXI_arready <= m06_couplers_to_m06_couplers_ARREADY;
  S_AXI_awready <= m06_couplers_to_m06_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m06_couplers_to_m06_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m06_couplers_to_m06_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m06_couplers_to_m06_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m06_couplers_to_m06_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m06_couplers_to_m06_couplers_RVALID;
  S_AXI_wready <= m06_couplers_to_m06_couplers_WREADY;
  m06_couplers_to_m06_couplers_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  m06_couplers_to_m06_couplers_ARREADY <= M_AXI_arready;
  m06_couplers_to_m06_couplers_ARVALID <= S_AXI_arvalid;
  m06_couplers_to_m06_couplers_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  m06_couplers_to_m06_couplers_AWREADY <= M_AXI_awready;
  m06_couplers_to_m06_couplers_AWVALID <= S_AXI_awvalid;
  m06_couplers_to_m06_couplers_BREADY <= S_AXI_bready;
  m06_couplers_to_m06_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m06_couplers_to_m06_couplers_BVALID <= M_AXI_bvalid;
  m06_couplers_to_m06_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m06_couplers_to_m06_couplers_RREADY <= S_AXI_rready;
  m06_couplers_to_m06_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m06_couplers_to_m06_couplers_RVALID <= M_AXI_rvalid;
  m06_couplers_to_m06_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m06_couplers_to_m06_couplers_WREADY <= M_AXI_wready;
  m06_couplers_to_m06_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m06_couplers_to_m06_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_OS3PMI is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_OS3PMI;

architecture STRUCTURE of s00_couplers_imp_OS3PMI is
  component mts_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component mts_auto_pc_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_pc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_pc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_pc_ARLOCK : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_pc_AWLOCK : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(39 downto 0) <= auto_pc_to_s00_couplers_ARADDR(39 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(39 downto 0) <= auto_pc_to_s00_couplers_AWADDR(39 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(15 downto 0) <= s00_couplers_to_auto_pc_BID(15 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(15 downto 0) <= s00_couplers_to_auto_pc_RID(15 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_pc_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_pc_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  s00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_pc_ARID(15 downto 0) <= S_AXI_arid(15 downto 0);
  s00_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s00_couplers_to_auto_pc_ARLOCK <= S_AXI_arlock;
  s00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_pc_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  s00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_pc_AWID(15 downto 0) <= S_AXI_awid(15 downto 0);
  s00_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s00_couplers_to_auto_pc_AWLOCK <= S_AXI_awlock;
  s00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component mts_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(39 downto 0) => auto_pc_to_s00_couplers_ARADDR(39 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(39 downto 0) => auto_pc_to_s00_couplers_AWADDR(39 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(39 downto 0) => s00_couplers_to_auto_pc_ARADDR(39 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(15 downto 0) => s00_couplers_to_auto_pc_ARID(15 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => s00_couplers_to_auto_pc_ARLOCK,
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(39 downto 0) => s00_couplers_to_auto_pc_AWADDR(39 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(15 downto 0) => s00_couplers_to_auto_pc_AWID(15 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => s00_couplers_to_auto_pc_AWLOCK,
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(15 downto 0) => s00_couplers_to_auto_pc_BID(15 downto 0),
      s_axi_bready => s00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(15 downto 0) => s00_couplers_to_auto_pc_RID(15 downto 0),
      s_axi_rlast => s00_couplers_to_auto_pc_RLAST,
      s_axi_rready => s00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => s00_couplers_to_auto_pc_WLAST,
      s_axi_wready => s00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mts_control_interconnect_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC;
    M01_AXI_arprot : out STD_LOGIC;
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC;
    M01_AXI_awprot : out STD_LOGIC;
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC;
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC;
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC;
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC;
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC;
    M01_AXI_wvalid : out STD_LOGIC;
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M02_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M02_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC;
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC;
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M04_AXI_arready : in STD_LOGIC;
    M04_AXI_arvalid : out STD_LOGIC;
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M04_AXI_awready : in STD_LOGIC;
    M04_AXI_awvalid : out STD_LOGIC;
    M04_AXI_bready : out STD_LOGIC;
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC;
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rready : out STD_LOGIC;
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC;
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wready : in STD_LOGIC;
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC;
    M05_ACLK : in STD_LOGIC;
    M05_ARESETN : in STD_LOGIC;
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M05_AXI_arready : in STD_LOGIC;
    M05_AXI_arvalid : out STD_LOGIC;
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M05_AXI_awready : in STD_LOGIC;
    M05_AXI_awvalid : out STD_LOGIC;
    M05_AXI_bready : out STD_LOGIC;
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC;
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rready : out STD_LOGIC;
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC;
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wready : in STD_LOGIC;
    M05_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_wvalid : out STD_LOGIC;
    M06_ACLK : in STD_LOGIC;
    M06_ARESETN : in STD_LOGIC;
    M06_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M06_AXI_arready : in STD_LOGIC;
    M06_AXI_arvalid : out STD_LOGIC;
    M06_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M06_AXI_awready : in STD_LOGIC;
    M06_AXI_awvalid : out STD_LOGIC;
    M06_AXI_bready : out STD_LOGIC;
    M06_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_bvalid : in STD_LOGIC;
    M06_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_rready : out STD_LOGIC;
    M06_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_rvalid : in STD_LOGIC;
    M06_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_wready : in STD_LOGIC;
    M06_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arlock : in STD_LOGIC;
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC;
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end mts_control_interconnect_0;

architecture STRUCTURE of mts_control_interconnect_0 is
  component mts_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 279 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 20 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 223 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 279 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 20 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 223 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component mts_xbar_0;
  signal control_interconnect_ACLK_net : STD_LOGIC;
  signal control_interconnect_ARESETN_net : STD_LOGIC;
  signal control_interconnect_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal control_interconnect_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_interconnect_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal control_interconnect_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal control_interconnect_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal control_interconnect_to_s00_couplers_ARLOCK : STD_LOGIC;
  signal control_interconnect_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal control_interconnect_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal control_interconnect_to_s00_couplers_ARREADY : STD_LOGIC;
  signal control_interconnect_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal control_interconnect_to_s00_couplers_ARVALID : STD_LOGIC;
  signal control_interconnect_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal control_interconnect_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_interconnect_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal control_interconnect_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal control_interconnect_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal control_interconnect_to_s00_couplers_AWLOCK : STD_LOGIC;
  signal control_interconnect_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal control_interconnect_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal control_interconnect_to_s00_couplers_AWREADY : STD_LOGIC;
  signal control_interconnect_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal control_interconnect_to_s00_couplers_AWVALID : STD_LOGIC;
  signal control_interconnect_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal control_interconnect_to_s00_couplers_BREADY : STD_LOGIC;
  signal control_interconnect_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_interconnect_to_s00_couplers_BVALID : STD_LOGIC;
  signal control_interconnect_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal control_interconnect_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal control_interconnect_to_s00_couplers_RLAST : STD_LOGIC;
  signal control_interconnect_to_s00_couplers_RREADY : STD_LOGIC;
  signal control_interconnect_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_interconnect_to_s00_couplers_RVALID : STD_LOGIC;
  signal control_interconnect_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal control_interconnect_to_s00_couplers_WLAST : STD_LOGIC;
  signal control_interconnect_to_s00_couplers_WREADY : STD_LOGIC;
  signal control_interconnect_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal control_interconnect_to_s00_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_control_interconnect_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m00_couplers_to_control_interconnect_ARREADY : STD_LOGIC;
  signal m00_couplers_to_control_interconnect_ARVALID : STD_LOGIC;
  signal m00_couplers_to_control_interconnect_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m00_couplers_to_control_interconnect_AWREADY : STD_LOGIC;
  signal m00_couplers_to_control_interconnect_AWVALID : STD_LOGIC;
  signal m00_couplers_to_control_interconnect_BREADY : STD_LOGIC;
  signal m00_couplers_to_control_interconnect_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_control_interconnect_BVALID : STD_LOGIC;
  signal m00_couplers_to_control_interconnect_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_control_interconnect_RREADY : STD_LOGIC;
  signal m00_couplers_to_control_interconnect_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_control_interconnect_RVALID : STD_LOGIC;
  signal m00_couplers_to_control_interconnect_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_control_interconnect_WREADY : STD_LOGIC;
  signal m00_couplers_to_control_interconnect_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_control_interconnect_WVALID : STD_LOGIC;
  signal m01_couplers_to_control_interconnect_ARADDR : STD_LOGIC;
  signal m01_couplers_to_control_interconnect_ARPROT : STD_LOGIC;
  signal m01_couplers_to_control_interconnect_ARREADY : STD_LOGIC;
  signal m01_couplers_to_control_interconnect_ARVALID : STD_LOGIC;
  signal m01_couplers_to_control_interconnect_AWADDR : STD_LOGIC;
  signal m01_couplers_to_control_interconnect_AWPROT : STD_LOGIC;
  signal m01_couplers_to_control_interconnect_AWREADY : STD_LOGIC;
  signal m01_couplers_to_control_interconnect_AWVALID : STD_LOGIC;
  signal m01_couplers_to_control_interconnect_BREADY : STD_LOGIC;
  signal m01_couplers_to_control_interconnect_BRESP : STD_LOGIC;
  signal m01_couplers_to_control_interconnect_BVALID : STD_LOGIC;
  signal m01_couplers_to_control_interconnect_RDATA : STD_LOGIC;
  signal m01_couplers_to_control_interconnect_RREADY : STD_LOGIC;
  signal m01_couplers_to_control_interconnect_RRESP : STD_LOGIC;
  signal m01_couplers_to_control_interconnect_RVALID : STD_LOGIC;
  signal m01_couplers_to_control_interconnect_WDATA : STD_LOGIC;
  signal m01_couplers_to_control_interconnect_WREADY : STD_LOGIC;
  signal m01_couplers_to_control_interconnect_WSTRB : STD_LOGIC;
  signal m01_couplers_to_control_interconnect_WVALID : STD_LOGIC;
  signal m02_couplers_to_control_interconnect_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m02_couplers_to_control_interconnect_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_control_interconnect_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_control_interconnect_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m02_couplers_to_control_interconnect_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_control_interconnect_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_control_interconnect_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_control_interconnect_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_control_interconnect_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_control_interconnect_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_control_interconnect_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_control_interconnect_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_control_interconnect_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_control_interconnect_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_control_interconnect_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_control_interconnect_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_control_interconnect_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_control_interconnect_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m03_couplers_to_control_interconnect_ARREADY : STD_LOGIC;
  signal m03_couplers_to_control_interconnect_ARVALID : STD_LOGIC;
  signal m03_couplers_to_control_interconnect_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m03_couplers_to_control_interconnect_AWREADY : STD_LOGIC;
  signal m03_couplers_to_control_interconnect_AWVALID : STD_LOGIC;
  signal m03_couplers_to_control_interconnect_BREADY : STD_LOGIC;
  signal m03_couplers_to_control_interconnect_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_control_interconnect_BVALID : STD_LOGIC;
  signal m03_couplers_to_control_interconnect_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_control_interconnect_RREADY : STD_LOGIC;
  signal m03_couplers_to_control_interconnect_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_control_interconnect_RVALID : STD_LOGIC;
  signal m03_couplers_to_control_interconnect_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_control_interconnect_WREADY : STD_LOGIC;
  signal m03_couplers_to_control_interconnect_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_control_interconnect_WVALID : STD_LOGIC;
  signal m04_couplers_to_control_interconnect_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m04_couplers_to_control_interconnect_ARREADY : STD_LOGIC;
  signal m04_couplers_to_control_interconnect_ARVALID : STD_LOGIC;
  signal m04_couplers_to_control_interconnect_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m04_couplers_to_control_interconnect_AWREADY : STD_LOGIC;
  signal m04_couplers_to_control_interconnect_AWVALID : STD_LOGIC;
  signal m04_couplers_to_control_interconnect_BREADY : STD_LOGIC;
  signal m04_couplers_to_control_interconnect_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_control_interconnect_BVALID : STD_LOGIC;
  signal m04_couplers_to_control_interconnect_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_control_interconnect_RREADY : STD_LOGIC;
  signal m04_couplers_to_control_interconnect_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_control_interconnect_RVALID : STD_LOGIC;
  signal m04_couplers_to_control_interconnect_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_control_interconnect_WREADY : STD_LOGIC;
  signal m04_couplers_to_control_interconnect_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_control_interconnect_WVALID : STD_LOGIC;
  signal m05_couplers_to_control_interconnect_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m05_couplers_to_control_interconnect_ARREADY : STD_LOGIC;
  signal m05_couplers_to_control_interconnect_ARVALID : STD_LOGIC;
  signal m05_couplers_to_control_interconnect_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m05_couplers_to_control_interconnect_AWREADY : STD_LOGIC;
  signal m05_couplers_to_control_interconnect_AWVALID : STD_LOGIC;
  signal m05_couplers_to_control_interconnect_BREADY : STD_LOGIC;
  signal m05_couplers_to_control_interconnect_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_control_interconnect_BVALID : STD_LOGIC;
  signal m05_couplers_to_control_interconnect_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_control_interconnect_RREADY : STD_LOGIC;
  signal m05_couplers_to_control_interconnect_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_control_interconnect_RVALID : STD_LOGIC;
  signal m05_couplers_to_control_interconnect_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_control_interconnect_WREADY : STD_LOGIC;
  signal m05_couplers_to_control_interconnect_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_control_interconnect_WVALID : STD_LOGIC;
  signal m06_couplers_to_control_interconnect_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m06_couplers_to_control_interconnect_ARREADY : STD_LOGIC;
  signal m06_couplers_to_control_interconnect_ARVALID : STD_LOGIC;
  signal m06_couplers_to_control_interconnect_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m06_couplers_to_control_interconnect_AWREADY : STD_LOGIC;
  signal m06_couplers_to_control_interconnect_AWVALID : STD_LOGIC;
  signal m06_couplers_to_control_interconnect_BREADY : STD_LOGIC;
  signal m06_couplers_to_control_interconnect_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_control_interconnect_BVALID : STD_LOGIC;
  signal m06_couplers_to_control_interconnect_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_control_interconnect_RREADY : STD_LOGIC;
  signal m06_couplers_to_control_interconnect_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_control_interconnect_RVALID : STD_LOGIC;
  signal m06_couplers_to_control_interconnect_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_control_interconnect_WREADY : STD_LOGIC;
  signal m06_couplers_to_control_interconnect_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_control_interconnect_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 79 downto 40 );
  signal xbar_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 79 downto 40 );
  signal xbar_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC;
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC;
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC;
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 119 downto 80 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 119 downto 80 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 159 downto 120 );
  signal xbar_to_m03_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 159 downto 120 );
  signal xbar_to_m03_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 199 downto 160 );
  signal xbar_to_m04_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 199 downto 160 );
  signal xbar_to_m04_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 239 downto 200 );
  signal xbar_to_m05_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_ARVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 239 downto 200 );
  signal xbar_to_m05_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_AWVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m05_couplers_RREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_WVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 279 downto 240 );
  signal xbar_to_m06_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_ARVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 279 downto 240 );
  signal xbar_to_m06_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_AWVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m06_couplers_RREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_WVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 20 downto 0 );
begin
  M00_AXI_araddr(39 downto 0) <= m00_couplers_to_control_interconnect_ARADDR(39 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_control_interconnect_ARVALID;
  M00_AXI_awaddr(39 downto 0) <= m00_couplers_to_control_interconnect_AWADDR(39 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_control_interconnect_AWVALID;
  M00_AXI_bready <= m00_couplers_to_control_interconnect_BREADY;
  M00_AXI_rready <= m00_couplers_to_control_interconnect_RREADY;
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_control_interconnect_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_control_interconnect_WSTRB(3 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_control_interconnect_WVALID;
  M01_AXI_araddr <= m01_couplers_to_control_interconnect_ARADDR;
  M01_AXI_arprot <= m01_couplers_to_control_interconnect_ARPROT;
  M01_AXI_arvalid <= m01_couplers_to_control_interconnect_ARVALID;
  M01_AXI_awaddr <= m01_couplers_to_control_interconnect_AWADDR;
  M01_AXI_awprot <= m01_couplers_to_control_interconnect_AWPROT;
  M01_AXI_awvalid <= m01_couplers_to_control_interconnect_AWVALID;
  M01_AXI_bready <= m01_couplers_to_control_interconnect_BREADY;
  M01_AXI_rready <= m01_couplers_to_control_interconnect_RREADY;
  M01_AXI_wdata <= m01_couplers_to_control_interconnect_WDATA;
  M01_AXI_wstrb <= m01_couplers_to_control_interconnect_WSTRB;
  M01_AXI_wvalid <= m01_couplers_to_control_interconnect_WVALID;
  M02_AXI_araddr(39 downto 0) <= m02_couplers_to_control_interconnect_ARADDR(39 downto 0);
  M02_AXI_arvalid(0) <= m02_couplers_to_control_interconnect_ARVALID(0);
  M02_AXI_awaddr(39 downto 0) <= m02_couplers_to_control_interconnect_AWADDR(39 downto 0);
  M02_AXI_awvalid(0) <= m02_couplers_to_control_interconnect_AWVALID(0);
  M02_AXI_bready(0) <= m02_couplers_to_control_interconnect_BREADY(0);
  M02_AXI_rready(0) <= m02_couplers_to_control_interconnect_RREADY(0);
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_control_interconnect_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_control_interconnect_WSTRB(3 downto 0);
  M02_AXI_wvalid(0) <= m02_couplers_to_control_interconnect_WVALID(0);
  M03_AXI_araddr(39 downto 0) <= m03_couplers_to_control_interconnect_ARADDR(39 downto 0);
  M03_AXI_arvalid <= m03_couplers_to_control_interconnect_ARVALID;
  M03_AXI_awaddr(39 downto 0) <= m03_couplers_to_control_interconnect_AWADDR(39 downto 0);
  M03_AXI_awvalid <= m03_couplers_to_control_interconnect_AWVALID;
  M03_AXI_bready <= m03_couplers_to_control_interconnect_BREADY;
  M03_AXI_rready <= m03_couplers_to_control_interconnect_RREADY;
  M03_AXI_wdata(31 downto 0) <= m03_couplers_to_control_interconnect_WDATA(31 downto 0);
  M03_AXI_wstrb(3 downto 0) <= m03_couplers_to_control_interconnect_WSTRB(3 downto 0);
  M03_AXI_wvalid <= m03_couplers_to_control_interconnect_WVALID;
  M04_AXI_araddr(39 downto 0) <= m04_couplers_to_control_interconnect_ARADDR(39 downto 0);
  M04_AXI_arvalid <= m04_couplers_to_control_interconnect_ARVALID;
  M04_AXI_awaddr(39 downto 0) <= m04_couplers_to_control_interconnect_AWADDR(39 downto 0);
  M04_AXI_awvalid <= m04_couplers_to_control_interconnect_AWVALID;
  M04_AXI_bready <= m04_couplers_to_control_interconnect_BREADY;
  M04_AXI_rready <= m04_couplers_to_control_interconnect_RREADY;
  M04_AXI_wdata(31 downto 0) <= m04_couplers_to_control_interconnect_WDATA(31 downto 0);
  M04_AXI_wstrb(3 downto 0) <= m04_couplers_to_control_interconnect_WSTRB(3 downto 0);
  M04_AXI_wvalid <= m04_couplers_to_control_interconnect_WVALID;
  M05_AXI_araddr(39 downto 0) <= m05_couplers_to_control_interconnect_ARADDR(39 downto 0);
  M05_AXI_arvalid <= m05_couplers_to_control_interconnect_ARVALID;
  M05_AXI_awaddr(39 downto 0) <= m05_couplers_to_control_interconnect_AWADDR(39 downto 0);
  M05_AXI_awvalid <= m05_couplers_to_control_interconnect_AWVALID;
  M05_AXI_bready <= m05_couplers_to_control_interconnect_BREADY;
  M05_AXI_rready <= m05_couplers_to_control_interconnect_RREADY;
  M05_AXI_wdata(31 downto 0) <= m05_couplers_to_control_interconnect_WDATA(31 downto 0);
  M05_AXI_wstrb(3 downto 0) <= m05_couplers_to_control_interconnect_WSTRB(3 downto 0);
  M05_AXI_wvalid <= m05_couplers_to_control_interconnect_WVALID;
  M06_AXI_araddr(39 downto 0) <= m06_couplers_to_control_interconnect_ARADDR(39 downto 0);
  M06_AXI_arvalid <= m06_couplers_to_control_interconnect_ARVALID;
  M06_AXI_awaddr(39 downto 0) <= m06_couplers_to_control_interconnect_AWADDR(39 downto 0);
  M06_AXI_awvalid <= m06_couplers_to_control_interconnect_AWVALID;
  M06_AXI_bready <= m06_couplers_to_control_interconnect_BREADY;
  M06_AXI_rready <= m06_couplers_to_control_interconnect_RREADY;
  M06_AXI_wdata(31 downto 0) <= m06_couplers_to_control_interconnect_WDATA(31 downto 0);
  M06_AXI_wstrb(3 downto 0) <= m06_couplers_to_control_interconnect_WSTRB(3 downto 0);
  M06_AXI_wvalid <= m06_couplers_to_control_interconnect_WVALID;
  S00_AXI_arready <= control_interconnect_to_s00_couplers_ARREADY;
  S00_AXI_awready <= control_interconnect_to_s00_couplers_AWREADY;
  S00_AXI_bid(15 downto 0) <= control_interconnect_to_s00_couplers_BID(15 downto 0);
  S00_AXI_bresp(1 downto 0) <= control_interconnect_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= control_interconnect_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= control_interconnect_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rid(15 downto 0) <= control_interconnect_to_s00_couplers_RID(15 downto 0);
  S00_AXI_rlast <= control_interconnect_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= control_interconnect_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= control_interconnect_to_s00_couplers_RVALID;
  S00_AXI_wready <= control_interconnect_to_s00_couplers_WREADY;
  control_interconnect_ACLK_net <= ACLK;
  control_interconnect_ARESETN_net <= ARESETN;
  control_interconnect_to_s00_couplers_ARADDR(39 downto 0) <= S00_AXI_araddr(39 downto 0);
  control_interconnect_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  control_interconnect_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  control_interconnect_to_s00_couplers_ARID(15 downto 0) <= S00_AXI_arid(15 downto 0);
  control_interconnect_to_s00_couplers_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  control_interconnect_to_s00_couplers_ARLOCK <= S00_AXI_arlock;
  control_interconnect_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  control_interconnect_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  control_interconnect_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  control_interconnect_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  control_interconnect_to_s00_couplers_AWADDR(39 downto 0) <= S00_AXI_awaddr(39 downto 0);
  control_interconnect_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  control_interconnect_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  control_interconnect_to_s00_couplers_AWID(15 downto 0) <= S00_AXI_awid(15 downto 0);
  control_interconnect_to_s00_couplers_AWLEN(7 downto 0) <= S00_AXI_awlen(7 downto 0);
  control_interconnect_to_s00_couplers_AWLOCK <= S00_AXI_awlock;
  control_interconnect_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  control_interconnect_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  control_interconnect_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  control_interconnect_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  control_interconnect_to_s00_couplers_BREADY <= S00_AXI_bready;
  control_interconnect_to_s00_couplers_RREADY <= S00_AXI_rready;
  control_interconnect_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  control_interconnect_to_s00_couplers_WLAST <= S00_AXI_wlast;
  control_interconnect_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  control_interconnect_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  m00_couplers_to_control_interconnect_ARREADY <= M00_AXI_arready;
  m00_couplers_to_control_interconnect_AWREADY <= M00_AXI_awready;
  m00_couplers_to_control_interconnect_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_control_interconnect_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_control_interconnect_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_control_interconnect_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_control_interconnect_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_control_interconnect_WREADY <= M00_AXI_wready;
  m01_couplers_to_control_interconnect_ARREADY <= M01_AXI_arready;
  m01_couplers_to_control_interconnect_AWREADY <= M01_AXI_awready;
  m01_couplers_to_control_interconnect_BRESP <= M01_AXI_bresp;
  m01_couplers_to_control_interconnect_BVALID <= M01_AXI_bvalid;
  m01_couplers_to_control_interconnect_RDATA <= M01_AXI_rdata;
  m01_couplers_to_control_interconnect_RRESP <= M01_AXI_rresp;
  m01_couplers_to_control_interconnect_RVALID <= M01_AXI_rvalid;
  m01_couplers_to_control_interconnect_WREADY <= M01_AXI_wready;
  m02_couplers_to_control_interconnect_ARREADY(0) <= M02_AXI_arready(0);
  m02_couplers_to_control_interconnect_AWREADY(0) <= M02_AXI_awready(0);
  m02_couplers_to_control_interconnect_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_control_interconnect_BVALID(0) <= M02_AXI_bvalid(0);
  m02_couplers_to_control_interconnect_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_control_interconnect_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_control_interconnect_RVALID(0) <= M02_AXI_rvalid(0);
  m02_couplers_to_control_interconnect_WREADY(0) <= M02_AXI_wready(0);
  m03_couplers_to_control_interconnect_ARREADY <= M03_AXI_arready;
  m03_couplers_to_control_interconnect_AWREADY <= M03_AXI_awready;
  m03_couplers_to_control_interconnect_BRESP(1 downto 0) <= M03_AXI_bresp(1 downto 0);
  m03_couplers_to_control_interconnect_BVALID <= M03_AXI_bvalid;
  m03_couplers_to_control_interconnect_RDATA(31 downto 0) <= M03_AXI_rdata(31 downto 0);
  m03_couplers_to_control_interconnect_RRESP(1 downto 0) <= M03_AXI_rresp(1 downto 0);
  m03_couplers_to_control_interconnect_RVALID <= M03_AXI_rvalid;
  m03_couplers_to_control_interconnect_WREADY <= M03_AXI_wready;
  m04_couplers_to_control_interconnect_ARREADY <= M04_AXI_arready;
  m04_couplers_to_control_interconnect_AWREADY <= M04_AXI_awready;
  m04_couplers_to_control_interconnect_BRESP(1 downto 0) <= M04_AXI_bresp(1 downto 0);
  m04_couplers_to_control_interconnect_BVALID <= M04_AXI_bvalid;
  m04_couplers_to_control_interconnect_RDATA(31 downto 0) <= M04_AXI_rdata(31 downto 0);
  m04_couplers_to_control_interconnect_RRESP(1 downto 0) <= M04_AXI_rresp(1 downto 0);
  m04_couplers_to_control_interconnect_RVALID <= M04_AXI_rvalid;
  m04_couplers_to_control_interconnect_WREADY <= M04_AXI_wready;
  m05_couplers_to_control_interconnect_ARREADY <= M05_AXI_arready;
  m05_couplers_to_control_interconnect_AWREADY <= M05_AXI_awready;
  m05_couplers_to_control_interconnect_BRESP(1 downto 0) <= M05_AXI_bresp(1 downto 0);
  m05_couplers_to_control_interconnect_BVALID <= M05_AXI_bvalid;
  m05_couplers_to_control_interconnect_RDATA(31 downto 0) <= M05_AXI_rdata(31 downto 0);
  m05_couplers_to_control_interconnect_RRESP(1 downto 0) <= M05_AXI_rresp(1 downto 0);
  m05_couplers_to_control_interconnect_RVALID <= M05_AXI_rvalid;
  m05_couplers_to_control_interconnect_WREADY <= M05_AXI_wready;
  m06_couplers_to_control_interconnect_ARREADY <= M06_AXI_arready;
  m06_couplers_to_control_interconnect_AWREADY <= M06_AXI_awready;
  m06_couplers_to_control_interconnect_BRESP(1 downto 0) <= M06_AXI_bresp(1 downto 0);
  m06_couplers_to_control_interconnect_BVALID <= M06_AXI_bvalid;
  m06_couplers_to_control_interconnect_RDATA(31 downto 0) <= M06_AXI_rdata(31 downto 0);
  m06_couplers_to_control_interconnect_RRESP(1 downto 0) <= M06_AXI_rresp(1 downto 0);
  m06_couplers_to_control_interconnect_RVALID <= M06_AXI_rvalid;
  m06_couplers_to_control_interconnect_WREADY <= M06_AXI_wready;
m00_couplers: entity work.m00_couplers_imp_1UOYSZK
     port map (
      M_ACLK => control_interconnect_ACLK_net,
      M_ARESETN => control_interconnect_ARESETN_net,
      M_AXI_araddr(39 downto 0) => m00_couplers_to_control_interconnect_ARADDR(39 downto 0),
      M_AXI_arready => m00_couplers_to_control_interconnect_ARREADY,
      M_AXI_arvalid => m00_couplers_to_control_interconnect_ARVALID,
      M_AXI_awaddr(39 downto 0) => m00_couplers_to_control_interconnect_AWADDR(39 downto 0),
      M_AXI_awready => m00_couplers_to_control_interconnect_AWREADY,
      M_AXI_awvalid => m00_couplers_to_control_interconnect_AWVALID,
      M_AXI_bready => m00_couplers_to_control_interconnect_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_control_interconnect_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_control_interconnect_BVALID,
      M_AXI_rdata(31 downto 0) => m00_couplers_to_control_interconnect_RDATA(31 downto 0),
      M_AXI_rready => m00_couplers_to_control_interconnect_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_control_interconnect_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_control_interconnect_RVALID,
      M_AXI_wdata(31 downto 0) => m00_couplers_to_control_interconnect_WDATA(31 downto 0),
      M_AXI_wready => m00_couplers_to_control_interconnect_WREADY,
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_control_interconnect_WSTRB(3 downto 0),
      M_AXI_wvalid => m00_couplers_to_control_interconnect_WVALID,
      S_ACLK => control_interconnect_ACLK_net,
      S_ARESETN => control_interconnect_ARESETN_net,
      S_AXI_araddr(39 downto 0) => xbar_to_m00_couplers_ARADDR(39 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(39 downto 0) => xbar_to_m00_couplers_AWADDR(39 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_CPC24L
     port map (
      M_ACLK => control_interconnect_ACLK_net,
      M_ARESETN => control_interconnect_ARESETN_net,
      M_AXI_araddr => m01_couplers_to_control_interconnect_ARADDR,
      M_AXI_arprot => m01_couplers_to_control_interconnect_ARPROT,
      M_AXI_arready => m01_couplers_to_control_interconnect_ARREADY,
      M_AXI_arvalid => m01_couplers_to_control_interconnect_ARVALID,
      M_AXI_awaddr => m01_couplers_to_control_interconnect_AWADDR,
      M_AXI_awprot => m01_couplers_to_control_interconnect_AWPROT,
      M_AXI_awready => m01_couplers_to_control_interconnect_AWREADY,
      M_AXI_awvalid => m01_couplers_to_control_interconnect_AWVALID,
      M_AXI_bready => m01_couplers_to_control_interconnect_BREADY,
      M_AXI_bresp => m01_couplers_to_control_interconnect_BRESP,
      M_AXI_bvalid => m01_couplers_to_control_interconnect_BVALID,
      M_AXI_rdata => m01_couplers_to_control_interconnect_RDATA,
      M_AXI_rready => m01_couplers_to_control_interconnect_RREADY,
      M_AXI_rresp => m01_couplers_to_control_interconnect_RRESP,
      M_AXI_rvalid => m01_couplers_to_control_interconnect_RVALID,
      M_AXI_wdata => m01_couplers_to_control_interconnect_WDATA,
      M_AXI_wready => m01_couplers_to_control_interconnect_WREADY,
      M_AXI_wstrb => m01_couplers_to_control_interconnect_WSTRB,
      M_AXI_wvalid => m01_couplers_to_control_interconnect_WVALID,
      S_ACLK => control_interconnect_ACLK_net,
      S_ARESETN => control_interconnect_ARESETN_net,
      S_AXI_araddr => xbar_to_m01_couplers_ARADDR(40),
      S_AXI_arprot => xbar_to_m01_couplers_ARPROT(3),
      S_AXI_arready => xbar_to_m01_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr => xbar_to_m01_couplers_AWADDR(40),
      S_AXI_awprot => xbar_to_m01_couplers_AWPROT(3),
      S_AXI_awready => xbar_to_m01_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp => xbar_to_m01_couplers_BRESP,
      S_AXI_bvalid => xbar_to_m01_couplers_BVALID,
      S_AXI_rdata => xbar_to_m01_couplers_RDATA,
      S_AXI_rready => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp => xbar_to_m01_couplers_RRESP,
      S_AXI_rvalid => xbar_to_m01_couplers_RVALID,
      S_AXI_wdata => xbar_to_m01_couplers_WDATA(32),
      S_AXI_wready => xbar_to_m01_couplers_WREADY,
      S_AXI_wstrb => xbar_to_m01_couplers_WSTRB(4),
      S_AXI_wvalid => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_13YH53F
     port map (
      M_ACLK => control_interconnect_ACLK_net,
      M_ARESETN => control_interconnect_ARESETN_net,
      M_AXI_araddr(39 downto 0) => m02_couplers_to_control_interconnect_ARADDR(39 downto 0),
      M_AXI_arready(0) => m02_couplers_to_control_interconnect_ARREADY(0),
      M_AXI_arvalid(0) => m02_couplers_to_control_interconnect_ARVALID(0),
      M_AXI_awaddr(39 downto 0) => m02_couplers_to_control_interconnect_AWADDR(39 downto 0),
      M_AXI_awready(0) => m02_couplers_to_control_interconnect_AWREADY(0),
      M_AXI_awvalid(0) => m02_couplers_to_control_interconnect_AWVALID(0),
      M_AXI_bready(0) => m02_couplers_to_control_interconnect_BREADY(0),
      M_AXI_bresp(1 downto 0) => m02_couplers_to_control_interconnect_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m02_couplers_to_control_interconnect_BVALID(0),
      M_AXI_rdata(31 downto 0) => m02_couplers_to_control_interconnect_RDATA(31 downto 0),
      M_AXI_rready(0) => m02_couplers_to_control_interconnect_RREADY(0),
      M_AXI_rresp(1 downto 0) => m02_couplers_to_control_interconnect_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m02_couplers_to_control_interconnect_RVALID(0),
      M_AXI_wdata(31 downto 0) => m02_couplers_to_control_interconnect_WDATA(31 downto 0),
      M_AXI_wready(0) => m02_couplers_to_control_interconnect_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m02_couplers_to_control_interconnect_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m02_couplers_to_control_interconnect_WVALID(0),
      S_ACLK => control_interconnect_ACLK_net,
      S_ARESETN => control_interconnect_ARESETN_net,
      S_AXI_araddr(39 downto 0) => xbar_to_m02_couplers_ARADDR(119 downto 80),
      S_AXI_arready(0) => xbar_to_m02_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(39 downto 0) => xbar_to_m02_couplers_AWADDR(119 downto 80),
      S_AXI_awready(0) => xbar_to_m02_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bready(0) => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m02_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m02_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wready(0) => xbar_to_m02_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid(0) => xbar_to_m02_couplers_WVALID(2)
    );
m03_couplers: entity work.m03_couplers_imp_LIX1FY
     port map (
      M_ACLK => control_interconnect_ACLK_net,
      M_ARESETN => control_interconnect_ARESETN_net,
      M_AXI_araddr(39 downto 0) => m03_couplers_to_control_interconnect_ARADDR(39 downto 0),
      M_AXI_arready => m03_couplers_to_control_interconnect_ARREADY,
      M_AXI_arvalid => m03_couplers_to_control_interconnect_ARVALID,
      M_AXI_awaddr(39 downto 0) => m03_couplers_to_control_interconnect_AWADDR(39 downto 0),
      M_AXI_awready => m03_couplers_to_control_interconnect_AWREADY,
      M_AXI_awvalid => m03_couplers_to_control_interconnect_AWVALID,
      M_AXI_bready => m03_couplers_to_control_interconnect_BREADY,
      M_AXI_bresp(1 downto 0) => m03_couplers_to_control_interconnect_BRESP(1 downto 0),
      M_AXI_bvalid => m03_couplers_to_control_interconnect_BVALID,
      M_AXI_rdata(31 downto 0) => m03_couplers_to_control_interconnect_RDATA(31 downto 0),
      M_AXI_rready => m03_couplers_to_control_interconnect_RREADY,
      M_AXI_rresp(1 downto 0) => m03_couplers_to_control_interconnect_RRESP(1 downto 0),
      M_AXI_rvalid => m03_couplers_to_control_interconnect_RVALID,
      M_AXI_wdata(31 downto 0) => m03_couplers_to_control_interconnect_WDATA(31 downto 0),
      M_AXI_wready => m03_couplers_to_control_interconnect_WREADY,
      M_AXI_wstrb(3 downto 0) => m03_couplers_to_control_interconnect_WSTRB(3 downto 0),
      M_AXI_wvalid => m03_couplers_to_control_interconnect_WVALID,
      S_ACLK => control_interconnect_ACLK_net,
      S_ARESETN => control_interconnect_ARESETN_net,
      S_AXI_araddr(39 downto 0) => xbar_to_m03_couplers_ARADDR(159 downto 120),
      S_AXI_arready => xbar_to_m03_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m03_couplers_ARVALID(3),
      S_AXI_awaddr(39 downto 0) => xbar_to_m03_couplers_AWADDR(159 downto 120),
      S_AXI_awready => xbar_to_m03_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m03_couplers_AWVALID(3),
      S_AXI_bready => xbar_to_m03_couplers_BREADY(3),
      S_AXI_bresp(1 downto 0) => xbar_to_m03_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m03_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m03_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m03_couplers_RREADY(3),
      S_AXI_rresp(1 downto 0) => xbar_to_m03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m03_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m03_couplers_WDATA(127 downto 96),
      S_AXI_wready => xbar_to_m03_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      S_AXI_wvalid => xbar_to_m03_couplers_WVALID(3)
    );
m04_couplers: entity work.m04_couplers_imp_DKHEXI
     port map (
      M_ACLK => control_interconnect_ACLK_net,
      M_ARESETN => control_interconnect_ARESETN_net,
      M_AXI_araddr(39 downto 0) => m04_couplers_to_control_interconnect_ARADDR(39 downto 0),
      M_AXI_arready => m04_couplers_to_control_interconnect_ARREADY,
      M_AXI_arvalid => m04_couplers_to_control_interconnect_ARVALID,
      M_AXI_awaddr(39 downto 0) => m04_couplers_to_control_interconnect_AWADDR(39 downto 0),
      M_AXI_awready => m04_couplers_to_control_interconnect_AWREADY,
      M_AXI_awvalid => m04_couplers_to_control_interconnect_AWVALID,
      M_AXI_bready => m04_couplers_to_control_interconnect_BREADY,
      M_AXI_bresp(1 downto 0) => m04_couplers_to_control_interconnect_BRESP(1 downto 0),
      M_AXI_bvalid => m04_couplers_to_control_interconnect_BVALID,
      M_AXI_rdata(31 downto 0) => m04_couplers_to_control_interconnect_RDATA(31 downto 0),
      M_AXI_rready => m04_couplers_to_control_interconnect_RREADY,
      M_AXI_rresp(1 downto 0) => m04_couplers_to_control_interconnect_RRESP(1 downto 0),
      M_AXI_rvalid => m04_couplers_to_control_interconnect_RVALID,
      M_AXI_wdata(31 downto 0) => m04_couplers_to_control_interconnect_WDATA(31 downto 0),
      M_AXI_wready => m04_couplers_to_control_interconnect_WREADY,
      M_AXI_wstrb(3 downto 0) => m04_couplers_to_control_interconnect_WSTRB(3 downto 0),
      M_AXI_wvalid => m04_couplers_to_control_interconnect_WVALID,
      S_ACLK => control_interconnect_ACLK_net,
      S_ARESETN => control_interconnect_ARESETN_net,
      S_AXI_araddr(39 downto 0) => xbar_to_m04_couplers_ARADDR(199 downto 160),
      S_AXI_arready => xbar_to_m04_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m04_couplers_ARVALID(4),
      S_AXI_awaddr(39 downto 0) => xbar_to_m04_couplers_AWADDR(199 downto 160),
      S_AXI_awready => xbar_to_m04_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m04_couplers_AWVALID(4),
      S_AXI_bready => xbar_to_m04_couplers_BREADY(4),
      S_AXI_bresp(1 downto 0) => xbar_to_m04_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m04_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m04_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m04_couplers_RREADY(4),
      S_AXI_rresp(1 downto 0) => xbar_to_m04_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m04_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m04_couplers_WDATA(159 downto 128),
      S_AXI_wready => xbar_to_m04_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      S_AXI_wvalid => xbar_to_m04_couplers_WVALID(4)
    );
m05_couplers: entity work.m05_couplers_imp_1TVRB6B
     port map (
      M_ACLK => control_interconnect_ACLK_net,
      M_ARESETN => control_interconnect_ARESETN_net,
      M_AXI_araddr(39 downto 0) => m05_couplers_to_control_interconnect_ARADDR(39 downto 0),
      M_AXI_arready => m05_couplers_to_control_interconnect_ARREADY,
      M_AXI_arvalid => m05_couplers_to_control_interconnect_ARVALID,
      M_AXI_awaddr(39 downto 0) => m05_couplers_to_control_interconnect_AWADDR(39 downto 0),
      M_AXI_awready => m05_couplers_to_control_interconnect_AWREADY,
      M_AXI_awvalid => m05_couplers_to_control_interconnect_AWVALID,
      M_AXI_bready => m05_couplers_to_control_interconnect_BREADY,
      M_AXI_bresp(1 downto 0) => m05_couplers_to_control_interconnect_BRESP(1 downto 0),
      M_AXI_bvalid => m05_couplers_to_control_interconnect_BVALID,
      M_AXI_rdata(31 downto 0) => m05_couplers_to_control_interconnect_RDATA(31 downto 0),
      M_AXI_rready => m05_couplers_to_control_interconnect_RREADY,
      M_AXI_rresp(1 downto 0) => m05_couplers_to_control_interconnect_RRESP(1 downto 0),
      M_AXI_rvalid => m05_couplers_to_control_interconnect_RVALID,
      M_AXI_wdata(31 downto 0) => m05_couplers_to_control_interconnect_WDATA(31 downto 0),
      M_AXI_wready => m05_couplers_to_control_interconnect_WREADY,
      M_AXI_wstrb(3 downto 0) => m05_couplers_to_control_interconnect_WSTRB(3 downto 0),
      M_AXI_wvalid => m05_couplers_to_control_interconnect_WVALID,
      S_ACLK => control_interconnect_ACLK_net,
      S_ARESETN => control_interconnect_ARESETN_net,
      S_AXI_araddr(39 downto 0) => xbar_to_m05_couplers_ARADDR(239 downto 200),
      S_AXI_arready => xbar_to_m05_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m05_couplers_ARVALID(5),
      S_AXI_awaddr(39 downto 0) => xbar_to_m05_couplers_AWADDR(239 downto 200),
      S_AXI_awready => xbar_to_m05_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m05_couplers_AWVALID(5),
      S_AXI_bready => xbar_to_m05_couplers_BREADY(5),
      S_AXI_bresp(1 downto 0) => xbar_to_m05_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m05_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m05_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m05_couplers_RREADY(5),
      S_AXI_rresp(1 downto 0) => xbar_to_m05_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m05_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m05_couplers_WDATA(191 downto 160),
      S_AXI_wready => xbar_to_m05_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      S_AXI_wvalid => xbar_to_m05_couplers_WVALID(5)
    );
m06_couplers: entity work.m06_couplers_imp_MEFJX9
     port map (
      M_ACLK => control_interconnect_ACLK_net,
      M_ARESETN => control_interconnect_ARESETN_net,
      M_AXI_araddr(39 downto 0) => m06_couplers_to_control_interconnect_ARADDR(39 downto 0),
      M_AXI_arready => m06_couplers_to_control_interconnect_ARREADY,
      M_AXI_arvalid => m06_couplers_to_control_interconnect_ARVALID,
      M_AXI_awaddr(39 downto 0) => m06_couplers_to_control_interconnect_AWADDR(39 downto 0),
      M_AXI_awready => m06_couplers_to_control_interconnect_AWREADY,
      M_AXI_awvalid => m06_couplers_to_control_interconnect_AWVALID,
      M_AXI_bready => m06_couplers_to_control_interconnect_BREADY,
      M_AXI_bresp(1 downto 0) => m06_couplers_to_control_interconnect_BRESP(1 downto 0),
      M_AXI_bvalid => m06_couplers_to_control_interconnect_BVALID,
      M_AXI_rdata(31 downto 0) => m06_couplers_to_control_interconnect_RDATA(31 downto 0),
      M_AXI_rready => m06_couplers_to_control_interconnect_RREADY,
      M_AXI_rresp(1 downto 0) => m06_couplers_to_control_interconnect_RRESP(1 downto 0),
      M_AXI_rvalid => m06_couplers_to_control_interconnect_RVALID,
      M_AXI_wdata(31 downto 0) => m06_couplers_to_control_interconnect_WDATA(31 downto 0),
      M_AXI_wready => m06_couplers_to_control_interconnect_WREADY,
      M_AXI_wstrb(3 downto 0) => m06_couplers_to_control_interconnect_WSTRB(3 downto 0),
      M_AXI_wvalid => m06_couplers_to_control_interconnect_WVALID,
      S_ACLK => control_interconnect_ACLK_net,
      S_ARESETN => control_interconnect_ARESETN_net,
      S_AXI_araddr(39 downto 0) => xbar_to_m06_couplers_ARADDR(279 downto 240),
      S_AXI_arready => xbar_to_m06_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m06_couplers_ARVALID(6),
      S_AXI_awaddr(39 downto 0) => xbar_to_m06_couplers_AWADDR(279 downto 240),
      S_AXI_awready => xbar_to_m06_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m06_couplers_AWVALID(6),
      S_AXI_bready => xbar_to_m06_couplers_BREADY(6),
      S_AXI_bresp(1 downto 0) => xbar_to_m06_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m06_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m06_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m06_couplers_RREADY(6),
      S_AXI_rresp(1 downto 0) => xbar_to_m06_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m06_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m06_couplers_WDATA(223 downto 192),
      S_AXI_wready => xbar_to_m06_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      S_AXI_wvalid => xbar_to_m06_couplers_WVALID(6)
    );
s00_couplers: entity work.s00_couplers_imp_OS3PMI
     port map (
      M_ACLK => control_interconnect_ACLK_net,
      M_ARESETN => control_interconnect_ARESETN_net,
      M_AXI_araddr(39 downto 0) => s00_couplers_to_xbar_ARADDR(39 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(39 downto 0) => s00_couplers_to_xbar_AWADDR(39 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => control_interconnect_ACLK_net,
      S_ARESETN => control_interconnect_ARESETN_net,
      S_AXI_araddr(39 downto 0) => control_interconnect_to_s00_couplers_ARADDR(39 downto 0),
      S_AXI_arburst(1 downto 0) => control_interconnect_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => control_interconnect_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(15 downto 0) => control_interconnect_to_s00_couplers_ARID(15 downto 0),
      S_AXI_arlen(7 downto 0) => control_interconnect_to_s00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock => control_interconnect_to_s00_couplers_ARLOCK,
      S_AXI_arprot(2 downto 0) => control_interconnect_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => control_interconnect_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => control_interconnect_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => control_interconnect_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => control_interconnect_to_s00_couplers_ARVALID,
      S_AXI_awaddr(39 downto 0) => control_interconnect_to_s00_couplers_AWADDR(39 downto 0),
      S_AXI_awburst(1 downto 0) => control_interconnect_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => control_interconnect_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(15 downto 0) => control_interconnect_to_s00_couplers_AWID(15 downto 0),
      S_AXI_awlen(7 downto 0) => control_interconnect_to_s00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock => control_interconnect_to_s00_couplers_AWLOCK,
      S_AXI_awprot(2 downto 0) => control_interconnect_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => control_interconnect_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => control_interconnect_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => control_interconnect_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => control_interconnect_to_s00_couplers_AWVALID,
      S_AXI_bid(15 downto 0) => control_interconnect_to_s00_couplers_BID(15 downto 0),
      S_AXI_bready => control_interconnect_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => control_interconnect_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => control_interconnect_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => control_interconnect_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rid(15 downto 0) => control_interconnect_to_s00_couplers_RID(15 downto 0),
      S_AXI_rlast => control_interconnect_to_s00_couplers_RLAST,
      S_AXI_rready => control_interconnect_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => control_interconnect_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => control_interconnect_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => control_interconnect_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wlast => control_interconnect_to_s00_couplers_WLAST,
      S_AXI_wready => control_interconnect_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => control_interconnect_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => control_interconnect_to_s00_couplers_WVALID
    );
xbar: component mts_xbar_0
     port map (
      aclk => control_interconnect_ACLK_net,
      aresetn => control_interconnect_ARESETN_net,
      m_axi_araddr(279 downto 240) => xbar_to_m06_couplers_ARADDR(279 downto 240),
      m_axi_araddr(239 downto 200) => xbar_to_m05_couplers_ARADDR(239 downto 200),
      m_axi_araddr(199 downto 160) => xbar_to_m04_couplers_ARADDR(199 downto 160),
      m_axi_araddr(159 downto 120) => xbar_to_m03_couplers_ARADDR(159 downto 120),
      m_axi_araddr(119 downto 80) => xbar_to_m02_couplers_ARADDR(119 downto 80),
      m_axi_araddr(79 downto 40) => xbar_to_m01_couplers_ARADDR(79 downto 40),
      m_axi_araddr(39 downto 0) => xbar_to_m00_couplers_ARADDR(39 downto 0),
      m_axi_arprot(20 downto 6) => NLW_xbar_m_axi_arprot_UNCONNECTED(20 downto 6),
      m_axi_arprot(5 downto 3) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      m_axi_arprot(2 downto 0) => NLW_xbar_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready(6) => xbar_to_m06_couplers_ARREADY,
      m_axi_arready(5) => xbar_to_m05_couplers_ARREADY,
      m_axi_arready(4) => xbar_to_m04_couplers_ARREADY,
      m_axi_arready(3) => xbar_to_m03_couplers_ARREADY,
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY(0),
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arvalid(6) => xbar_to_m06_couplers_ARVALID(6),
      m_axi_arvalid(5) => xbar_to_m05_couplers_ARVALID(5),
      m_axi_arvalid(4) => xbar_to_m04_couplers_ARVALID(4),
      m_axi_arvalid(3) => xbar_to_m03_couplers_ARVALID(3),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(279 downto 240) => xbar_to_m06_couplers_AWADDR(279 downto 240),
      m_axi_awaddr(239 downto 200) => xbar_to_m05_couplers_AWADDR(239 downto 200),
      m_axi_awaddr(199 downto 160) => xbar_to_m04_couplers_AWADDR(199 downto 160),
      m_axi_awaddr(159 downto 120) => xbar_to_m03_couplers_AWADDR(159 downto 120),
      m_axi_awaddr(119 downto 80) => xbar_to_m02_couplers_AWADDR(119 downto 80),
      m_axi_awaddr(79 downto 40) => xbar_to_m01_couplers_AWADDR(79 downto 40),
      m_axi_awaddr(39 downto 0) => xbar_to_m00_couplers_AWADDR(39 downto 0),
      m_axi_awprot(20 downto 6) => NLW_xbar_m_axi_awprot_UNCONNECTED(20 downto 6),
      m_axi_awprot(5 downto 3) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      m_axi_awprot(2 downto 0) => NLW_xbar_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready(6) => xbar_to_m06_couplers_AWREADY,
      m_axi_awready(5) => xbar_to_m05_couplers_AWREADY,
      m_axi_awready(4) => xbar_to_m04_couplers_AWREADY,
      m_axi_awready(3) => xbar_to_m03_couplers_AWREADY,
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY(0),
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awvalid(6) => xbar_to_m06_couplers_AWVALID(6),
      m_axi_awvalid(5) => xbar_to_m05_couplers_AWVALID(5),
      m_axi_awvalid(4) => xbar_to_m04_couplers_AWVALID(4),
      m_axi_awvalid(3) => xbar_to_m03_couplers_AWVALID(3),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(6) => xbar_to_m06_couplers_BREADY(6),
      m_axi_bready(5) => xbar_to_m05_couplers_BREADY(5),
      m_axi_bready(4) => xbar_to_m04_couplers_BREADY(4),
      m_axi_bready(3) => xbar_to_m03_couplers_BREADY(3),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(13 downto 12) => xbar_to_m06_couplers_BRESP(1 downto 0),
      m_axi_bresp(11 downto 10) => xbar_to_m05_couplers_BRESP(1 downto 0),
      m_axi_bresp(9 downto 8) => xbar_to_m04_couplers_BRESP(1 downto 0),
      m_axi_bresp(7 downto 6) => xbar_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3) => xbar_to_m01_couplers_BRESP,
      m_axi_bresp(2) => xbar_to_m01_couplers_BRESP,
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(6) => xbar_to_m06_couplers_BVALID,
      m_axi_bvalid(5) => xbar_to_m05_couplers_BVALID,
      m_axi_bvalid(4) => xbar_to_m04_couplers_BVALID,
      m_axi_bvalid(3) => xbar_to_m03_couplers_BVALID,
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID(0),
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(223 downto 192) => xbar_to_m06_couplers_RDATA(31 downto 0),
      m_axi_rdata(191 downto 160) => xbar_to_m05_couplers_RDATA(31 downto 0),
      m_axi_rdata(159 downto 128) => xbar_to_m04_couplers_RDATA(31 downto 0),
      m_axi_rdata(127 downto 96) => xbar_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(62) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(61) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(60) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(59) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(58) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(57) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(56) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(55) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(54) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(53) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(52) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(51) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(50) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(49) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(48) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(47) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(46) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(45) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(44) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(43) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(42) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(41) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(40) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(39) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(38) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(37) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(36) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(35) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(34) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(33) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(32) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(6) => xbar_to_m06_couplers_RREADY(6),
      m_axi_rready(5) => xbar_to_m05_couplers_RREADY(5),
      m_axi_rready(4) => xbar_to_m04_couplers_RREADY(4),
      m_axi_rready(3) => xbar_to_m03_couplers_RREADY(3),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(13 downto 12) => xbar_to_m06_couplers_RRESP(1 downto 0),
      m_axi_rresp(11 downto 10) => xbar_to_m05_couplers_RRESP(1 downto 0),
      m_axi_rresp(9 downto 8) => xbar_to_m04_couplers_RRESP(1 downto 0),
      m_axi_rresp(7 downto 6) => xbar_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3) => xbar_to_m01_couplers_RRESP,
      m_axi_rresp(2) => xbar_to_m01_couplers_RRESP,
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(6) => xbar_to_m06_couplers_RVALID,
      m_axi_rvalid(5) => xbar_to_m05_couplers_RVALID,
      m_axi_rvalid(4) => xbar_to_m04_couplers_RVALID,
      m_axi_rvalid(3) => xbar_to_m03_couplers_RVALID,
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID(0),
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(223 downto 192) => xbar_to_m06_couplers_WDATA(223 downto 192),
      m_axi_wdata(191 downto 160) => xbar_to_m05_couplers_WDATA(191 downto 160),
      m_axi_wdata(159 downto 128) => xbar_to_m04_couplers_WDATA(159 downto 128),
      m_axi_wdata(127 downto 96) => xbar_to_m03_couplers_WDATA(127 downto 96),
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(6) => xbar_to_m06_couplers_WREADY,
      m_axi_wready(5) => xbar_to_m05_couplers_WREADY,
      m_axi_wready(4) => xbar_to_m04_couplers_WREADY,
      m_axi_wready(3) => xbar_to_m03_couplers_WREADY,
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY(0),
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(27 downto 24) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      m_axi_wstrb(23 downto 20) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      m_axi_wstrb(19 downto 16) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      m_axi_wstrb(15 downto 12) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(6) => xbar_to_m06_couplers_WVALID(6),
      m_axi_wvalid(5) => xbar_to_m05_couplers_WVALID(5),
      m_axi_wvalid(4) => xbar_to_m04_couplers_WVALID(4),
      m_axi_wvalid(3) => xbar_to_m03_couplers_WVALID(3),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(39 downto 0) => s00_couplers_to_xbar_ARADDR(39 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(39 downto 0) => s00_couplers_to_xbar_AWADDR(39 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mts is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of mts : entity is "mts,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=mts,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=32,numReposBlks=21,numNonXlnxBlks=1,numHierBlks=11,maxHierDepth=1,numSysgenBlks=1,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=1,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of mts : entity is "mts.hwdef";
end mts;

architecture STRUCTURE of mts is
  component mts_system_management_wiz_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    vp : in STD_LOGIC;
    vn : in STD_LOGIC;
    channel_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    eoc_out : out STD_LOGIC;
    alarm_out : out STD_LOGIC;
    eos_out : out STD_LOGIC;
    busy_out : out STD_LOGIC
  );
  end component mts_system_management_wiz_0_0;
  component mts_usp_rf_data_converter_1_0 is
  port (
    clk_adc0 : out STD_LOGIC;
    clk_adc1 : out STD_LOGIC;
    adc2_clk_p : in STD_LOGIC;
    adc2_clk_n : in STD_LOGIC;
    clk_adc2 : out STD_LOGIC;
    clk_adc3 : out STD_LOGIC;
    clk_dac0 : out STD_LOGIC;
    clk_dac1 : out STD_LOGIC;
    dac2_clk_p : in STD_LOGIC;
    dac2_clk_n : in STD_LOGIC;
    clk_dac2 : out STD_LOGIC;
    clk_dac3 : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    irq : out STD_LOGIC;
    sysref_in_p : in STD_LOGIC;
    sysref_in_n : in STD_LOGIC;
    user_sysref_adc : in STD_LOGIC;
    user_sysref_dac : in STD_LOGIC;
    vin0_01_p : in STD_LOGIC;
    vin0_01_n : in STD_LOGIC;
    vin0_23_p : in STD_LOGIC;
    vin0_23_n : in STD_LOGIC;
    vin1_01_p : in STD_LOGIC;
    vin1_01_n : in STD_LOGIC;
    vin2_01_p : in STD_LOGIC;
    vin2_01_n : in STD_LOGIC;
    vin2_23_p : in STD_LOGIC;
    vin2_23_n : in STD_LOGIC;
    vin3_01_p : in STD_LOGIC;
    vin3_01_n : in STD_LOGIC;
    vout00_p : out STD_LOGIC;
    vout00_n : out STD_LOGIC;
    vout10_p : out STD_LOGIC;
    vout10_n : out STD_LOGIC;
    vout20_p : out STD_LOGIC;
    vout20_n : out STD_LOGIC;
    vout30_p : out STD_LOGIC;
    vout30_n : out STD_LOGIC;
    m0_axis_aresetn : in STD_LOGIC;
    m0_axis_aclk : in STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    m01_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m01_axis_tvalid : out STD_LOGIC;
    m01_axis_tready : in STD_LOGIC;
    m02_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m02_axis_tvalid : out STD_LOGIC;
    m02_axis_tready : in STD_LOGIC;
    m03_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m03_axis_tvalid : out STD_LOGIC;
    m03_axis_tready : in STD_LOGIC;
    m1_axis_aresetn : in STD_LOGIC;
    m1_axis_aclk : in STD_LOGIC;
    m10_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m10_axis_tvalid : out STD_LOGIC;
    m10_axis_tready : in STD_LOGIC;
    m11_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m11_axis_tvalid : out STD_LOGIC;
    m11_axis_tready : in STD_LOGIC;
    m2_axis_aresetn : in STD_LOGIC;
    m2_axis_aclk : in STD_LOGIC;
    m20_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m20_axis_tvalid : out STD_LOGIC;
    m20_axis_tready : in STD_LOGIC;
    m21_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m21_axis_tvalid : out STD_LOGIC;
    m21_axis_tready : in STD_LOGIC;
    m22_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m22_axis_tvalid : out STD_LOGIC;
    m22_axis_tready : in STD_LOGIC;
    m23_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m23_axis_tvalid : out STD_LOGIC;
    m23_axis_tready : in STD_LOGIC;
    m3_axis_aresetn : in STD_LOGIC;
    m3_axis_aclk : in STD_LOGIC;
    m30_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m30_axis_tvalid : out STD_LOGIC;
    m30_axis_tready : in STD_LOGIC;
    m31_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m31_axis_tvalid : out STD_LOGIC;
    m31_axis_tready : in STD_LOGIC;
    s0_axis_aresetn : in STD_LOGIC;
    s0_axis_aclk : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    s1_axis_aresetn : in STD_LOGIC;
    s1_axis_aclk : in STD_LOGIC;
    s10_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s10_axis_tvalid : in STD_LOGIC;
    s10_axis_tready : out STD_LOGIC;
    s2_axis_aresetn : in STD_LOGIC;
    s2_axis_aclk : in STD_LOGIC;
    s20_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s20_axis_tvalid : in STD_LOGIC;
    s20_axis_tready : out STD_LOGIC;
    s3_axis_aresetn : in STD_LOGIC;
    s3_axis_aclk : in STD_LOGIC;
    s30_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s30_axis_tvalid : in STD_LOGIC;
    s30_axis_tready : out STD_LOGIC
  );
  end component mts_usp_rf_data_converter_1_0;
  component mts_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component mts_xlconcat_0_0;
  component mts_zynq_ultra_ps_e_0_0 is
  port (
    maxihpm0_fpd_aclk : in STD_LOGIC;
    maxigp0_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp0_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp0_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp0_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp0_awlock : out STD_LOGIC;
    maxigp0_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp0_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp0_awvalid : out STD_LOGIC;
    maxigp0_awuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_awready : in STD_LOGIC;
    maxigp0_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    maxigp0_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_wlast : out STD_LOGIC;
    maxigp0_wvalid : out STD_LOGIC;
    maxigp0_wready : in STD_LOGIC;
    maxigp0_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp0_bvalid : in STD_LOGIC;
    maxigp0_bready : out STD_LOGIC;
    maxigp0_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp0_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp0_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp0_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp0_arlock : out STD_LOGIC;
    maxigp0_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp0_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp0_arvalid : out STD_LOGIC;
    maxigp0_aruser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_arready : in STD_LOGIC;
    maxigp0_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    maxigp0_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp0_rlast : in STD_LOGIC;
    maxigp0_rvalid : in STD_LOGIC;
    maxigp0_rready : out STD_LOGIC;
    maxigp0_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp0_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxihpm1_fpd_aclk : in STD_LOGIC;
    maxigp1_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp1_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp1_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp1_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp1_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp1_awlock : out STD_LOGIC;
    maxigp1_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp1_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp1_awvalid : out STD_LOGIC;
    maxigp1_awuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp1_awready : in STD_LOGIC;
    maxigp1_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    maxigp1_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp1_wlast : out STD_LOGIC;
    maxigp1_wvalid : out STD_LOGIC;
    maxigp1_wready : in STD_LOGIC;
    maxigp1_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp1_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp1_bvalid : in STD_LOGIC;
    maxigp1_bready : out STD_LOGIC;
    maxigp1_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp1_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp1_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp1_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp1_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp1_arlock : out STD_LOGIC;
    maxigp1_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp1_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp1_arvalid : out STD_LOGIC;
    maxigp1_aruser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp1_arready : in STD_LOGIC;
    maxigp1_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp1_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    maxigp1_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp1_rlast : in STD_LOGIC;
    maxigp1_rvalid : in STD_LOGIC;
    maxigp1_rready : out STD_LOGIC;
    maxigp1_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp1_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxihpm0_lpd_aclk : in STD_LOGIC;
    maxigp2_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp2_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp2_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_awlock : out STD_LOGIC;
    maxigp2_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp2_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_awvalid : out STD_LOGIC;
    maxigp2_awuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_awready : in STD_LOGIC;
    maxigp2_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    maxigp2_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp2_wlast : out STD_LOGIC;
    maxigp2_wvalid : out STD_LOGIC;
    maxigp2_wready : in STD_LOGIC;
    maxigp2_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_bvalid : in STD_LOGIC;
    maxigp2_bready : out STD_LOGIC;
    maxigp2_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp2_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp2_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_arlock : out STD_LOGIC;
    maxigp2_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp2_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_arvalid : out STD_LOGIC;
    maxigp2_aruser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_arready : in STD_LOGIC;
    maxigp2_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    maxigp2_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_rlast : in STD_LOGIC;
    maxigp2_rvalid : in STD_LOGIC;
    maxigp2_rready : out STD_LOGIC;
    maxigp2_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp2_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pl_ps_irq0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pl_resetn0 : out STD_LOGIC;
    pl_clk0 : out STD_LOGIC
  );
  end component mts_zynq_ultra_ps_e_0_0;
  component mts_IQ_product_0_0 is
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
  end component mts_IQ_product_0_0;
  component mts_ila_0_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe15 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe16 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe17 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe18 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe19 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    probe20 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe21 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe22 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe23 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe24 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe25 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe26 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe27 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component mts_ila_0_0;
  component mts_c_counter_binary_0_0 is
  port (
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  end component mts_c_counter_binary_0_0;
  component mts_blk_mem_gen_0_5 is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component mts_blk_mem_gen_0_5;
  component mts_vio_0_0 is
  port (
    clk : in STD_LOGIC;
    probe_out0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    probe_out1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    probe_out2 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component mts_vio_0_0;
  signal BUFG_I_0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal IQ_product_0_gateway_out : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal IQ_product_0_gateway_out1 : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal IQ_product_0_gateway_out10 : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal IQ_product_0_gateway_out11 : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal IQ_product_0_gateway_out12 : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal IQ_product_0_gateway_out13 : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal IQ_product_0_gateway_out14 : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal IQ_product_0_gateway_out15 : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal IQ_product_0_gateway_out16 : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal IQ_product_0_gateway_out17 : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal IQ_product_0_gateway_out18 : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal IQ_product_0_gateway_out19 : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal IQ_product_0_gateway_out2 : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal IQ_product_0_gateway_out3 : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal IQ_product_0_gateway_out4 : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal IQ_product_0_gateway_out5 : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal IQ_product_0_gateway_out6 : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal IQ_product_0_gateway_out7 : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal IQ_product_0_gateway_out8 : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal IQ_product_0_gateway_out9 : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal RFingressReset_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI1_1_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal S_AXI1_1_ARREADY : STD_LOGIC;
  signal S_AXI1_1_ARVALID : STD_LOGIC;
  signal S_AXI1_1_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal S_AXI1_1_AWREADY : STD_LOGIC;
  signal S_AXI1_1_AWVALID : STD_LOGIC;
  signal S_AXI1_1_BREADY : STD_LOGIC;
  signal S_AXI1_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI1_1_BVALID : STD_LOGIC;
  signal S_AXI1_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI1_1_RREADY : STD_LOGIC;
  signal S_AXI1_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI1_1_RVALID : STD_LOGIC;
  signal S_AXI1_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI1_1_WREADY : STD_LOGIC;
  signal S_AXI1_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI1_1_WVALID : STD_LOGIC;
  signal S_AXI2_1_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal S_AXI2_1_ARREADY : STD_LOGIC;
  signal S_AXI2_1_ARVALID : STD_LOGIC;
  signal S_AXI2_1_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal S_AXI2_1_AWREADY : STD_LOGIC;
  signal S_AXI2_1_AWVALID : STD_LOGIC;
  signal S_AXI2_1_BREADY : STD_LOGIC;
  signal S_AXI2_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI2_1_BVALID : STD_LOGIC;
  signal S_AXI2_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI2_1_RREADY : STD_LOGIC;
  signal S_AXI2_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI2_1_RVALID : STD_LOGIC;
  signal S_AXI2_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI2_1_WREADY : STD_LOGIC;
  signal S_AXI2_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI2_1_WVALID : STD_LOGIC;
  signal S_AXI_3_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal S_AXI_3_ARREADY : STD_LOGIC;
  signal S_AXI_3_ARVALID : STD_LOGIC;
  signal S_AXI_3_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal S_AXI_3_AWREADY : STD_LOGIC;
  signal S_AXI_3_AWVALID : STD_LOGIC;
  signal S_AXI_3_BREADY : STD_LOGIC;
  signal S_AXI_3_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_3_BVALID : STD_LOGIC;
  signal S_AXI_3_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_3_RREADY : STD_LOGIC;
  signal S_AXI_3_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_3_RVALID : STD_LOGIC;
  signal S_AXI_3_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_3_WREADY : STD_LOGIC;
  signal S_AXI_3_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_3_WVALID : STD_LOGIC;
  signal adc2_clk_0_1_CLK_N : STD_LOGIC;
  signal adc2_clk_0_1_CLK_P : STD_LOGIC;
  signal blk_mem_gen_1_douta : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal c_counter_binary_0_Q : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal clk_wiz_adc0_clk_out2 : STD_LOGIC;
  signal clocktreeMTS_interrupt : STD_LOGIC;
  signal control_interconnect_M06_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal control_interconnect_M06_AXI_ARREADY : STD_LOGIC;
  signal control_interconnect_M06_AXI_ARVALID : STD_LOGIC;
  signal control_interconnect_M06_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal control_interconnect_M06_AXI_AWREADY : STD_LOGIC;
  signal control_interconnect_M06_AXI_AWVALID : STD_LOGIC;
  signal control_interconnect_M06_AXI_BREADY : STD_LOGIC;
  signal control_interconnect_M06_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_interconnect_M06_AXI_BVALID : STD_LOGIC;
  signal control_interconnect_M06_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal control_interconnect_M06_AXI_RREADY : STD_LOGIC;
  signal control_interconnect_M06_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_interconnect_M06_AXI_RVALID : STD_LOGIC;
  signal control_interconnect_M06_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal control_interconnect_M06_AXI_WREADY : STD_LOGIC;
  signal control_interconnect_M06_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal control_interconnect_M06_AXI_WVALID : STD_LOGIC;
  signal dac2_clk_0_1_CLK_N : STD_LOGIC;
  signal dac2_clk_0_1_CLK_P : STD_LOGIC;
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal ps8_0_axi_periph_M00_AXI_ARREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_ARVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal ps8_0_axi_periph_M00_AXI_AWREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_AWVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_BREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_M00_AXI_BVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps8_0_axi_periph_M00_AXI_RREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_M00_AXI_RVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps8_0_axi_periph_M00_AXI_WREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps8_0_axi_periph_M00_AXI_WVALID : STD_LOGIC;
  signal s_axi_lite_1_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s_axi_lite_1_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_lite_1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_lite_1_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s_axi_lite_1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_lite_1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_lite_1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_lite_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axi_lite_1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_lite_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_lite_1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_lite_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axi_lite_1_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_lite_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_lite_1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_lite_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_axi_lite_1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal src_in_0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal synchronizeSYSREF_dest_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sysref_in_0_1_diff_n : STD_LOGIC;
  signal sysref_in_0_1_diff_p : STD_LOGIC;
  signal system_management_wiz_0_ip2intc_irpt : STD_LOGIC;
  signal usp_rf_data_converter_1_irq : STD_LOGIC;
  signal usp_rf_data_converter_1_m00_axis_tdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal usp_rf_data_converter_1_m01_axis_tdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal usp_rf_data_converter_1_m02_axis_tdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal usp_rf_data_converter_1_m03_axis_tdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal usp_rf_data_converter_1_m20_axis_tdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal usp_rf_data_converter_1_m21_axis_tdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal usp_rf_data_converter_1_m22_axis_tdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal usp_rf_data_converter_1_m23_axis_tdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal usp_rf_data_converter_1_vout00_V_N : STD_LOGIC;
  signal usp_rf_data_converter_1_vout00_V_P : STD_LOGIC;
  signal usp_rf_data_converter_1_vout10_V_N : STD_LOGIC;
  signal usp_rf_data_converter_1_vout10_V_P : STD_LOGIC;
  signal usp_rf_data_converter_1_vout20_V_N : STD_LOGIC;
  signal usp_rf_data_converter_1_vout20_V_P : STD_LOGIC;
  signal vin0_01_0_1_V_N : STD_LOGIC;
  signal vin0_01_0_1_V_P : STD_LOGIC;
  signal vin0_23_1_1_V_N : STD_LOGIC;
  signal vin0_23_1_1_V_P : STD_LOGIC;
  signal vin1_01_0_1_V_N : STD_LOGIC;
  signal vin1_01_0_1_V_P : STD_LOGIC;
  signal vin2_01_0_1_V_N : STD_LOGIC;
  signal vin2_01_0_1_V_P : STD_LOGIC;
  signal vin2_23_0_1_V_N : STD_LOGIC;
  signal vin2_23_0_1_V_P : STD_LOGIC;
  signal vio_0_probe_out0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal vio_0_probe_out1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_pl_clk0 : STD_LOGIC;
  signal zynq_ultra_ps_e_0_pl_resetn0 : STD_LOGIC;
  signal NLW_clocktreeMTS_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_clocktreeMTS_egress_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_control_interconnect_M01_AXI_araddr_UNCONNECTED : STD_LOGIC;
  signal NLW_control_interconnect_M01_AXI_arprot_UNCONNECTED : STD_LOGIC;
  signal NLW_control_interconnect_M01_AXI_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_control_interconnect_M01_AXI_awaddr_UNCONNECTED : STD_LOGIC;
  signal NLW_control_interconnect_M01_AXI_awprot_UNCONNECTED : STD_LOGIC;
  signal NLW_control_interconnect_M01_AXI_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_control_interconnect_M01_AXI_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_control_interconnect_M01_AXI_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_control_interconnect_M01_AXI_wdata_UNCONNECTED : STD_LOGIC;
  signal NLW_control_interconnect_M01_AXI_wstrb_UNCONNECTED : STD_LOGIC;
  signal NLW_control_interconnect_M01_AXI_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_gpio_control_dac_enable_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_gpio_control_fifoflush_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_gpio_control_trig_cap_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_system_management_wiz_0_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_system_management_wiz_0_busy_out_UNCONNECTED : STD_LOGIC;
  signal NLW_system_management_wiz_0_eoc_out_UNCONNECTED : STD_LOGIC;
  signal NLW_system_management_wiz_0_eos_out_UNCONNECTED : STD_LOGIC;
  signal NLW_system_management_wiz_0_channel_out_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_usp_rf_data_converter_1_clk_adc0_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_clk_adc1_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_clk_adc2_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_clk_adc3_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_clk_dac0_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_clk_dac1_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_clk_dac2_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_clk_dac3_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_m00_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_m01_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_m02_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_m03_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_m10_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_m11_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_m20_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_m21_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_m22_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_m23_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_m30_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_m31_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_s00_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_s10_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_s20_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_s30_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_vout30_n_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_vout30_p_UNCONNECTED : STD_LOGIC;
  signal NLW_usp_rf_data_converter_1_m10_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_usp_rf_data_converter_1_m11_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_usp_rf_data_converter_1_m30_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_usp_rf_data_converter_1_m31_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_vio_0_probe_out2_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp0_arlock_UNCONNECTED : STD_LOGIC;
  signal NLW_zynq_ultra_ps_e_0_maxigp0_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_zynq_ultra_ps_e_0_maxigp0_awlock_UNCONNECTED : STD_LOGIC;
  signal NLW_zynq_ultra_ps_e_0_maxigp0_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_zynq_ultra_ps_e_0_maxigp0_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_zynq_ultra_ps_e_0_maxigp0_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_zynq_ultra_ps_e_0_maxigp0_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_zynq_ultra_ps_e_0_maxigp0_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_zynq_ultra_ps_e_0_maxigp1_arlock_UNCONNECTED : STD_LOGIC;
  signal NLW_zynq_ultra_ps_e_0_maxigp1_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_zynq_ultra_ps_e_0_maxigp1_awlock_UNCONNECTED : STD_LOGIC;
  signal NLW_zynq_ultra_ps_e_0_maxigp1_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_zynq_ultra_ps_e_0_maxigp1_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_zynq_ultra_ps_e_0_maxigp1_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_zynq_ultra_ps_e_0_maxigp1_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_zynq_ultra_ps_e_0_maxigp1_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_zynq_ultra_ps_e_0_maxigp0_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp0_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp0_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp0_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp0_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp0_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp0_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp0_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp0_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp0_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp0_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp0_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp0_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp0_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp0_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp0_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp0_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp0_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp0_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp0_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp1_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp1_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp1_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp1_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp1_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp1_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp1_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp1_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp1_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp1_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp1_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp1_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp1_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp1_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp1_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp1_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp1_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp1_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp1_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp1_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp2_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp2_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of adc2_clk_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 adc2_clk CLK_N";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of adc2_clk_clk_n : signal is "XIL_INTERFACENAME adc2_clk, CAN_DEBUG false, FREQ_HZ 100000000";
  attribute X_INTERFACE_INFO of adc2_clk_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 adc2_clk CLK_P";
  attribute X_INTERFACE_INFO of dac2_clk_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 dac2_clk CLK_N";
  attribute X_INTERFACE_PARAMETER of dac2_clk_clk_n : signal is "XIL_INTERFACENAME dac2_clk, CAN_DEBUG false, FREQ_HZ 100000000";
  attribute X_INTERFACE_INFO of dac2_clk_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 dac2_clk CLK_P";
  attribute X_INTERFACE_INFO of sysref_in_diff_n : signal is "xilinx.com:display_usp_rf_data_converter:diff_pins:1.0 sysref_in diff_n";
  attribute X_INTERFACE_INFO of sysref_in_diff_p : signal is "xilinx.com:display_usp_rf_data_converter:diff_pins:1.0 sysref_in diff_p";
  attribute X_INTERFACE_INFO of vin0_01_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 vin0_01 V_N";
  attribute X_INTERFACE_INFO of vin0_01_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 vin0_01 V_P";
  attribute X_INTERFACE_INFO of vin0_23_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 vin0_23 V_N";
  attribute X_INTERFACE_INFO of vin0_23_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 vin0_23 V_P";
  attribute X_INTERFACE_INFO of vin1_01_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 vin1_01 V_N";
  attribute X_INTERFACE_INFO of vin1_01_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 vin1_01 V_P";
  attribute X_INTERFACE_INFO of vin2_01_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 vin2_01 V_N";
  attribute X_INTERFACE_INFO of vin2_01_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 vin2_01 V_P";
  attribute X_INTERFACE_INFO of vin2_23_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 vin2_23 V_N";
  attribute X_INTERFACE_INFO of vin2_23_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 vin2_23 V_P";
  attribute X_INTERFACE_INFO of vout00_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 vout00 V_N";
  attribute X_INTERFACE_INFO of vout00_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 vout00 V_P";
  attribute X_INTERFACE_INFO of vout10_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 vout10 V_N";
  attribute X_INTERFACE_INFO of vout10_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 vout10 V_P";
  attribute X_INTERFACE_INFO of vout20_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 vout20 V_N";
  attribute X_INTERFACE_INFO of vout20_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 vout20 V_P";
  attribute X_INTERFACE_INFO of PL_CLK : signal is "xilinx.com:signal:clock:1.0 CLK.PL_CLK CLK";
  attribute X_INTERFACE_PARAMETER of PL_CLK : signal is "XIL_INTERFACENAME CLK.PL_CLK, CLK_DOMAIN mts_PL_CLK, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  BUFG_I_0_1(0) <= PL_CLK(0);
  adc2_clk_0_1_CLK_N <= adc2_clk_clk_n;
  adc2_clk_0_1_CLK_P <= adc2_clk_clk_p;
  dac2_clk_0_1_CLK_N <= dac2_clk_clk_n;
  dac2_clk_0_1_CLK_P <= dac2_clk_clk_p;
  src_in_0_1(0) <= PL_SYSREF(0);
  sysref_in_0_1_diff_n <= sysref_in_diff_n;
  sysref_in_0_1_diff_p <= sysref_in_diff_p;
  vin0_01_0_1_V_N <= vin0_01_v_n;
  vin0_01_0_1_V_P <= vin0_01_v_p;
  vin0_23_1_1_V_N <= vin0_23_v_n;
  vin0_23_1_1_V_P <= vin0_23_v_p;
  vin1_01_0_1_V_N <= vin1_01_v_n;
  vin1_01_0_1_V_P <= vin1_01_v_p;
  vin2_01_0_1_V_N <= vin2_01_v_n;
  vin2_01_0_1_V_P <= vin2_01_v_p;
  vin2_23_0_1_V_N <= vin2_23_v_n;
  vin2_23_0_1_V_P <= vin2_23_v_p;
  vout00_v_n <= usp_rf_data_converter_1_vout00_V_N;
  vout00_v_p <= usp_rf_data_converter_1_vout00_V_P;
  vout10_v_n <= usp_rf_data_converter_1_vout10_V_N;
  vout10_v_p <= usp_rf_data_converter_1_vout10_V_P;
  vout20_v_n <= usp_rf_data_converter_1_vout20_V_N;
  vout20_v_p <= usp_rf_data_converter_1_vout20_V_P;
IQ_product_0: component mts_IQ_product_0_0
     port map (
      clk => clk_wiz_0_clk_out1,
      gateway_out(32 downto 0) => IQ_product_0_gateway_out(32 downto 0),
      gateway_out1(32 downto 0) => IQ_product_0_gateway_out1(32 downto 0),
      gateway_out10(32 downto 0) => IQ_product_0_gateway_out10(32 downto 0),
      gateway_out11(32 downto 0) => IQ_product_0_gateway_out11(32 downto 0),
      gateway_out12(32 downto 0) => IQ_product_0_gateway_out12(32 downto 0),
      gateway_out13(32 downto 0) => IQ_product_0_gateway_out13(32 downto 0),
      gateway_out14(32 downto 0) => IQ_product_0_gateway_out14(32 downto 0),
      gateway_out15(32 downto 0) => IQ_product_0_gateway_out15(32 downto 0),
      gateway_out16(32 downto 0) => IQ_product_0_gateway_out16(32 downto 0),
      gateway_out17(32 downto 0) => IQ_product_0_gateway_out17(32 downto 0),
      gateway_out18(32 downto 0) => IQ_product_0_gateway_out18(32 downto 0),
      gateway_out19(32 downto 0) => IQ_product_0_gateway_out19(32 downto 0),
      gateway_out2(32 downto 0) => IQ_product_0_gateway_out2(32 downto 0),
      gateway_out3(32 downto 0) => IQ_product_0_gateway_out3(32 downto 0),
      gateway_out4(32 downto 0) => IQ_product_0_gateway_out4(32 downto 0),
      gateway_out5(32 downto 0) => IQ_product_0_gateway_out5(32 downto 0),
      gateway_out6(32 downto 0) => IQ_product_0_gateway_out6(32 downto 0),
      gateway_out7(32 downto 0) => IQ_product_0_gateway_out7(32 downto 0),
      gateway_out8(32 downto 0) => IQ_product_0_gateway_out8(32 downto 0),
      gateway_out9(32 downto 0) => IQ_product_0_gateway_out9(32 downto 0),
      i1(15 downto 0) => usp_rf_data_converter_1_m00_axis_tdata(15 downto 0),
      i2(15 downto 0) => usp_rf_data_converter_1_m02_axis_tdata(15 downto 0),
      i3(15 downto 0) => usp_rf_data_converter_1_m20_axis_tdata(15 downto 0),
      i4(15 downto 0) => usp_rf_data_converter_1_m22_axis_tdata(15 downto 0),
      q1(15 downto 0) => usp_rf_data_converter_1_m01_axis_tdata(15 downto 0),
      q2(15 downto 0) => usp_rf_data_converter_1_m03_axis_tdata(15 downto 0),
      q3(15 downto 0) => usp_rf_data_converter_1_m21_axis_tdata(15 downto 0),
      q4(15 downto 0) => usp_rf_data_converter_1_m23_axis_tdata(15 downto 0)
    );
blk_mem_gen_1: component mts_blk_mem_gen_0_5
     port map (
      addra(13 downto 0) => c_counter_binary_0_Q(13 downto 0),
      clka => clk_wiz_0_clk_out1,
      dina(15 downto 0) => B"0000000000001000",
      douta(15 downto 0) => blk_mem_gen_1_douta(15 downto 0),
      ena => vio_0_probe_out0(0),
      wea(0) => '0'
    );
c_counter_binary_0: component mts_c_counter_binary_0_0
     port map (
      CLK => clk_wiz_0_clk_out1,
      Q(13 downto 0) => c_counter_binary_0_Q(13 downto 0)
    );
clocktreeMTS: entity work.clocktreeMTS_imp_ZMYI0T
     port map (
      PL_CLK(0) => BUFG_I_0_1(0),
      PL_SYSREF(0) => src_in_0_1(0),
      UserSYSREF(0) => synchronizeSYSREF_dest_out(0),
      bus_struct_reset(0) => NLW_clocktreeMTS_bus_struct_reset_UNCONNECTED(0),
      clkRF => clk_wiz_0_clk_out1,
      clkRFdiv2 => clk_wiz_adc0_clk_out2,
      egress_aresetn(0) => NLW_clocktreeMTS_egress_aresetn_UNCONNECTED(0),
      ext_reset_in => zynq_ultra_ps_e_0_pl_resetn0,
      ingress_aresetn(0) => RFingressReset_peripheral_aresetn(0),
      interrupt => clocktreeMTS_interrupt,
      s_axi_aclk => zynq_ultra_ps_e_0_pl_clk0,
      s_axi_aresetn(0) => proc_sys_reset_0_peripheral_aresetn(0),
      s_axi_lite_araddr(39 downto 0) => s_axi_lite_1_ARADDR(39 downto 0),
      s_axi_lite_arready(0) => s_axi_lite_1_ARREADY(0),
      s_axi_lite_arvalid(0) => s_axi_lite_1_ARVALID(0),
      s_axi_lite_awaddr(39 downto 0) => s_axi_lite_1_AWADDR(39 downto 0),
      s_axi_lite_awready(0) => s_axi_lite_1_AWREADY(0),
      s_axi_lite_awvalid(0) => s_axi_lite_1_AWVALID(0),
      s_axi_lite_bready(0) => s_axi_lite_1_BREADY(0),
      s_axi_lite_bresp(1 downto 0) => s_axi_lite_1_BRESP(1 downto 0),
      s_axi_lite_bvalid(0) => s_axi_lite_1_BVALID(0),
      s_axi_lite_rdata(31 downto 0) => s_axi_lite_1_RDATA(31 downto 0),
      s_axi_lite_rready(0) => s_axi_lite_1_RREADY(0),
      s_axi_lite_rresp(1 downto 0) => s_axi_lite_1_RRESP(1 downto 0),
      s_axi_lite_rvalid(0) => s_axi_lite_1_RVALID(0),
      s_axi_lite_wdata(31 downto 0) => s_axi_lite_1_WDATA(31 downto 0),
      s_axi_lite_wready(0) => s_axi_lite_1_WREADY(0),
      s_axi_lite_wstrb(3 downto 0) => s_axi_lite_1_WSTRB(3 downto 0),
      s_axi_lite_wvalid(0) => s_axi_lite_1_WVALID(0)
    );
control_interconnect: entity work.mts_control_interconnect_0
     port map (
      ACLK => zynq_ultra_ps_e_0_pl_clk0,
      ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M00_ACLK => zynq_ultra_ps_e_0_pl_clk0,
      M00_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M00_AXI_araddr(39 downto 0) => ps8_0_axi_periph_M00_AXI_ARADDR(39 downto 0),
      M00_AXI_arready => ps8_0_axi_periph_M00_AXI_ARREADY,
      M00_AXI_arvalid => ps8_0_axi_periph_M00_AXI_ARVALID,
      M00_AXI_awaddr(39 downto 0) => ps8_0_axi_periph_M00_AXI_AWADDR(39 downto 0),
      M00_AXI_awready => ps8_0_axi_periph_M00_AXI_AWREADY,
      M00_AXI_awvalid => ps8_0_axi_periph_M00_AXI_AWVALID,
      M00_AXI_bready => ps8_0_axi_periph_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => ps8_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => ps8_0_axi_periph_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => ps8_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => ps8_0_axi_periph_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => ps8_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => ps8_0_axi_periph_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => ps8_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => ps8_0_axi_periph_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => ps8_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => ps8_0_axi_periph_M00_AXI_WVALID,
      M01_ACLK => zynq_ultra_ps_e_0_pl_clk0,
      M01_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M01_AXI_araddr => NLW_control_interconnect_M01_AXI_araddr_UNCONNECTED,
      M01_AXI_arprot => NLW_control_interconnect_M01_AXI_arprot_UNCONNECTED,
      M01_AXI_arready => '0',
      M01_AXI_arvalid => NLW_control_interconnect_M01_AXI_arvalid_UNCONNECTED,
      M01_AXI_awaddr => NLW_control_interconnect_M01_AXI_awaddr_UNCONNECTED,
      M01_AXI_awprot => NLW_control_interconnect_M01_AXI_awprot_UNCONNECTED,
      M01_AXI_awready => '0',
      M01_AXI_awvalid => NLW_control_interconnect_M01_AXI_awvalid_UNCONNECTED,
      M01_AXI_bready => NLW_control_interconnect_M01_AXI_bready_UNCONNECTED,
      M01_AXI_bresp => '0',
      M01_AXI_bvalid => '0',
      M01_AXI_rdata => '0',
      M01_AXI_rready => NLW_control_interconnect_M01_AXI_rready_UNCONNECTED,
      M01_AXI_rresp => '0',
      M01_AXI_rvalid => '0',
      M01_AXI_wdata => NLW_control_interconnect_M01_AXI_wdata_UNCONNECTED,
      M01_AXI_wready => '0',
      M01_AXI_wstrb => NLW_control_interconnect_M01_AXI_wstrb_UNCONNECTED,
      M01_AXI_wvalid => NLW_control_interconnect_M01_AXI_wvalid_UNCONNECTED,
      M02_ACLK => zynq_ultra_ps_e_0_pl_clk0,
      M02_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M02_AXI_araddr(39 downto 0) => s_axi_lite_1_ARADDR(39 downto 0),
      M02_AXI_arready(0) => s_axi_lite_1_ARREADY(0),
      M02_AXI_arvalid(0) => s_axi_lite_1_ARVALID(0),
      M02_AXI_awaddr(39 downto 0) => s_axi_lite_1_AWADDR(39 downto 0),
      M02_AXI_awready(0) => s_axi_lite_1_AWREADY(0),
      M02_AXI_awvalid(0) => s_axi_lite_1_AWVALID(0),
      M02_AXI_bready(0) => s_axi_lite_1_BREADY(0),
      M02_AXI_bresp(1 downto 0) => s_axi_lite_1_BRESP(1 downto 0),
      M02_AXI_bvalid(0) => s_axi_lite_1_BVALID(0),
      M02_AXI_rdata(31 downto 0) => s_axi_lite_1_RDATA(31 downto 0),
      M02_AXI_rready(0) => s_axi_lite_1_RREADY(0),
      M02_AXI_rresp(1 downto 0) => s_axi_lite_1_RRESP(1 downto 0),
      M02_AXI_rvalid(0) => s_axi_lite_1_RVALID(0),
      M02_AXI_wdata(31 downto 0) => s_axi_lite_1_WDATA(31 downto 0),
      M02_AXI_wready(0) => s_axi_lite_1_WREADY(0),
      M02_AXI_wstrb(3 downto 0) => s_axi_lite_1_WSTRB(3 downto 0),
      M02_AXI_wvalid(0) => s_axi_lite_1_WVALID(0),
      M03_ACLK => zynq_ultra_ps_e_0_pl_clk0,
      M03_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M03_AXI_araddr(39 downto 0) => S_AXI_3_ARADDR(39 downto 0),
      M03_AXI_arready => S_AXI_3_ARREADY,
      M03_AXI_arvalid => S_AXI_3_ARVALID,
      M03_AXI_awaddr(39 downto 0) => S_AXI_3_AWADDR(39 downto 0),
      M03_AXI_awready => S_AXI_3_AWREADY,
      M03_AXI_awvalid => S_AXI_3_AWVALID,
      M03_AXI_bready => S_AXI_3_BREADY,
      M03_AXI_bresp(1 downto 0) => S_AXI_3_BRESP(1 downto 0),
      M03_AXI_bvalid => S_AXI_3_BVALID,
      M03_AXI_rdata(31 downto 0) => S_AXI_3_RDATA(31 downto 0),
      M03_AXI_rready => S_AXI_3_RREADY,
      M03_AXI_rresp(1 downto 0) => S_AXI_3_RRESP(1 downto 0),
      M03_AXI_rvalid => S_AXI_3_RVALID,
      M03_AXI_wdata(31 downto 0) => S_AXI_3_WDATA(31 downto 0),
      M03_AXI_wready => S_AXI_3_WREADY,
      M03_AXI_wstrb(3 downto 0) => S_AXI_3_WSTRB(3 downto 0),
      M03_AXI_wvalid => S_AXI_3_WVALID,
      M04_ACLK => zynq_ultra_ps_e_0_pl_clk0,
      M04_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M04_AXI_araddr(39 downto 0) => S_AXI1_1_ARADDR(39 downto 0),
      M04_AXI_arready => S_AXI1_1_ARREADY,
      M04_AXI_arvalid => S_AXI1_1_ARVALID,
      M04_AXI_awaddr(39 downto 0) => S_AXI1_1_AWADDR(39 downto 0),
      M04_AXI_awready => S_AXI1_1_AWREADY,
      M04_AXI_awvalid => S_AXI1_1_AWVALID,
      M04_AXI_bready => S_AXI1_1_BREADY,
      M04_AXI_bresp(1 downto 0) => S_AXI1_1_BRESP(1 downto 0),
      M04_AXI_bvalid => S_AXI1_1_BVALID,
      M04_AXI_rdata(31 downto 0) => S_AXI1_1_RDATA(31 downto 0),
      M04_AXI_rready => S_AXI1_1_RREADY,
      M04_AXI_rresp(1 downto 0) => S_AXI1_1_RRESP(1 downto 0),
      M04_AXI_rvalid => S_AXI1_1_RVALID,
      M04_AXI_wdata(31 downto 0) => S_AXI1_1_WDATA(31 downto 0),
      M04_AXI_wready => S_AXI1_1_WREADY,
      M04_AXI_wstrb(3 downto 0) => S_AXI1_1_WSTRB(3 downto 0),
      M04_AXI_wvalid => S_AXI1_1_WVALID,
      M05_ACLK => zynq_ultra_ps_e_0_pl_clk0,
      M05_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M05_AXI_araddr(39 downto 0) => S_AXI2_1_ARADDR(39 downto 0),
      M05_AXI_arready => S_AXI2_1_ARREADY,
      M05_AXI_arvalid => S_AXI2_1_ARVALID,
      M05_AXI_awaddr(39 downto 0) => S_AXI2_1_AWADDR(39 downto 0),
      M05_AXI_awready => S_AXI2_1_AWREADY,
      M05_AXI_awvalid => S_AXI2_1_AWVALID,
      M05_AXI_bready => S_AXI2_1_BREADY,
      M05_AXI_bresp(1 downto 0) => S_AXI2_1_BRESP(1 downto 0),
      M05_AXI_bvalid => S_AXI2_1_BVALID,
      M05_AXI_rdata(31 downto 0) => S_AXI2_1_RDATA(31 downto 0),
      M05_AXI_rready => S_AXI2_1_RREADY,
      M05_AXI_rresp(1 downto 0) => S_AXI2_1_RRESP(1 downto 0),
      M05_AXI_rvalid => S_AXI2_1_RVALID,
      M05_AXI_wdata(31 downto 0) => S_AXI2_1_WDATA(31 downto 0),
      M05_AXI_wready => S_AXI2_1_WREADY,
      M05_AXI_wstrb(3 downto 0) => S_AXI2_1_WSTRB(3 downto 0),
      M05_AXI_wvalid => S_AXI2_1_WVALID,
      M06_ACLK => zynq_ultra_ps_e_0_pl_clk0,
      M06_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M06_AXI_araddr(39 downto 0) => control_interconnect_M06_AXI_ARADDR(39 downto 0),
      M06_AXI_arready => control_interconnect_M06_AXI_ARREADY,
      M06_AXI_arvalid => control_interconnect_M06_AXI_ARVALID,
      M06_AXI_awaddr(39 downto 0) => control_interconnect_M06_AXI_AWADDR(39 downto 0),
      M06_AXI_awready => control_interconnect_M06_AXI_AWREADY,
      M06_AXI_awvalid => control_interconnect_M06_AXI_AWVALID,
      M06_AXI_bready => control_interconnect_M06_AXI_BREADY,
      M06_AXI_bresp(1 downto 0) => control_interconnect_M06_AXI_BRESP(1 downto 0),
      M06_AXI_bvalid => control_interconnect_M06_AXI_BVALID,
      M06_AXI_rdata(31 downto 0) => control_interconnect_M06_AXI_RDATA(31 downto 0),
      M06_AXI_rready => control_interconnect_M06_AXI_RREADY,
      M06_AXI_rresp(1 downto 0) => control_interconnect_M06_AXI_RRESP(1 downto 0),
      M06_AXI_rvalid => control_interconnect_M06_AXI_RVALID,
      M06_AXI_wdata(31 downto 0) => control_interconnect_M06_AXI_WDATA(31 downto 0),
      M06_AXI_wready => control_interconnect_M06_AXI_WREADY,
      M06_AXI_wstrb(3 downto 0) => control_interconnect_M06_AXI_WSTRB(3 downto 0),
      M06_AXI_wvalid => control_interconnect_M06_AXI_WVALID,
      S00_ACLK => zynq_ultra_ps_e_0_pl_clk0,
      S00_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      S00_AXI_araddr(39 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR(39 downto 0),
      S00_AXI_arburst(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE(3 downto 0),
      S00_AXI_arid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID(15 downto 0),
      S00_AXI_arlen(7 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN(7 downto 0),
      S00_AXI_arlock => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK,
      S00_AXI_arprot(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS(3 downto 0),
      S00_AXI_arready => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY,
      S00_AXI_arsize(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE(2 downto 0),
      S00_AXI_arvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID,
      S00_AXI_awaddr(39 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR(39 downto 0),
      S00_AXI_awburst(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE(3 downto 0),
      S00_AXI_awid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID(15 downto 0),
      S00_AXI_awlen(7 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN(7 downto 0),
      S00_AXI_awlock => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK,
      S00_AXI_awprot(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS(3 downto 0),
      S00_AXI_awready => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY,
      S00_AXI_awsize(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE(2 downto 0),
      S00_AXI_awvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID,
      S00_AXI_bid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID(15 downto 0),
      S00_AXI_bready => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY,
      S00_AXI_bresp(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP(1 downto 0),
      S00_AXI_bvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID,
      S00_AXI_rdata(31 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA(31 downto 0),
      S00_AXI_rid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID(15 downto 0),
      S00_AXI_rlast => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST,
      S00_AXI_rready => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY,
      S00_AXI_rresp(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP(1 downto 0),
      S00_AXI_rvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID,
      S00_AXI_wdata(31 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA(31 downto 0),
      S00_AXI_wlast => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST,
      S00_AXI_wready => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY,
      S00_AXI_wstrb(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB(3 downto 0),
      S00_AXI_wvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID
    );
gpio_control: entity work.gpio_control_imp_1VWM5ZY
     port map (
      S_AXI1_araddr(39 downto 0) => S_AXI1_1_ARADDR(39 downto 0),
      S_AXI1_arready => S_AXI1_1_ARREADY,
      S_AXI1_arvalid => S_AXI1_1_ARVALID,
      S_AXI1_awaddr(39 downto 0) => S_AXI1_1_AWADDR(39 downto 0),
      S_AXI1_awready => S_AXI1_1_AWREADY,
      S_AXI1_awvalid => S_AXI1_1_AWVALID,
      S_AXI1_bready => S_AXI1_1_BREADY,
      S_AXI1_bresp(1 downto 0) => S_AXI1_1_BRESP(1 downto 0),
      S_AXI1_bvalid => S_AXI1_1_BVALID,
      S_AXI1_rdata(31 downto 0) => S_AXI1_1_RDATA(31 downto 0),
      S_AXI1_rready => S_AXI1_1_RREADY,
      S_AXI1_rresp(1 downto 0) => S_AXI1_1_RRESP(1 downto 0),
      S_AXI1_rvalid => S_AXI1_1_RVALID,
      S_AXI1_wdata(31 downto 0) => S_AXI1_1_WDATA(31 downto 0),
      S_AXI1_wready => S_AXI1_1_WREADY,
      S_AXI1_wstrb(3 downto 0) => S_AXI1_1_WSTRB(3 downto 0),
      S_AXI1_wvalid => S_AXI1_1_WVALID,
      S_AXI2_araddr(39 downto 0) => S_AXI2_1_ARADDR(39 downto 0),
      S_AXI2_arready => S_AXI2_1_ARREADY,
      S_AXI2_arvalid => S_AXI2_1_ARVALID,
      S_AXI2_awaddr(39 downto 0) => S_AXI2_1_AWADDR(39 downto 0),
      S_AXI2_awready => S_AXI2_1_AWREADY,
      S_AXI2_awvalid => S_AXI2_1_AWVALID,
      S_AXI2_bready => S_AXI2_1_BREADY,
      S_AXI2_bresp(1 downto 0) => S_AXI2_1_BRESP(1 downto 0),
      S_AXI2_bvalid => S_AXI2_1_BVALID,
      S_AXI2_rdata(31 downto 0) => S_AXI2_1_RDATA(31 downto 0),
      S_AXI2_rready => S_AXI2_1_RREADY,
      S_AXI2_rresp(1 downto 0) => S_AXI2_1_RRESP(1 downto 0),
      S_AXI2_rvalid => S_AXI2_1_RVALID,
      S_AXI2_wdata(31 downto 0) => S_AXI2_1_WDATA(31 downto 0),
      S_AXI2_wready => S_AXI2_1_WREADY,
      S_AXI2_wstrb(3 downto 0) => S_AXI2_1_WSTRB(3 downto 0),
      S_AXI2_wvalid => S_AXI2_1_WVALID,
      S_AXI_araddr(39 downto 0) => S_AXI_3_ARADDR(39 downto 0),
      S_AXI_arready => S_AXI_3_ARREADY,
      S_AXI_arvalid => S_AXI_3_ARVALID,
      S_AXI_awaddr(39 downto 0) => S_AXI_3_AWADDR(39 downto 0),
      S_AXI_awready => S_AXI_3_AWREADY,
      S_AXI_awvalid => S_AXI_3_AWVALID,
      S_AXI_bready => S_AXI_3_BREADY,
      S_AXI_bresp(1 downto 0) => S_AXI_3_BRESP(1 downto 0),
      S_AXI_bvalid => S_AXI_3_BVALID,
      S_AXI_rdata(31 downto 0) => S_AXI_3_RDATA(31 downto 0),
      S_AXI_rready => S_AXI_3_RREADY,
      S_AXI_rresp(1 downto 0) => S_AXI_3_RRESP(1 downto 0),
      S_AXI_rvalid => S_AXI_3_RVALID,
      S_AXI_wdata(31 downto 0) => S_AXI_3_WDATA(31 downto 0),
      S_AXI_wready => S_AXI_3_WREADY,
      S_AXI_wstrb(3 downto 0) => S_AXI_3_WSTRB(3 downto 0),
      S_AXI_wvalid => S_AXI_3_WVALID,
      dac_enable(0) => NLW_gpio_control_dac_enable_UNCONNECTED(0),
      dest_clk => clk_wiz_adc0_clk_out2,
      fifoflush(0) => NLW_gpio_control_fifoflush_UNCONNECTED(0),
      s_axi_aclk => zynq_ultra_ps_e_0_pl_clk0,
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      trig_cap(0) => NLW_gpio_control_trig_cap_UNCONNECTED(0)
    );
ila_0: component mts_ila_0_0
     port map (
      clk => clk_wiz_0_clk_out1,
      probe0(32 downto 0) => IQ_product_0_gateway_out(32 downto 0),
      probe1(32 downto 0) => IQ_product_0_gateway_out1(32 downto 0),
      probe10(32 downto 0) => IQ_product_0_gateway_out18(32 downto 0),
      probe11(32 downto 0) => IQ_product_0_gateway_out19(32 downto 0),
      probe12(32 downto 0) => IQ_product_0_gateway_out2(32 downto 0),
      probe13(32 downto 0) => IQ_product_0_gateway_out3(32 downto 0),
      probe14(32 downto 0) => IQ_product_0_gateway_out4(32 downto 0),
      probe15(32 downto 0) => IQ_product_0_gateway_out5(32 downto 0),
      probe16(32 downto 0) => IQ_product_0_gateway_out6(32 downto 0),
      probe17(32 downto 0) => IQ_product_0_gateway_out7(32 downto 0),
      probe18(32 downto 0) => IQ_product_0_gateway_out8(32 downto 0),
      probe19(32 downto 0) => IQ_product_0_gateway_out9(32 downto 0),
      probe2(32 downto 0) => IQ_product_0_gateway_out10(32 downto 0),
      probe20(15 downto 0) => usp_rf_data_converter_1_m00_axis_tdata(15 downto 0),
      probe21(15 downto 0) => usp_rf_data_converter_1_m01_axis_tdata(15 downto 0),
      probe22(15 downto 0) => usp_rf_data_converter_1_m02_axis_tdata(15 downto 0),
      probe23(15 downto 0) => usp_rf_data_converter_1_m03_axis_tdata(15 downto 0),
      probe24(15 downto 0) => usp_rf_data_converter_1_m20_axis_tdata(15 downto 0),
      probe25(15 downto 0) => usp_rf_data_converter_1_m21_axis_tdata(15 downto 0),
      probe26(15 downto 0) => usp_rf_data_converter_1_m22_axis_tdata(15 downto 0),
      probe27(15 downto 0) => usp_rf_data_converter_1_m23_axis_tdata(15 downto 0),
      probe3(32 downto 0) => IQ_product_0_gateway_out11(32 downto 0),
      probe4(32 downto 0) => IQ_product_0_gateway_out12(32 downto 0),
      probe5(32 downto 0) => IQ_product_0_gateway_out13(32 downto 0),
      probe6(32 downto 0) => IQ_product_0_gateway_out14(32 downto 0),
      probe7(32 downto 0) => IQ_product_0_gateway_out15(32 downto 0),
      probe8(32 downto 0) => IQ_product_0_gateway_out16(32 downto 0),
      probe9(32 downto 0) => IQ_product_0_gateway_out17(32 downto 0)
    );
system_management_wiz_0: component mts_system_management_wiz_0_0
     port map (
      alarm_out => NLW_system_management_wiz_0_alarm_out_UNCONNECTED,
      busy_out => NLW_system_management_wiz_0_busy_out_UNCONNECTED,
      channel_out(5 downto 0) => NLW_system_management_wiz_0_channel_out_UNCONNECTED(5 downto 0),
      eoc_out => NLW_system_management_wiz_0_eoc_out_UNCONNECTED,
      eos_out => NLW_system_management_wiz_0_eos_out_UNCONNECTED,
      ip2intc_irpt => system_management_wiz_0_ip2intc_irpt,
      s_axi_aclk => zynq_ultra_ps_e_0_pl_clk0,
      s_axi_araddr(12 downto 0) => control_interconnect_M06_AXI_ARADDR(12 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s_axi_arready => control_interconnect_M06_AXI_ARREADY,
      s_axi_arvalid => control_interconnect_M06_AXI_ARVALID,
      s_axi_awaddr(12 downto 0) => control_interconnect_M06_AXI_AWADDR(12 downto 0),
      s_axi_awready => control_interconnect_M06_AXI_AWREADY,
      s_axi_awvalid => control_interconnect_M06_AXI_AWVALID,
      s_axi_bready => control_interconnect_M06_AXI_BREADY,
      s_axi_bresp(1 downto 0) => control_interconnect_M06_AXI_BRESP(1 downto 0),
      s_axi_bvalid => control_interconnect_M06_AXI_BVALID,
      s_axi_rdata(31 downto 0) => control_interconnect_M06_AXI_RDATA(31 downto 0),
      s_axi_rready => control_interconnect_M06_AXI_RREADY,
      s_axi_rresp(1 downto 0) => control_interconnect_M06_AXI_RRESP(1 downto 0),
      s_axi_rvalid => control_interconnect_M06_AXI_RVALID,
      s_axi_wdata(31 downto 0) => control_interconnect_M06_AXI_WDATA(31 downto 0),
      s_axi_wready => control_interconnect_M06_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => control_interconnect_M06_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => control_interconnect_M06_AXI_WVALID,
      vn => '0',
      vp => '0'
    );
usp_rf_data_converter_1: component mts_usp_rf_data_converter_1_0
     port map (
      adc2_clk_n => adc2_clk_0_1_CLK_N,
      adc2_clk_p => adc2_clk_0_1_CLK_P,
      clk_adc0 => NLW_usp_rf_data_converter_1_clk_adc0_UNCONNECTED,
      clk_adc1 => NLW_usp_rf_data_converter_1_clk_adc1_UNCONNECTED,
      clk_adc2 => NLW_usp_rf_data_converter_1_clk_adc2_UNCONNECTED,
      clk_adc3 => NLW_usp_rf_data_converter_1_clk_adc3_UNCONNECTED,
      clk_dac0 => NLW_usp_rf_data_converter_1_clk_dac0_UNCONNECTED,
      clk_dac1 => NLW_usp_rf_data_converter_1_clk_dac1_UNCONNECTED,
      clk_dac2 => NLW_usp_rf_data_converter_1_clk_dac2_UNCONNECTED,
      clk_dac3 => NLW_usp_rf_data_converter_1_clk_dac3_UNCONNECTED,
      dac2_clk_n => dac2_clk_0_1_CLK_N,
      dac2_clk_p => dac2_clk_0_1_CLK_P,
      irq => usp_rf_data_converter_1_irq,
      m00_axis_tdata(15 downto 0) => usp_rf_data_converter_1_m00_axis_tdata(15 downto 0),
      m00_axis_tready => '1',
      m00_axis_tvalid => NLW_usp_rf_data_converter_1_m00_axis_tvalid_UNCONNECTED,
      m01_axis_tdata(15 downto 0) => usp_rf_data_converter_1_m01_axis_tdata(15 downto 0),
      m01_axis_tready => '1',
      m01_axis_tvalid => NLW_usp_rf_data_converter_1_m01_axis_tvalid_UNCONNECTED,
      m02_axis_tdata(15 downto 0) => usp_rf_data_converter_1_m02_axis_tdata(15 downto 0),
      m02_axis_tready => '1',
      m02_axis_tvalid => NLW_usp_rf_data_converter_1_m02_axis_tvalid_UNCONNECTED,
      m03_axis_tdata(15 downto 0) => usp_rf_data_converter_1_m03_axis_tdata(15 downto 0),
      m03_axis_tready => '1',
      m03_axis_tvalid => NLW_usp_rf_data_converter_1_m03_axis_tvalid_UNCONNECTED,
      m0_axis_aclk => clk_wiz_0_clk_out1,
      m0_axis_aresetn => RFingressReset_peripheral_aresetn(0),
      m10_axis_tdata(15 downto 0) => NLW_usp_rf_data_converter_1_m10_axis_tdata_UNCONNECTED(15 downto 0),
      m10_axis_tready => '1',
      m10_axis_tvalid => NLW_usp_rf_data_converter_1_m10_axis_tvalid_UNCONNECTED,
      m11_axis_tdata(15 downto 0) => NLW_usp_rf_data_converter_1_m11_axis_tdata_UNCONNECTED(15 downto 0),
      m11_axis_tready => '1',
      m11_axis_tvalid => NLW_usp_rf_data_converter_1_m11_axis_tvalid_UNCONNECTED,
      m1_axis_aclk => clk_wiz_0_clk_out1,
      m1_axis_aresetn => RFingressReset_peripheral_aresetn(0),
      m20_axis_tdata(15 downto 0) => usp_rf_data_converter_1_m20_axis_tdata(15 downto 0),
      m20_axis_tready => '1',
      m20_axis_tvalid => NLW_usp_rf_data_converter_1_m20_axis_tvalid_UNCONNECTED,
      m21_axis_tdata(15 downto 0) => usp_rf_data_converter_1_m21_axis_tdata(15 downto 0),
      m21_axis_tready => '1',
      m21_axis_tvalid => NLW_usp_rf_data_converter_1_m21_axis_tvalid_UNCONNECTED,
      m22_axis_tdata(15 downto 0) => usp_rf_data_converter_1_m22_axis_tdata(15 downto 0),
      m22_axis_tready => '1',
      m22_axis_tvalid => NLW_usp_rf_data_converter_1_m22_axis_tvalid_UNCONNECTED,
      m23_axis_tdata(15 downto 0) => usp_rf_data_converter_1_m23_axis_tdata(15 downto 0),
      m23_axis_tready => '1',
      m23_axis_tvalid => NLW_usp_rf_data_converter_1_m23_axis_tvalid_UNCONNECTED,
      m2_axis_aclk => clk_wiz_0_clk_out1,
      m2_axis_aresetn => RFingressReset_peripheral_aresetn(0),
      m30_axis_tdata(15 downto 0) => NLW_usp_rf_data_converter_1_m30_axis_tdata_UNCONNECTED(15 downto 0),
      m30_axis_tready => '1',
      m30_axis_tvalid => NLW_usp_rf_data_converter_1_m30_axis_tvalid_UNCONNECTED,
      m31_axis_tdata(15 downto 0) => NLW_usp_rf_data_converter_1_m31_axis_tdata_UNCONNECTED(15 downto 0),
      m31_axis_tready => '1',
      m31_axis_tvalid => NLW_usp_rf_data_converter_1_m31_axis_tvalid_UNCONNECTED,
      m3_axis_aclk => clk_wiz_0_clk_out1,
      m3_axis_aresetn => RFingressReset_peripheral_aresetn(0),
      s00_axis_tdata(15 downto 0) => blk_mem_gen_1_douta(15 downto 0),
      s00_axis_tready => NLW_usp_rf_data_converter_1_s00_axis_tready_UNCONNECTED,
      s00_axis_tvalid => vio_0_probe_out1(0),
      s0_axis_aclk => clk_wiz_0_clk_out1,
      s0_axis_aresetn => RFingressReset_peripheral_aresetn(0),
      s10_axis_tdata(15 downto 0) => blk_mem_gen_1_douta(15 downto 0),
      s10_axis_tready => NLW_usp_rf_data_converter_1_s10_axis_tready_UNCONNECTED,
      s10_axis_tvalid => vio_0_probe_out1(0),
      s1_axis_aclk => clk_wiz_0_clk_out1,
      s1_axis_aresetn => RFingressReset_peripheral_aresetn(0),
      s20_axis_tdata(15 downto 0) => blk_mem_gen_1_douta(15 downto 0),
      s20_axis_tready => NLW_usp_rf_data_converter_1_s20_axis_tready_UNCONNECTED,
      s20_axis_tvalid => vio_0_probe_out1(0),
      s2_axis_aclk => clk_wiz_0_clk_out1,
      s2_axis_aresetn => RFingressReset_peripheral_aresetn(0),
      s30_axis_tdata(15 downto 0) => blk_mem_gen_1_douta(15 downto 0),
      s30_axis_tready => NLW_usp_rf_data_converter_1_s30_axis_tready_UNCONNECTED,
      s30_axis_tvalid => vio_0_probe_out1(0),
      s3_axis_aclk => clk_wiz_0_clk_out1,
      s3_axis_aresetn => RFingressReset_peripheral_aresetn(0),
      s_axi_aclk => zynq_ultra_ps_e_0_pl_clk0,
      s_axi_araddr(17 downto 0) => ps8_0_axi_periph_M00_AXI_ARADDR(17 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s_axi_arready => ps8_0_axi_periph_M00_AXI_ARREADY,
      s_axi_arvalid => ps8_0_axi_periph_M00_AXI_ARVALID,
      s_axi_awaddr(17 downto 0) => ps8_0_axi_periph_M00_AXI_AWADDR(17 downto 0),
      s_axi_awready => ps8_0_axi_periph_M00_AXI_AWREADY,
      s_axi_awvalid => ps8_0_axi_periph_M00_AXI_AWVALID,
      s_axi_bready => ps8_0_axi_periph_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => ps8_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => ps8_0_axi_periph_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => ps8_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      s_axi_rready => ps8_0_axi_periph_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => ps8_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => ps8_0_axi_periph_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => ps8_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      s_axi_wready => ps8_0_axi_periph_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => ps8_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => ps8_0_axi_periph_M00_AXI_WVALID,
      sysref_in_n => sysref_in_0_1_diff_n,
      sysref_in_p => sysref_in_0_1_diff_p,
      user_sysref_adc => synchronizeSYSREF_dest_out(0),
      user_sysref_dac => synchronizeSYSREF_dest_out(0),
      vin0_01_n => vin0_01_0_1_V_N,
      vin0_01_p => vin0_01_0_1_V_P,
      vin0_23_n => vin0_23_1_1_V_N,
      vin0_23_p => vin0_23_1_1_V_P,
      vin1_01_n => vin1_01_0_1_V_N,
      vin1_01_p => vin1_01_0_1_V_P,
      vin2_01_n => vin2_01_0_1_V_N,
      vin2_01_p => vin2_01_0_1_V_P,
      vin2_23_n => vin2_23_0_1_V_N,
      vin2_23_p => vin2_23_0_1_V_P,
      vin3_01_n => '0',
      vin3_01_p => '0',
      vout00_n => usp_rf_data_converter_1_vout00_V_N,
      vout00_p => usp_rf_data_converter_1_vout00_V_P,
      vout10_n => usp_rf_data_converter_1_vout10_V_N,
      vout10_p => usp_rf_data_converter_1_vout10_V_P,
      vout20_n => usp_rf_data_converter_1_vout20_V_N,
      vout20_p => usp_rf_data_converter_1_vout20_V_P,
      vout30_n => NLW_usp_rf_data_converter_1_vout30_n_UNCONNECTED,
      vout30_p => NLW_usp_rf_data_converter_1_vout30_p_UNCONNECTED
    );
vio_0: component mts_vio_0_0
     port map (
      clk => clk_wiz_0_clk_out1,
      probe_out0(0) => vio_0_probe_out0(0),
      probe_out1(0) => vio_0_probe_out1(0),
      probe_out2(0) => NLW_vio_0_probe_out2_UNCONNECTED(0)
    );
xlconcat_0: component mts_xlconcat_0_0
     port map (
      In0(0) => '0',
      In1(0) => usp_rf_data_converter_1_irq,
      In2(0) => clocktreeMTS_interrupt,
      In3(0) => system_management_wiz_0_ip2intc_irpt,
      dout(3 downto 0) => xlconcat_0_dout(3 downto 0)
    );
zynq_ultra_ps_e_0: component mts_zynq_ultra_ps_e_0_0
     port map (
      maxigp0_araddr(39 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp0_araddr_UNCONNECTED(39 downto 0),
      maxigp0_arburst(1 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp0_arburst_UNCONNECTED(1 downto 0),
      maxigp0_arcache(3 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp0_arcache_UNCONNECTED(3 downto 0),
      maxigp0_arid(15 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp0_arid_UNCONNECTED(15 downto 0),
      maxigp0_arlen(7 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp0_arlen_UNCONNECTED(7 downto 0),
      maxigp0_arlock => NLW_zynq_ultra_ps_e_0_maxigp0_arlock_UNCONNECTED,
      maxigp0_arprot(2 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp0_arprot_UNCONNECTED(2 downto 0),
      maxigp0_arqos(3 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp0_arqos_UNCONNECTED(3 downto 0),
      maxigp0_arready => '0',
      maxigp0_arsize(2 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp0_arsize_UNCONNECTED(2 downto 0),
      maxigp0_aruser(15 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp0_aruser_UNCONNECTED(15 downto 0),
      maxigp0_arvalid => NLW_zynq_ultra_ps_e_0_maxigp0_arvalid_UNCONNECTED,
      maxigp0_awaddr(39 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp0_awaddr_UNCONNECTED(39 downto 0),
      maxigp0_awburst(1 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp0_awburst_UNCONNECTED(1 downto 0),
      maxigp0_awcache(3 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp0_awcache_UNCONNECTED(3 downto 0),
      maxigp0_awid(15 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp0_awid_UNCONNECTED(15 downto 0),
      maxigp0_awlen(7 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp0_awlen_UNCONNECTED(7 downto 0),
      maxigp0_awlock => NLW_zynq_ultra_ps_e_0_maxigp0_awlock_UNCONNECTED,
      maxigp0_awprot(2 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp0_awprot_UNCONNECTED(2 downto 0),
      maxigp0_awqos(3 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp0_awqos_UNCONNECTED(3 downto 0),
      maxigp0_awready => '0',
      maxigp0_awsize(2 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp0_awsize_UNCONNECTED(2 downto 0),
      maxigp0_awuser(15 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp0_awuser_UNCONNECTED(15 downto 0),
      maxigp0_awvalid => NLW_zynq_ultra_ps_e_0_maxigp0_awvalid_UNCONNECTED,
      maxigp0_bid(15 downto 0) => B"0000000000000000",
      maxigp0_bready => NLW_zynq_ultra_ps_e_0_maxigp0_bready_UNCONNECTED,
      maxigp0_bresp(1 downto 0) => B"00",
      maxigp0_bvalid => '0',
      maxigp0_rdata(127 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      maxigp0_rid(15 downto 0) => B"0000000000000000",
      maxigp0_rlast => '0',
      maxigp0_rready => NLW_zynq_ultra_ps_e_0_maxigp0_rready_UNCONNECTED,
      maxigp0_rresp(1 downto 0) => B"00",
      maxigp0_rvalid => '0',
      maxigp0_wdata(127 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp0_wdata_UNCONNECTED(127 downto 0),
      maxigp0_wlast => NLW_zynq_ultra_ps_e_0_maxigp0_wlast_UNCONNECTED,
      maxigp0_wready => '0',
      maxigp0_wstrb(15 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp0_wstrb_UNCONNECTED(15 downto 0),
      maxigp0_wvalid => NLW_zynq_ultra_ps_e_0_maxigp0_wvalid_UNCONNECTED,
      maxigp1_araddr(39 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp1_araddr_UNCONNECTED(39 downto 0),
      maxigp1_arburst(1 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp1_arburst_UNCONNECTED(1 downto 0),
      maxigp1_arcache(3 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp1_arcache_UNCONNECTED(3 downto 0),
      maxigp1_arid(15 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp1_arid_UNCONNECTED(15 downto 0),
      maxigp1_arlen(7 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp1_arlen_UNCONNECTED(7 downto 0),
      maxigp1_arlock => NLW_zynq_ultra_ps_e_0_maxigp1_arlock_UNCONNECTED,
      maxigp1_arprot(2 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp1_arprot_UNCONNECTED(2 downto 0),
      maxigp1_arqos(3 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp1_arqos_UNCONNECTED(3 downto 0),
      maxigp1_arready => '0',
      maxigp1_arsize(2 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp1_arsize_UNCONNECTED(2 downto 0),
      maxigp1_aruser(15 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp1_aruser_UNCONNECTED(15 downto 0),
      maxigp1_arvalid => NLW_zynq_ultra_ps_e_0_maxigp1_arvalid_UNCONNECTED,
      maxigp1_awaddr(39 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp1_awaddr_UNCONNECTED(39 downto 0),
      maxigp1_awburst(1 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp1_awburst_UNCONNECTED(1 downto 0),
      maxigp1_awcache(3 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp1_awcache_UNCONNECTED(3 downto 0),
      maxigp1_awid(15 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp1_awid_UNCONNECTED(15 downto 0),
      maxigp1_awlen(7 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp1_awlen_UNCONNECTED(7 downto 0),
      maxigp1_awlock => NLW_zynq_ultra_ps_e_0_maxigp1_awlock_UNCONNECTED,
      maxigp1_awprot(2 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp1_awprot_UNCONNECTED(2 downto 0),
      maxigp1_awqos(3 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp1_awqos_UNCONNECTED(3 downto 0),
      maxigp1_awready => '0',
      maxigp1_awsize(2 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp1_awsize_UNCONNECTED(2 downto 0),
      maxigp1_awuser(15 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp1_awuser_UNCONNECTED(15 downto 0),
      maxigp1_awvalid => NLW_zynq_ultra_ps_e_0_maxigp1_awvalid_UNCONNECTED,
      maxigp1_bid(15 downto 0) => B"0000000000000000",
      maxigp1_bready => NLW_zynq_ultra_ps_e_0_maxigp1_bready_UNCONNECTED,
      maxigp1_bresp(1 downto 0) => B"00",
      maxigp1_bvalid => '0',
      maxigp1_rdata(127 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      maxigp1_rid(15 downto 0) => B"0000000000000000",
      maxigp1_rlast => '0',
      maxigp1_rready => NLW_zynq_ultra_ps_e_0_maxigp1_rready_UNCONNECTED,
      maxigp1_rresp(1 downto 0) => B"00",
      maxigp1_rvalid => '0',
      maxigp1_wdata(127 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp1_wdata_UNCONNECTED(127 downto 0),
      maxigp1_wlast => NLW_zynq_ultra_ps_e_0_maxigp1_wlast_UNCONNECTED,
      maxigp1_wready => '0',
      maxigp1_wstrb(15 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp1_wstrb_UNCONNECTED(15 downto 0),
      maxigp1_wvalid => NLW_zynq_ultra_ps_e_0_maxigp1_wvalid_UNCONNECTED,
      maxigp2_araddr(39 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR(39 downto 0),
      maxigp2_arburst(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST(1 downto 0),
      maxigp2_arcache(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE(3 downto 0),
      maxigp2_arid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID(15 downto 0),
      maxigp2_arlen(7 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN(7 downto 0),
      maxigp2_arlock => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK,
      maxigp2_arprot(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT(2 downto 0),
      maxigp2_arqos(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS(3 downto 0),
      maxigp2_arready => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY,
      maxigp2_arsize(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE(2 downto 0),
      maxigp2_aruser(15 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp2_aruser_UNCONNECTED(15 downto 0),
      maxigp2_arvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID,
      maxigp2_awaddr(39 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR(39 downto 0),
      maxigp2_awburst(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST(1 downto 0),
      maxigp2_awcache(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE(3 downto 0),
      maxigp2_awid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID(15 downto 0),
      maxigp2_awlen(7 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN(7 downto 0),
      maxigp2_awlock => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK,
      maxigp2_awprot(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT(2 downto 0),
      maxigp2_awqos(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS(3 downto 0),
      maxigp2_awready => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY,
      maxigp2_awsize(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE(2 downto 0),
      maxigp2_awuser(15 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp2_awuser_UNCONNECTED(15 downto 0),
      maxigp2_awvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID,
      maxigp2_bid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID(15 downto 0),
      maxigp2_bready => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY,
      maxigp2_bresp(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP(1 downto 0),
      maxigp2_bvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID,
      maxigp2_rdata(31 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA(31 downto 0),
      maxigp2_rid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID(15 downto 0),
      maxigp2_rlast => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST,
      maxigp2_rready => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY,
      maxigp2_rresp(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP(1 downto 0),
      maxigp2_rvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID,
      maxigp2_wdata(31 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA(31 downto 0),
      maxigp2_wlast => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST,
      maxigp2_wready => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY,
      maxigp2_wstrb(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB(3 downto 0),
      maxigp2_wvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID,
      maxihpm0_fpd_aclk => clk_wiz_adc0_clk_out2,
      maxihpm0_lpd_aclk => zynq_ultra_ps_e_0_pl_clk0,
      maxihpm1_fpd_aclk => clk_wiz_adc0_clk_out2,
      pl_clk0 => zynq_ultra_ps_e_0_pl_clk0,
      pl_ps_irq0(3 downto 0) => xlconcat_0_dout(3 downto 0),
      pl_resetn0 => zynq_ultra_ps_e_0_pl_resetn0
    );
end STRUCTURE;
