-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2.2 (win64) Build 3788238 Tue Feb 21 20:00:34 MST 2023
-- Date        : Mon Jun 19 19:33:30 2023
-- Host        : Sega running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mts_ADCRAMcapture_0_2_stub.vhdl
-- Design      : mts_ADCRAMcapture_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu48dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    bram_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    bram_we : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_en : out STD_LOGIC;
    bram_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    bram_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_clk : out STD_LOGIC;
    bram_rst : out STD_LOGIC;
    axis_clk : in STD_LOGIC;
    axis_aresetn : in STD_LOGIC;
    CAP_AXIS_tdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    CAP_AXIS_tready : out STD_LOGIC;
    CAP_AXIS_tvalid : in STD_LOGIC;
    trig_cap : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "bram_wdata[255:0],bram_we[31:0],bram_en,bram_rdata[255:0],bram_addr[31:0],bram_clk,bram_rst,axis_clk,axis_aresetn,CAP_AXIS_tdata[255:0],CAP_AXIS_tready,CAP_AXIS_tvalid,trig_cap";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "ADCRAMcapture,Vivado 2022.2.2";
begin
end;
