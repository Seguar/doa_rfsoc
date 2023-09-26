-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2.2 (win64) Build 3788238 Tue Feb 21 20:00:34 MST 2023
-- Date        : Wed Jun 28 11:47:09 2023
-- Host        : Sega running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mts_DACRAMstreamer_0_0_sim_netlist.vhdl
-- Design      : mts_DACRAMstreamer_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu48dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DACRAMstreamer is
  port (
    portA_en : out STD_LOGIC;
    axis_tvalid : out STD_LOGIC;
    portAcpu_addr : out STD_LOGIC_VECTOR ( 30 downto 0 );
    axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    axis_clk : in STD_LOGIC;
    axis_aresetn : in STD_LOGIC;
    enable : in STD_LOGIC;
    portA_cpu_rdata : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DACRAMstreamer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DACRAMstreamer is
  signal axis_tvalid_i_1_n_0 : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \^porta_en\ : STD_LOGIC;
  signal portA_en_i_1_n_0 : STD_LOGIC;
  signal \^portacpu_addr\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \portAcpu_addr[31]_i_1_n_0\ : STD_LOGIC;
  signal \portAcpu_addr[7]_i_2_n_0\ : STD_LOGIC;
  signal \portAcpu_addr_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \portAcpu_addr_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \portAcpu_addr_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \portAcpu_addr_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \portAcpu_addr_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \portAcpu_addr_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \portAcpu_addr_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \portAcpu_addr_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \portAcpu_addr_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \portAcpu_addr_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \portAcpu_addr_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \portAcpu_addr_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \portAcpu_addr_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \portAcpu_addr_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \portAcpu_addr_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \portAcpu_addr_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \portAcpu_addr_reg[31]_i_2_n_1\ : STD_LOGIC;
  signal \portAcpu_addr_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \portAcpu_addr_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \portAcpu_addr_reg[31]_i_2_n_4\ : STD_LOGIC;
  signal \portAcpu_addr_reg[31]_i_2_n_5\ : STD_LOGIC;
  signal \portAcpu_addr_reg[31]_i_2_n_6\ : STD_LOGIC;
  signal \portAcpu_addr_reg[31]_i_2_n_7\ : STD_LOGIC;
  signal \portAcpu_addr_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \portAcpu_addr_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \portAcpu_addr_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \portAcpu_addr_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \portAcpu_addr_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \portAcpu_addr_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \portAcpu_addr_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \portAcpu_addr_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_portAcpu_addr_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_portAcpu_addr_reg[7]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axis_tvalid_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of portA_en_i_1 : label is "soft_lutpair0";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of portA_en_reg : label is "xilinx.com:interface:bram:1.0 BRAM_A EN";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[10]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[11]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[12]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[13]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[14]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[15]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \portAcpu_addr_reg[15]_i_1\ : label is 35;
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[16]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[17]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[18]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[19]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[1]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[20]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[21]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[22]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[23]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute ADDER_THRESHOLD of \portAcpu_addr_reg[23]_i_1\ : label is 35;
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[24]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[25]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[26]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[27]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[28]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[29]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[2]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[30]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[31]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute ADDER_THRESHOLD of \portAcpu_addr_reg[31]_i_2\ : label is 35;
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[3]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[4]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[5]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[6]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[7]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute ADDER_THRESHOLD of \portAcpu_addr_reg[7]_i_1\ : label is 35;
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[8]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[9]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
begin
  portA_en <= \^porta_en\;
  portAcpu_addr(30 downto 0) <= \^portacpu_addr\(30 downto 0);
\axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(0),
      Q => axis_tdata(0),
      R => '0'
    );
\axis_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(10),
      Q => axis_tdata(10),
      R => '0'
    );
\axis_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(11),
      Q => axis_tdata(11),
      R => '0'
    );
\axis_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(12),
      Q => axis_tdata(12),
      R => '0'
    );
\axis_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(13),
      Q => axis_tdata(13),
      R => '0'
    );
\axis_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(14),
      Q => axis_tdata(14),
      R => '0'
    );
\axis_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(15),
      Q => axis_tdata(15),
      R => '0'
    );
\axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(1),
      Q => axis_tdata(1),
      R => '0'
    );
\axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(2),
      Q => axis_tdata(2),
      R => '0'
    );
\axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(3),
      Q => axis_tdata(3),
      R => '0'
    );
\axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(4),
      Q => axis_tdata(4),
      R => '0'
    );
\axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(5),
      Q => axis_tdata(5),
      R => '0'
    );
\axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(6),
      Q => axis_tdata(6),
      R => '0'
    );
\axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(7),
      Q => axis_tdata(7),
      R => '0'
    );
\axis_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(8),
      Q => axis_tdata(8),
      R => '0'
    );
\axis_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(9),
      Q => axis_tdata(9),
      R => '0'
    );
axis_tvalid_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axis_aresetn,
      I1 => enable,
      O => axis_tvalid_i_1_n_0
    );
axis_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => axis_tvalid_i_1_n_0,
      Q => axis_tvalid,
      R => '0'
    );
portA_en_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => enable,
      I1 => axis_aresetn,
      I2 => \^porta_en\,
      O => portA_en_i_1_n_0
    );
portA_en_reg: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_en_i_1_n_0,
      Q => \^porta_en\,
      R => '0'
    );
\portAcpu_addr[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axis_aresetn,
      I1 => enable,
      O => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^portacpu_addr\(0),
      O => \portAcpu_addr[7]_i_2_n_0\
    );
\portAcpu_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => axis_aresetn,
      D => data0(10),
      Q => \^portacpu_addr\(9),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => axis_aresetn,
      D => data0(11),
      Q => \^portacpu_addr\(10),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => axis_aresetn,
      D => data0(12),
      Q => \^portacpu_addr\(11),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => axis_aresetn,
      D => data0(13),
      Q => \^portacpu_addr\(12),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => axis_aresetn,
      D => data0(14),
      Q => \^portacpu_addr\(13),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => axis_aresetn,
      D => data0(15),
      Q => \^portacpu_addr\(14),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \portAcpu_addr_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \portAcpu_addr_reg[15]_i_1_n_0\,
      CO(6) => \portAcpu_addr_reg[15]_i_1_n_1\,
      CO(5) => \portAcpu_addr_reg[15]_i_1_n_2\,
      CO(4) => \portAcpu_addr_reg[15]_i_1_n_3\,
      CO(3) => \portAcpu_addr_reg[15]_i_1_n_4\,
      CO(2) => \portAcpu_addr_reg[15]_i_1_n_5\,
      CO(1) => \portAcpu_addr_reg[15]_i_1_n_6\,
      CO(0) => \portAcpu_addr_reg[15]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => data0(15 downto 8),
      S(7 downto 0) => \^portacpu_addr\(14 downto 7)
    );
\portAcpu_addr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => axis_aresetn,
      D => data0(16),
      Q => \^portacpu_addr\(15),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => axis_aresetn,
      D => data0(17),
      Q => \^portacpu_addr\(16),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => axis_aresetn,
      D => data0(18),
      Q => \^portacpu_addr\(17),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => axis_aresetn,
      D => data0(19),
      Q => \^portacpu_addr\(18),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => axis_aresetn,
      D => data0(1),
      Q => \^portacpu_addr\(0),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => axis_aresetn,
      D => data0(20),
      Q => \^portacpu_addr\(19),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => axis_aresetn,
      D => data0(21),
      Q => \^portacpu_addr\(20),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => axis_aresetn,
      D => data0(22),
      Q => \^portacpu_addr\(21),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => axis_aresetn,
      D => data0(23),
      Q => \^portacpu_addr\(22),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[23]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \portAcpu_addr_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \portAcpu_addr_reg[23]_i_1_n_0\,
      CO(6) => \portAcpu_addr_reg[23]_i_1_n_1\,
      CO(5) => \portAcpu_addr_reg[23]_i_1_n_2\,
      CO(4) => \portAcpu_addr_reg[23]_i_1_n_3\,
      CO(3) => \portAcpu_addr_reg[23]_i_1_n_4\,
      CO(2) => \portAcpu_addr_reg[23]_i_1_n_5\,
      CO(1) => \portAcpu_addr_reg[23]_i_1_n_6\,
      CO(0) => \portAcpu_addr_reg[23]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => data0(23 downto 16),
      S(7 downto 0) => \^portacpu_addr\(22 downto 15)
    );
\portAcpu_addr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => axis_aresetn,
      D => data0(24),
      Q => \^portacpu_addr\(23),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => axis_aresetn,
      D => data0(25),
      Q => \^portacpu_addr\(24),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => axis_aresetn,
      D => data0(26),
      Q => \^portacpu_addr\(25),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => axis_aresetn,
      D => data0(27),
      Q => \^portacpu_addr\(26),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => axis_aresetn,
      D => data0(28),
      Q => \^portacpu_addr\(27),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => axis_aresetn,
      D => data0(29),
      Q => \^portacpu_addr\(28),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => axis_aresetn,
      D => data0(2),
      Q => \^portacpu_addr\(1),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => axis_aresetn,
      D => data0(30),
      Q => \^portacpu_addr\(29),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => axis_aresetn,
      D => data0(31),
      Q => \^portacpu_addr\(30),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[31]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \portAcpu_addr_reg[23]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_portAcpu_addr_reg[31]_i_2_CO_UNCONNECTED\(7),
      CO(6) => \portAcpu_addr_reg[31]_i_2_n_1\,
      CO(5) => \portAcpu_addr_reg[31]_i_2_n_2\,
      CO(4) => \portAcpu_addr_reg[31]_i_2_n_3\,
      CO(3) => \portAcpu_addr_reg[31]_i_2_n_4\,
      CO(2) => \portAcpu_addr_reg[31]_i_2_n_5\,
      CO(1) => \portAcpu_addr_reg[31]_i_2_n_6\,
      CO(0) => \portAcpu_addr_reg[31]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => data0(31 downto 24),
      S(7 downto 0) => \^portacpu_addr\(30 downto 23)
    );
\portAcpu_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => axis_aresetn,
      D => data0(3),
      Q => \^portacpu_addr\(2),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => axis_aresetn,
      D => data0(4),
      Q => \^portacpu_addr\(3),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => axis_aresetn,
      D => data0(5),
      Q => \^portacpu_addr\(4),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => axis_aresetn,
      D => data0(6),
      Q => \^portacpu_addr\(5),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => axis_aresetn,
      D => data0(7),
      Q => \^portacpu_addr\(6),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \portAcpu_addr_reg[7]_i_1_n_0\,
      CO(6) => \portAcpu_addr_reg[7]_i_1_n_1\,
      CO(5) => \portAcpu_addr_reg[7]_i_1_n_2\,
      CO(4) => \portAcpu_addr_reg[7]_i_1_n_3\,
      CO(3) => \portAcpu_addr_reg[7]_i_1_n_4\,
      CO(2) => \portAcpu_addr_reg[7]_i_1_n_5\,
      CO(1) => \portAcpu_addr_reg[7]_i_1_n_6\,
      CO(0) => \portAcpu_addr_reg[7]_i_1_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1) => \^portacpu_addr\(0),
      DI(0) => '0',
      O(7 downto 1) => data0(7 downto 1),
      O(0) => \NLW_portAcpu_addr_reg[7]_i_1_O_UNCONNECTED\(0),
      S(7 downto 2) => \^portacpu_addr\(6 downto 1),
      S(1) => \portAcpu_addr[7]_i_2_n_0\,
      S(0) => '0'
    );
\portAcpu_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => axis_aresetn,
      D => data0(8),
      Q => \^portacpu_addr\(7),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => axis_aresetn,
      D => data0(9),
      Q => \^portacpu_addr\(8),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    portA_cpu_wdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    portA_we : out STD_LOGIC_VECTOR ( 1 downto 0 );
    portA_en : out STD_LOGIC;
    portA_cpu_rdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    portAcpu_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    portA_clk : out STD_LOGIC;
    portA_rst : out STD_LOGIC;
    axis_clk : in STD_LOGIC;
    axis_aresetn : in STD_LOGIC;
    axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    axis_tready : in STD_LOGIC;
    axis_tvalid : out STD_LOGIC;
    numSampleVectors : in STD_LOGIC_VECTOR ( 16 downto 0 );
    enable : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "mts_DACRAMstreamer_0_0,DACRAMstreamer,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "DACRAMstreamer,Vivado 2022.2.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^axis_clk\ : STD_LOGIC;
  signal \^portacpu_addr\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  attribute x_interface_info : string;
  attribute x_interface_info of axis_aresetn : signal is "xilinx.com:signal:reset:1.0 axis_aresetn RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of axis_aresetn : signal is "XIL_INTERFACENAME axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of axis_clk : signal is "xilinx.com:signal:clock:1.0 axis_clk CLK";
  attribute x_interface_parameter of axis_clk : signal is "ASSOCIATED_BUSIF AXIS, ASSOCIATED_RESET axis_aresetn";
  attribute x_interface_info of axis_tready : signal is "xilinx.com:interface:axis:1.0 axis TREADY";
  attribute x_interface_info of axis_tvalid : signal is "xilinx.com:interface:axis:1.0 axis TVALID";
  attribute x_interface_info of portA_clk : signal is "xilinx.com:interface:bram:1.0 BRAM_A CLK";
  attribute x_interface_info of portA_en : signal is "xilinx.com:interface:bram:1.0 BRAM_A EN";
  attribute x_interface_info of portA_rst : signal is "xilinx.com:interface:bram:1.0 BRAM_A RST";
  attribute x_interface_info of axis_tdata : signal is "xilinx.com:interface:axis:1.0 axis TDATA";
  attribute x_interface_parameter of axis_tdata : signal is "XIL_INTERFACENAME axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 250000000, PHASE 0.0, CLK_DOMAIN /clocktreeMTS/MTSclkwiz_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of portA_cpu_rdata : signal is "xilinx.com:interface:bram:1.0 BRAM_A DOUT";
  attribute x_interface_info of portA_cpu_wdata : signal is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute x_interface_parameter of portA_cpu_wdata : signal is "XIL_INTERFACENAME BRAM_A, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256, MEM_ECC NONE, READ_LATENCY 1";
  attribute x_interface_info of portA_we : signal is "xilinx.com:interface:bram:1.0 BRAM_A WE";
  attribute x_interface_info of portAcpu_addr : signal is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
begin
  \^axis_clk\ <= axis_clk;
  portA_clk <= \^axis_clk\;
  portA_cpu_wdata(15) <= \<const0>\;
  portA_cpu_wdata(14) <= \<const0>\;
  portA_cpu_wdata(13) <= \<const0>\;
  portA_cpu_wdata(12) <= \<const0>\;
  portA_cpu_wdata(11) <= \<const0>\;
  portA_cpu_wdata(10) <= \<const0>\;
  portA_cpu_wdata(9) <= \<const0>\;
  portA_cpu_wdata(8) <= \<const0>\;
  portA_cpu_wdata(7) <= \<const0>\;
  portA_cpu_wdata(6) <= \<const0>\;
  portA_cpu_wdata(5) <= \<const0>\;
  portA_cpu_wdata(4) <= \<const0>\;
  portA_cpu_wdata(3) <= \<const0>\;
  portA_cpu_wdata(2) <= \<const0>\;
  portA_cpu_wdata(1) <= \<const0>\;
  portA_cpu_wdata(0) <= \<const0>\;
  portA_we(1) <= \<const0>\;
  portA_we(0) <= \<const0>\;
  portAcpu_addr(31 downto 1) <= \^portacpu_addr\(31 downto 1);
  portAcpu_addr(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DACRAMstreamer
     port map (
      axis_aresetn => axis_aresetn,
      axis_clk => \^axis_clk\,
      axis_tdata(15 downto 0) => axis_tdata(15 downto 0),
      axis_tvalid => axis_tvalid,
      enable => enable,
      portA_cpu_rdata(15 downto 0) => portA_cpu_rdata(15 downto 0),
      portA_en => portA_en,
      portAcpu_addr(30 downto 0) => \^portacpu_addr\(31 downto 1)
    );
portA_rst_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_aresetn,
      O => portA_rst
    );
end STRUCTURE;
