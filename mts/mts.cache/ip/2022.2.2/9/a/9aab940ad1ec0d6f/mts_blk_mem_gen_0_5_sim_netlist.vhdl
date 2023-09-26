-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2.2 (win64) Build 3788238 Tue Feb 21 20:00:34 MST 2023
-- Date        : Thu Jun 29 15:27:56 2023
-- Host        : Sega running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mts_blk_mem_gen_0_5_sim_netlist.vhdl
-- Design      : mts_blk_mem_gen_0_5
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu48dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 14;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 14;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 16;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 16;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "[7:0]";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 3;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 262144;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 16384;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "ultra";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 16;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 16;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 16;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 16;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 16;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 14;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 14;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 14;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 14;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 16;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 16;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 16;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 16;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 16;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 16;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "soft";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 16;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 16;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base is
  signal \<const0>\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_6\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_7\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_8\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_9\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_AddrA_1\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_AddrB_1\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_BEWB_1\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_BWEA_1\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DinA_1\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DinB_1\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DoutA_1\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DoutB_1\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_6\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_7\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_8\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_9\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_AddrA_2\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_AddrB_2\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_BEWB_2\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_BWEA_2\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DinA_2\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DinB_2\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DoutA_2\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DoutB_2\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_1\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_2\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_3\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_4\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_5\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_6\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_7\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_8\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_9\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_AddrA_3\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_AddrB_3\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_BEWB_3\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_BWEA_3\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DinA_3\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DinB_3\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DoutA_3\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DoutB_3\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_ADDR_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_ADDR_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DIN_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DIN_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_ADDR_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_ADDR_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DIN_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DIN_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_EN_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_EN_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDB_WR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDB_WR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_ADDR_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_ADDR_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_ADDR_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_ADDR_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_BWE_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_BWE_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DIN_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DIN_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DIN_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DIN_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 16 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  attribute \MEM.PORTA.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ : integer;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 4095;
  attribute \MEM.PORTA.DATA_LSB\ : integer;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ : integer;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 15;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ : integer;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 4095;
  attribute \MEM.PORTB.DATA_LSB\ : integer;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute \MEM.PORTB.DATA_MSB\ : integer;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 15;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 262144;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_sp.xpm_memory_spram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_uram_0";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is "RAM_SP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 4095;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 15;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 4096;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 8191;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 15;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 4096;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 8191;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 0;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 15;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 262144;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_sp.xpm_memory_spram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_uram_1";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is "RAM_SP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 4096;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 8191;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 0;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_1\ : label is 15;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 8192;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 12287;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 15;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 8192;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 12287;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 0;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 15;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 262144;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_sp.xpm_memory_spram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_uram_2";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is "RAM_SP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 8192;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 12287;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 0;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_2\ : label is 15;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 12288;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 16383;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 15;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 12288;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 16383;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 0;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 15;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 262144;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is "U0/inst_blk_mem_gen/gnuram_without_32bit_addr.uram_sp.xpm_memory_spram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_uram_3";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is "RAM_SP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 12288;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 16383;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 0;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_3\ : label is 15;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  doutb(15) <= \<const0>\;
  doutb(14) <= \<const0>\;
  doutb(13) <= \<const0>\;
  doutb(12) <= \<const0>\;
  doutb(11) <= \<const0>\;
  doutb(10) <= \<const0>\;
  doutb(9) <= \<const0>\;
  doutb(8) <= \<const0>\;
  doutb(7) <= \<const0>\;
  doutb(6) <= \<const0>\;
  doutb(5) <= \<const0>\;
  doutb(4) <= \<const0>\;
  doutb(3) <= \<const0>\;
  doutb(2) <= \<const0>\;
  doutb(1) <= \<const0>\;
  doutb(0) <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_wr_a.gen_word_narrow.mem_reg_uram_0\: unisim.vcomponents.URAM288
    generic map(
      AVG_CONS_INACTIVE_CYCLES => 10,
      BWE_MODE_A => "PARITY_INDEPENDENT",
      BWE_MODE_B => "PARITY_INDEPENDENT",
      CASCADE_ORDER_A => "FIRST",
      CASCADE_ORDER_B => "FIRST",
      EN_ECC_RD_A => "FALSE",
      EN_ECC_RD_B => "FALSE",
      EN_ECC_WR_A => "FALSE",
      EN_ECC_WR_B => "FALSE",
      IREG_PRE_A => "FALSE",
      IREG_PRE_B => "FALSE",
      IS_CLK_INVERTED => '0',
      IS_EN_A_INVERTED => '0',
      IS_EN_B_INVERTED => '0',
      IS_RDB_WR_A_INVERTED => '0',
      IS_RDB_WR_B_INVERTED => '0',
      IS_RST_A_INVERTED => '0',
      IS_RST_B_INVERTED => '0',
      MATRIX_ID => "gen_wr_a.gen_word_narrow.mem_reg_B3_M0",
      NUM_UNIQUE_SELF_ADDR_A => 4,
      NUM_UNIQUE_SELF_ADDR_B => 4,
      NUM_URAM_IN_MATRIX => 4,
      OREG_A => "FALSE",
      OREG_B => "FALSE",
      OREG_ECC_A => "FALSE",
      OREG_ECC_B => "FALSE",
      REG_CAS_A => "FALSE",
      REG_CAS_B => "FALSE",
      RST_MODE_A => "SYNC",
      RST_MODE_B => "SYNC",
      SELF_ADDR_A => B"000" & X"00",
      SELF_ADDR_B => B"000" & X"00",
      SELF_MASK_A => B"111" & X"FC",
      SELF_MASK_B => B"111" & X"FC",
      USE_EXT_CE_A => "FALSE",
      USE_EXT_CE_B => "FALSE"
    )
        port map (
      ADDR_A(22 downto 14) => B"000000000",
      ADDR_A(13 downto 0) => addra(13 downto 0),
      ADDR_B(22 downto 14) => B"000000000",
      ADDR_B(13 downto 0) => addra(13 downto 0),
      BWE_A(8 downto 0) => B"111111111",
      BWE_B(8) => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0\,
      BWE_B(7) => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0\,
      BWE_B(6) => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0\,
      BWE_B(5) => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0\,
      BWE_B(4) => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0\,
      BWE_B(3) => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0\,
      BWE_B(2) => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0\,
      BWE_B(1) => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0\,
      BWE_B(0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0\,
      CAS_IN_ADDR_A(22 downto 0) => B"00000000000000000000000",
      CAS_IN_ADDR_B(22 downto 0) => B"00000000000000000000000",
      CAS_IN_BWE_A(8 downto 0) => B"000000000",
      CAS_IN_BWE_B(8 downto 0) => B"000000000",
      CAS_IN_DBITERR_A => '0',
      CAS_IN_DBITERR_B => '0',
      CAS_IN_DIN_A(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      CAS_IN_DIN_B(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      CAS_IN_DOUT_A(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      CAS_IN_DOUT_B(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      CAS_IN_EN_A => '0',
      CAS_IN_EN_B => '0',
      CAS_IN_RDACCESS_A => '0',
      CAS_IN_RDACCESS_B => '0',
      CAS_IN_RDB_WR_A => '0',
      CAS_IN_RDB_WR_B => '0',
      CAS_IN_SBITERR_A => '0',
      CAS_IN_SBITERR_B => '0',
      CAS_OUT_ADDR_A(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_AddrA_1\(22 downto 0),
      CAS_OUT_ADDR_B(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_AddrB_1\(22 downto 0),
      CAS_OUT_BWE_A(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_BWEA_1\(8 downto 0),
      CAS_OUT_BWE_B(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_BEWB_1\(8 downto 0),
      CAS_OUT_DBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_0\,
      CAS_OUT_DBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_1\,
      CAS_OUT_DIN_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DinA_1\(71 downto 0),
      CAS_OUT_DIN_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DinB_1\(71 downto 0),
      CAS_OUT_DOUT_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DoutA_1\(71 downto 0),
      CAS_OUT_DOUT_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DoutB_1\(71 downto 0),
      CAS_OUT_EN_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_2\,
      CAS_OUT_EN_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_3\,
      CAS_OUT_RDACCESS_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_4\,
      CAS_OUT_RDACCESS_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_5\,
      CAS_OUT_RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_6\,
      CAS_OUT_RDB_WR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_7\,
      CAS_OUT_SBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_8\,
      CAS_OUT_SBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_9\,
      CLK => clka,
      DBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DBITERR_A_UNCONNECTED\,
      DBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DBITERR_B_UNCONNECTED\,
      DIN_A(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      DIN_B(71 downto 16) => B"00000000000000000000000000000000000000000000000000000000",
      DIN_B(15 downto 0) => dina(15 downto 0),
      DOUT_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DOUT_A_UNCONNECTED\(71 downto 0),
      DOUT_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DOUT_B_UNCONNECTED\(71 downto 0),
      EN_A => ena,
      EN_B => ena,
      INJECT_DBITERR_A => '0',
      INJECT_DBITERR_B => '0',
      INJECT_SBITERR_A => '0',
      INJECT_SBITERR_B => '0',
      OREG_CE_A => '1',
      OREG_CE_B => '1',
      OREG_ECC_CE_A => '1',
      OREG_ECC_CE_B => '1',
      RDACCESS_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_RDACCESS_A_UNCONNECTED\,
      RDACCESS_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_RDACCESS_B_UNCONNECTED\,
      RDB_WR_A => '0',
      RDB_WR_B => '1',
      RST_A => '0',
      RST_B => '0',
      SBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_SBITERR_A_UNCONNECTED\,
      SBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_SBITERR_B_UNCONNECTED\,
      SLEEP => '0'
    );
\gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ena,
      I1 => wea(0),
      O => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_uram_1\: unisim.vcomponents.URAM288
    generic map(
      AVG_CONS_INACTIVE_CYCLES => 10,
      BWE_MODE_A => "PARITY_INDEPENDENT",
      BWE_MODE_B => "PARITY_INDEPENDENT",
      CASCADE_ORDER_A => "MIDDLE",
      CASCADE_ORDER_B => "MIDDLE",
      EN_ECC_RD_A => "FALSE",
      EN_ECC_RD_B => "FALSE",
      EN_ECC_WR_A => "FALSE",
      EN_ECC_WR_B => "FALSE",
      IREG_PRE_A => "FALSE",
      IREG_PRE_B => "FALSE",
      IS_CLK_INVERTED => '0',
      IS_EN_A_INVERTED => '0',
      IS_EN_B_INVERTED => '0',
      IS_RDB_WR_A_INVERTED => '0',
      IS_RDB_WR_B_INVERTED => '0',
      IS_RST_A_INVERTED => '0',
      IS_RST_B_INVERTED => '0',
      MATRIX_ID => "gen_wr_a.gen_word_narrow.mem_reg_B3_M0",
      NUM_UNIQUE_SELF_ADDR_A => 4,
      NUM_UNIQUE_SELF_ADDR_B => 4,
      NUM_URAM_IN_MATRIX => 4,
      OREG_A => "FALSE",
      OREG_B => "FALSE",
      OREG_ECC_A => "FALSE",
      OREG_ECC_B => "FALSE",
      REG_CAS_A => "FALSE",
      REG_CAS_B => "FALSE",
      RST_MODE_A => "SYNC",
      RST_MODE_B => "SYNC",
      SELF_ADDR_A => B"000" & X"01",
      SELF_ADDR_B => B"000" & X"01",
      SELF_MASK_A => B"111" & X"FC",
      SELF_MASK_B => B"111" & X"FC",
      USE_EXT_CE_A => "FALSE",
      USE_EXT_CE_B => "FALSE"
    )
        port map (
      ADDR_A(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_ADDR_A_UNCONNECTED\(22 downto 0),
      ADDR_B(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_ADDR_B_UNCONNECTED\(22 downto 0),
      BWE_A(8 downto 0) => B"111111111",
      BWE_B(8 downto 0) => B"111111111",
      CAS_IN_ADDR_A(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_AddrA_1\(22 downto 0),
      CAS_IN_ADDR_B(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_AddrB_1\(22 downto 0),
      CAS_IN_BWE_A(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_BWEA_1\(8 downto 0),
      CAS_IN_BWE_B(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_BEWB_1\(8 downto 0),
      CAS_IN_DBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_0\,
      CAS_IN_DBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_1\,
      CAS_IN_DIN_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DinA_1\(71 downto 0),
      CAS_IN_DIN_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DinB_1\(71 downto 0),
      CAS_IN_DOUT_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DoutA_1\(71 downto 0),
      CAS_IN_DOUT_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DoutB_1\(71 downto 0),
      CAS_IN_EN_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_2\,
      CAS_IN_EN_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_3\,
      CAS_IN_RDACCESS_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_4\,
      CAS_IN_RDACCESS_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_5\,
      CAS_IN_RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_6\,
      CAS_IN_RDB_WR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_7\,
      CAS_IN_SBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_8\,
      CAS_IN_SBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_9\,
      CAS_OUT_ADDR_A(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_AddrA_2\(22 downto 0),
      CAS_OUT_ADDR_B(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_AddrB_2\(22 downto 0),
      CAS_OUT_BWE_A(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_BWEA_2\(8 downto 0),
      CAS_OUT_BWE_B(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_BEWB_2\(8 downto 0),
      CAS_OUT_DBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_0\,
      CAS_OUT_DBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_1\,
      CAS_OUT_DIN_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DinA_2\(71 downto 0),
      CAS_OUT_DIN_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DinB_2\(71 downto 0),
      CAS_OUT_DOUT_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DoutA_2\(71 downto 0),
      CAS_OUT_DOUT_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DoutB_2\(71 downto 0),
      CAS_OUT_EN_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_2\,
      CAS_OUT_EN_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_3\,
      CAS_OUT_RDACCESS_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_4\,
      CAS_OUT_RDACCESS_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_5\,
      CAS_OUT_RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_6\,
      CAS_OUT_RDB_WR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_7\,
      CAS_OUT_SBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_8\,
      CAS_OUT_SBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_9\,
      CLK => clka,
      DBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DBITERR_A_UNCONNECTED\,
      DBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DBITERR_B_UNCONNECTED\,
      DIN_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DIN_A_UNCONNECTED\(71 downto 0),
      DIN_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DIN_B_UNCONNECTED\(71 downto 0),
      DOUT_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DOUT_A_UNCONNECTED\(71 downto 0),
      DOUT_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DOUT_B_UNCONNECTED\(71 downto 0),
      EN_A => '1',
      EN_B => '1',
      INJECT_DBITERR_A => '0',
      INJECT_DBITERR_B => '0',
      INJECT_SBITERR_A => '0',
      INJECT_SBITERR_B => '0',
      OREG_CE_A => '1',
      OREG_CE_B => '1',
      OREG_ECC_CE_A => '1',
      OREG_ECC_CE_B => '1',
      RDACCESS_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_RDACCESS_A_UNCONNECTED\,
      RDACCESS_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_RDACCESS_B_UNCONNECTED\,
      RDB_WR_A => '1',
      RDB_WR_B => '1',
      RST_A => '0',
      RST_B => '0',
      SBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_SBITERR_A_UNCONNECTED\,
      SBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_SBITERR_B_UNCONNECTED\,
      SLEEP => '0'
    );
\gen_wr_a.gen_word_narrow.mem_reg_uram_2\: unisim.vcomponents.URAM288
    generic map(
      AVG_CONS_INACTIVE_CYCLES => 10,
      BWE_MODE_A => "PARITY_INDEPENDENT",
      BWE_MODE_B => "PARITY_INDEPENDENT",
      CASCADE_ORDER_A => "MIDDLE",
      CASCADE_ORDER_B => "MIDDLE",
      EN_ECC_RD_A => "FALSE",
      EN_ECC_RD_B => "FALSE",
      EN_ECC_WR_A => "FALSE",
      EN_ECC_WR_B => "FALSE",
      IREG_PRE_A => "FALSE",
      IREG_PRE_B => "FALSE",
      IS_CLK_INVERTED => '0',
      IS_EN_A_INVERTED => '0',
      IS_EN_B_INVERTED => '0',
      IS_RDB_WR_A_INVERTED => '0',
      IS_RDB_WR_B_INVERTED => '0',
      IS_RST_A_INVERTED => '0',
      IS_RST_B_INVERTED => '0',
      MATRIX_ID => "gen_wr_a.gen_word_narrow.mem_reg_B3_M0",
      NUM_UNIQUE_SELF_ADDR_A => 4,
      NUM_UNIQUE_SELF_ADDR_B => 4,
      NUM_URAM_IN_MATRIX => 4,
      OREG_A => "FALSE",
      OREG_B => "FALSE",
      OREG_ECC_A => "FALSE",
      OREG_ECC_B => "FALSE",
      REG_CAS_A => "FALSE",
      REG_CAS_B => "FALSE",
      RST_MODE_A => "SYNC",
      RST_MODE_B => "SYNC",
      SELF_ADDR_A => B"000" & X"02",
      SELF_ADDR_B => B"000" & X"02",
      SELF_MASK_A => B"111" & X"FC",
      SELF_MASK_B => B"111" & X"FC",
      USE_EXT_CE_A => "FALSE",
      USE_EXT_CE_B => "FALSE"
    )
        port map (
      ADDR_A(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_ADDR_A_UNCONNECTED\(22 downto 0),
      ADDR_B(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_ADDR_B_UNCONNECTED\(22 downto 0),
      BWE_A(8 downto 0) => B"111111111",
      BWE_B(8 downto 0) => B"111111111",
      CAS_IN_ADDR_A(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_AddrA_2\(22 downto 0),
      CAS_IN_ADDR_B(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_AddrB_2\(22 downto 0),
      CAS_IN_BWE_A(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_BWEA_2\(8 downto 0),
      CAS_IN_BWE_B(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_BEWB_2\(8 downto 0),
      CAS_IN_DBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_0\,
      CAS_IN_DBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_1\,
      CAS_IN_DIN_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DinA_2\(71 downto 0),
      CAS_IN_DIN_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DinB_2\(71 downto 0),
      CAS_IN_DOUT_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DoutA_2\(71 downto 0),
      CAS_IN_DOUT_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DoutB_2\(71 downto 0),
      CAS_IN_EN_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_2\,
      CAS_IN_EN_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_3\,
      CAS_IN_RDACCESS_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_4\,
      CAS_IN_RDACCESS_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_5\,
      CAS_IN_RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_6\,
      CAS_IN_RDB_WR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_7\,
      CAS_IN_SBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_8\,
      CAS_IN_SBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_9\,
      CAS_OUT_ADDR_A(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_AddrA_3\(22 downto 0),
      CAS_OUT_ADDR_B(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_AddrB_3\(22 downto 0),
      CAS_OUT_BWE_A(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_BWEA_3\(8 downto 0),
      CAS_OUT_BWE_B(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_BEWB_3\(8 downto 0),
      CAS_OUT_DBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_0\,
      CAS_OUT_DBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_1\,
      CAS_OUT_DIN_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DinA_3\(71 downto 0),
      CAS_OUT_DIN_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DinB_3\(71 downto 0),
      CAS_OUT_DOUT_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DoutA_3\(71 downto 0),
      CAS_OUT_DOUT_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DoutB_3\(71 downto 0),
      CAS_OUT_EN_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_2\,
      CAS_OUT_EN_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_3\,
      CAS_OUT_RDACCESS_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_4\,
      CAS_OUT_RDACCESS_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_5\,
      CAS_OUT_RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_6\,
      CAS_OUT_RDB_WR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_7\,
      CAS_OUT_SBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_8\,
      CAS_OUT_SBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_9\,
      CLK => clka,
      DBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DBITERR_A_UNCONNECTED\,
      DBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DBITERR_B_UNCONNECTED\,
      DIN_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DIN_A_UNCONNECTED\(71 downto 0),
      DIN_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DIN_B_UNCONNECTED\(71 downto 0),
      DOUT_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DOUT_A_UNCONNECTED\(71 downto 0),
      DOUT_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DOUT_B_UNCONNECTED\(71 downto 0),
      EN_A => '1',
      EN_B => '1',
      INJECT_DBITERR_A => '0',
      INJECT_DBITERR_B => '0',
      INJECT_SBITERR_A => '0',
      INJECT_SBITERR_B => '0',
      OREG_CE_A => '1',
      OREG_CE_B => '1',
      OREG_ECC_CE_A => '1',
      OREG_ECC_CE_B => '1',
      RDACCESS_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_RDACCESS_A_UNCONNECTED\,
      RDACCESS_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_RDACCESS_B_UNCONNECTED\,
      RDB_WR_A => '1',
      RDB_WR_B => '1',
      RST_A => '0',
      RST_B => '0',
      SBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_SBITERR_A_UNCONNECTED\,
      SBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_SBITERR_B_UNCONNECTED\,
      SLEEP => '0'
    );
\gen_wr_a.gen_word_narrow.mem_reg_uram_3\: unisim.vcomponents.URAM288
    generic map(
      AVG_CONS_INACTIVE_CYCLES => 10,
      BWE_MODE_A => "PARITY_INDEPENDENT",
      BWE_MODE_B => "PARITY_INDEPENDENT",
      CASCADE_ORDER_A => "LAST",
      CASCADE_ORDER_B => "LAST",
      EN_ECC_RD_A => "FALSE",
      EN_ECC_RD_B => "FALSE",
      EN_ECC_WR_A => "FALSE",
      EN_ECC_WR_B => "FALSE",
      IREG_PRE_A => "FALSE",
      IREG_PRE_B => "FALSE",
      IS_CLK_INVERTED => '0',
      IS_EN_A_INVERTED => '0',
      IS_EN_B_INVERTED => '0',
      IS_RDB_WR_A_INVERTED => '0',
      IS_RDB_WR_B_INVERTED => '0',
      IS_RST_A_INVERTED => '0',
      IS_RST_B_INVERTED => '0',
      MATRIX_ID => "gen_wr_a.gen_word_narrow.mem_reg_B3_M0",
      NUM_UNIQUE_SELF_ADDR_A => 4,
      NUM_UNIQUE_SELF_ADDR_B => 4,
      NUM_URAM_IN_MATRIX => 4,
      OREG_A => "FALSE",
      OREG_B => "FALSE",
      OREG_ECC_A => "FALSE",
      OREG_ECC_B => "FALSE",
      REG_CAS_A => "FALSE",
      REG_CAS_B => "FALSE",
      RST_MODE_A => "SYNC",
      RST_MODE_B => "SYNC",
      SELF_ADDR_A => B"000" & X"03",
      SELF_ADDR_B => B"000" & X"03",
      SELF_MASK_A => B"111" & X"FC",
      SELF_MASK_B => B"111" & X"FC",
      USE_EXT_CE_A => "FALSE",
      USE_EXT_CE_B => "FALSE"
    )
        port map (
      ADDR_A(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_ADDR_A_UNCONNECTED\(22 downto 0),
      ADDR_B(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_ADDR_B_UNCONNECTED\(22 downto 0),
      BWE_A(8 downto 0) => B"111111111",
      BWE_B(8 downto 0) => B"111111111",
      CAS_IN_ADDR_A(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_AddrA_3\(22 downto 0),
      CAS_IN_ADDR_B(22 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_AddrB_3\(22 downto 0),
      CAS_IN_BWE_A(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_BWEA_3\(8 downto 0),
      CAS_IN_BWE_B(8 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_BEWB_3\(8 downto 0),
      CAS_IN_DBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_0\,
      CAS_IN_DBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_1\,
      CAS_IN_DIN_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DinA_3\(71 downto 0),
      CAS_IN_DIN_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DinB_3\(71 downto 0),
      CAS_IN_DOUT_A(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DoutA_3\(71 downto 0),
      CAS_IN_DOUT_B(71 downto 0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DoutB_3\(71 downto 0),
      CAS_IN_EN_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_2\,
      CAS_IN_EN_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_3\,
      CAS_IN_RDACCESS_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_4\,
      CAS_IN_RDACCESS_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_5\,
      CAS_IN_RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_6\,
      CAS_IN_RDB_WR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_7\,
      CAS_IN_SBITERR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_8\,
      CAS_IN_SBITERR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_9\,
      CAS_OUT_ADDR_A(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_ADDR_A_UNCONNECTED\(22 downto 0),
      CAS_OUT_ADDR_B(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_ADDR_B_UNCONNECTED\(22 downto 0),
      CAS_OUT_BWE_A(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_BWE_A_UNCONNECTED\(8 downto 0),
      CAS_OUT_BWE_B(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_BWE_B_UNCONNECTED\(8 downto 0),
      CAS_OUT_DBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DBITERR_A_UNCONNECTED\,
      CAS_OUT_DBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DBITERR_B_UNCONNECTED\,
      CAS_OUT_DIN_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DIN_A_UNCONNECTED\(71 downto 0),
      CAS_OUT_DIN_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DIN_B_UNCONNECTED\(71 downto 0),
      CAS_OUT_DOUT_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DOUT_A_UNCONNECTED\(71 downto 0),
      CAS_OUT_DOUT_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DOUT_B_UNCONNECTED\(71 downto 0),
      CAS_OUT_EN_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_EN_A_UNCONNECTED\,
      CAS_OUT_EN_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_EN_B_UNCONNECTED\,
      CAS_OUT_RDACCESS_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDACCESS_A_UNCONNECTED\,
      CAS_OUT_RDACCESS_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDACCESS_B_UNCONNECTED\,
      CAS_OUT_RDB_WR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDB_WR_A_UNCONNECTED\,
      CAS_OUT_RDB_WR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDB_WR_B_UNCONNECTED\,
      CAS_OUT_SBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_SBITERR_A_UNCONNECTED\,
      CAS_OUT_SBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_SBITERR_B_UNCONNECTED\,
      CLK => clka,
      DBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DBITERR_A_UNCONNECTED\,
      DBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DBITERR_B_UNCONNECTED\,
      DIN_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DIN_A_UNCONNECTED\(71 downto 0),
      DIN_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DIN_B_UNCONNECTED\(71 downto 0),
      DOUT_A(71 downto 16) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DOUT_A_UNCONNECTED\(71 downto 16),
      DOUT_A(15 downto 0) => douta(15 downto 0),
      DOUT_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DOUT_B_UNCONNECTED\(71 downto 0),
      EN_A => '1',
      EN_B => '1',
      INJECT_DBITERR_A => '0',
      INJECT_DBITERR_B => '0',
      INJECT_SBITERR_A => '0',
      INJECT_SBITERR_B => '0',
      OREG_CE_A => '1',
      OREG_CE_B => '1',
      OREG_ECC_CE_A => '1',
      OREG_ECC_CE_B => '1',
      RDACCESS_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_RDACCESS_A_UNCONNECTED\,
      RDACCESS_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_RDACCESS_B_UNCONNECTED\,
      RDB_WR_A => '1',
      RDB_WR_B => '1',
      RST_A => '0',
      RST_B => '0',
      SBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_SBITERR_A_UNCONNECTED\,
      SBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_SBITERR_B_UNCONNECTED\,
      SLEEP => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram is
  signal NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of xpm_memory_base_inst : label is 14;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of xpm_memory_base_inst : label is 14;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of xpm_memory_base_inst : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of xpm_memory_base_inst : label is 16;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of xpm_memory_base_inst : label is 16;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of xpm_memory_base_inst : label is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of xpm_memory_base_inst : label is 0;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of xpm_memory_base_inst : label is "[7:0]";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of xpm_memory_base_inst : label is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of xpm_memory_base_inst : label is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of xpm_memory_base_inst : label is 0;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of xpm_memory_base_inst : label is "soft";
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of xpm_memory_base_inst : label is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of xpm_memory_base_inst : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of xpm_memory_base_inst : label is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of xpm_memory_base_inst : label is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of xpm_memory_base_inst : label is 3;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of xpm_memory_base_inst : label is 262144;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of xpm_memory_base_inst : label is 0;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of xpm_memory_base_inst : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of xpm_memory_base_inst : label is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of xpm_memory_base_inst : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of xpm_memory_base_inst : label is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of xpm_memory_base_inst : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of xpm_memory_base_inst : label is 16384;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of xpm_memory_base_inst : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of xpm_memory_base_inst : label is "ultra";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of xpm_memory_base_inst : label is 16;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of xpm_memory_base_inst : label is 16;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of xpm_memory_base_inst : label is 16;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of xpm_memory_base_inst : label is 16;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of xpm_memory_base_inst : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of xpm_memory_base_inst : label is 16;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of xpm_memory_base_inst : label is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of xpm_memory_base_inst : label is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of xpm_memory_base_inst : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of xpm_memory_base_inst : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of xpm_memory_base_inst : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of xpm_memory_base_inst : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of xpm_memory_base_inst : label is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of xpm_memory_base_inst : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of xpm_memory_base_inst : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of xpm_memory_base_inst : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of xpm_memory_base_inst : label is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of xpm_memory_base_inst : label is 14;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of xpm_memory_base_inst : label is 14;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of xpm_memory_base_inst : label is 14;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of xpm_memory_base_inst : label is 14;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of xpm_memory_base_inst : label is 16;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of xpm_memory_base_inst : label is 16;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of xpm_memory_base_inst : label is 16;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of xpm_memory_base_inst : label is 16;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of xpm_memory_base_inst : label is 1;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of xpm_memory_base_inst : label is 1;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of xpm_memory_base_inst : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of xpm_memory_base_inst : label is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of xpm_memory_base_inst : label is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of xpm_memory_base_inst : label is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of xpm_memory_base_inst : label is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of xpm_memory_base_inst : label is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of xpm_memory_base_inst : label is 1;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of xpm_memory_base_inst : label is 0;
  attribute VERSION : integer;
  attribute VERSION of xpm_memory_base_inst : label is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of xpm_memory_base_inst : label is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of xpm_memory_base_inst : label is 16;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of xpm_memory_base_inst : label is 16;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of xpm_memory_base_inst : label is 1;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of xpm_memory_base_inst : label is 1;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of xpm_memory_base_inst : label is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of xpm_memory_base_inst : label is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of xpm_memory_base_inst : label is 16;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of xpm_memory_base_inst : label is 16;
begin
xpm_memory_base_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base
     port map (
      addra(13 downto 0) => addra(13 downto 0),
      addrb(13 downto 0) => B"00000000000000",
      clka => clka,
      clkb => '0',
      dbiterra => NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED,
      dbiterrb => NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED,
      dina(15 downto 0) => dina(15 downto 0),
      dinb(15 downto 0) => B"0000000000000000",
      douta(15 downto 0) => douta(15 downto 0),
      doutb(15 downto 0) => NLW_xpm_memory_base_inst_doutb_UNCONNECTED(15 downto 0),
      ena => ena,
      enb => '0',
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '1',
      regceb => '0',
      rsta => '0',
      rstb => '0',
      sbiterra => NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED,
      sbiterrb => NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED,
      sleep => sleep,
      wea(0) => wea(0),
      web(0) => '0'
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2.2"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
Lg5F1Zfiau3QeByGU2d8iLyq6c0Ay54VBRkPDiennEnh7TDqlDHQ30ugh+dQhv2UbRSQ4p1Rw5u0
jZgZUZmy1Br6WeCfAfENro2z0tYpE6huap6VYu8VXMMViOdpLZhd3Joz8MWf9Vkpz9O8GsaXV6w1
FT3lzzRx4ZlWqSymP/Y=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
k67ldAp8HxMr9nrczAiQCAT2rtecidPnBUTDua4bP0PhBLrvQbOxphm7BiFhkHdGPiDgK6MdINUG
D//GaYQsWWpVUpGZfs8KXRKikvei6OQ4trNDIgpYU9T+zsDYIrvScWpep4H0Kh3R+s45gq7RnJ5m
vdUnaWHtpnFw5f3ARp9akA4O1XBR1BgUKzTCIe0UPAGCpWS1hK4aBQcxKu2PkOA+tPNAh3UV3BiZ
vZru2ov5N6bbEX7XHtyrDx4JovVQLfEIY+57bKNfzEEYKSjLOo5b7ftblU7gLeFmR30a6dQOMMgx
KzeWIzCpQemUcnoi/VEHbHGDt4HRBpIGifDODg==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
i+RRRWsjfOwMRpKMUFh0IBcShI8yHuzdR43aSUy7WlXp2lerQDV/hI6ANfHItxdA5uJrEIK5wJiU
VgB5oYlKbVJ1BvZbui5wQoJkmW7IbzfMYtuEI22QXBHs019oGwhANUpCO9BetK/0TTzFxVnHtNOu
/LHdKkMBA0VUUUKT6VU=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
tFYGPovVzEoIrKrjTzB6ZqQ6KnkrcjUP1OIG5V7ru9HH8w5P8AlgATXl1Xl3Dc0sTv5AhUl86uI/
Te6q6PxhMPJoRhRB1vXyGzAjrWjA4CWJdMmVu8MWo5zod7cvpkzdrQp18aQTcCDQwlU1DmNGiEOo
zimuLuAUKe6AyAorB43/1QRQQqCxNB7BHRnOJAQDnoyMFVNrG12rKOA/sAyZpMLD4B6xJ7gH7QXT
AZuGXKyILGNZ45qXUr2Hw1p0w3wXMgy/YvUW8HbaHN4jAYcIe/ECoyXyKCAWdzANlF2rT2PeCMqV
QEbigoyqGX27Rm4To5kqLVbmwgAs2ChKUhPckA==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
lR8YLkP+Cq0MiT1XckSgPvE9wroyAiBbeHMaKlLiOTx7yegD3rCMk4uetnkA7xdOCG95C0Od5pVH
e2YrEW06xFSOsWdDnQqKOKFYhTwAs147Ze0j25zjomr5m7CmawjMolxykzS96zChWImangU+6Dpu
mE/MKg5/kaC+7gqdMqPmK5P2lIX+ouok9XKxOokJuqD87QwEzDlFFh/qV9pd923yFRNG1c5yQCAY
jC0bWlxJRQo6nbEwBgMn8rC/mMABPH8uD2sMe1yaJv5P7sFeOf3cmAdUGQBGVHRKdpZ59LnHTu1K
InNoIfz9Mx01CNUYdTBr3X0w6fmS/h2C4MO1mA==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
qqgM6XiDSmuIOj2QmFL4f6puTJICjYjWzQLoNxU1gzCcXd5+ng75tjwe5w6urE45Df59LYjXr90N
xoD+v0GnCLOppWUn4S+1ojqBqn0qMLsvms3D9/dYenWKxpbEiFxbArUoCPmld0c++8yPVQ73qapG
1gDmjbWJO8ByYC0/tiugtOK/vE3jYVzEtxehN3MCFPsHGsspvaF3CdRsMas3tebV/SuH2XSAP8j+
fZhSi0u301RRmZ6mSAEqJK3He0Y91Z5ZQOd80417UBeLHaQiA9kHY2RWaBMXWHjx36IJNuIr/7jr
pqPYRD+g+IOGSYqYr2U+oVSWF/J6FaLGEFORSw==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
SLY1z3pfrH+89d+aYr8ZYKuGi1pV2B4YTh8mk4uHOGs4LKQ1igmeyM9GJBaMAmt5JcC96WDDnBw4
nB1kIjnCrjVv02nSbiHz+gz/GD9SP86nLzS9QkwUHgiEudWJ/8Fkv+fRer0hLWhtpFMq+QCQAqbX
Dy+Em4RhLOM5CQyRCxiExuROQRkGjH1tQtyz+peAX147pqTEtR9LrFRYUYEPXhtD9b7MSp46zgf4
lSI4aGfqhp6fXq48O+If4NBHVZAh8gHdbneSQhe7VWYJyFRn5NXB16YXAJLa4JQatsMczE+AmO09
k2OEByw2UvUNKGEaf4tNqeBnQNu8yAJKmMaRpQ==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
rHgksH8uRTUXMqfrbR/KpR7K/BN7+l1GGoZ5uBkIVJQ9E1b2f3VZJPrQ7S7VUrJ9W3clOpFEhjAM
Oc8jJzlnUOrbHfYO51LCZ66FccJgE3OjLaM/OzA3c72JbMeF05jEDKf4QdMRaIQwV0vXvFMXFbcg
CD7AuUhMJ/GWQx0JJmueM8RLvNdUcIDBkWoZcPsRFynLr8IfIXTFpVIdlFrvWDV9M+csfXnQIq6k
Y3z8TRciA00/EiKvOp6Eo50/kD4QjKDFCqzWcw9vpMR1S+mAW8D3yQQ3Mw+7TRW5DTmB7qmmS/LD
xKznKyYDNP9KJ8z4NfSZgy9kCEKF/AEOrpIJqnNaoA6HXh9YFegFhy9SpTPldFTNyW6JDzyY5DW1
hVFcYJFPmlT/ZDM7HC/yiWmfTZamjNjr6j6r4fX5ptKg03NOZ6yoiMqKwnvLDnRIQe9/S7fEOqdV
LqZswQByjnvoCBsrGYw6cNNfz5CW00eecKgkExyDTb2F/xuv6oGtNaRS

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
oDWKuMa0YoA/U/QPkQrlE/kjfj1li0yqCn8MeJ3rAm2Z/2YKghA9gsxWs8xB4fe/adKSQ4aHEt1i
tUAxBkQYlT8XiaSFJIAVhNmuXgiEPZ20R+VwppLUjekdT7PC18dHecsi59XlgVJPcddzakFIoqXD
rk8iU8PsQ4WRTiUl44mpMR93K+emGu1nkBJznWpM1pH3aBODRmMjU7IigwOfmOnDjrCzVULW4z7V
2AuUO8AJxPTXjBkt8QkS+Lo97MZG0bItGmjC+mkr0BAz/l2ADPjOsfpKHAN3Qk4Crlkhpfgt7XT0
5KHCyECHiPkWrJah55lp7roA13m4EgPMJeM69w==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
rabaiFoR9bIj5CFcJ70CIsYI2myG5mevbxKcSzOpgQHZ4FX874h3Mvv4oNhB5aIwoXefnyix4Pas
3xk2ZBOqreX1vuZUYS7Nk3rT6wqN+/JYXGO7E9xfmFF/iTdL9heWc8JHcLe4e6B8B9QYhGlkRIbN
3etlFTSqKlO5nfA6dKX6Cd+yV3PZZfJXT4jlaY1rpqMPaBtlHWQ7D4o1gO+mHgP0sOQ4bpowU+7Q
jMr0tYghyxsfIddTxrVE0fwZeg1qWlo+iSU1PAJGRVMKIAn7NZ4i8f+ed6NJKt2vGjDFfZXLXClO
nyA+xb6K3aWY3lMR6qP8qDkKAJJZe9Y36MRGng==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
hpnCRmSw3bCoDXuz4ACuAPPPaMheVpOmUjnTbTAMOWU5UsZtyDXZeGV8/oIsADVazSxLQZSBGgiy
SKvVnFKfYB7AgQDUMZFw0rVRtHiVMwSzKWeKD6RAhsC0bPj9SvO7LAbMlPup0Bqp/B+25di0U3gR
HcJdPJAve7xMFNBSYWEA8qxoNxWNshmZSjI/bZ357HlFVPisa6jUUqfB1NL8is8ZUS6S+cNLQyEf
tij0AWwPrqG8naFrpTzHWE6VrXYG5oNftxQbYOQR6HjuL4cx/R64+btFaWdnBHup1adCO/sGxhdd
Dd1b6OQ/2YtZTyp2K8aDHbceCM5X1/8CZdRU5g==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18528)
`protect data_block
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
hfGb
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "mts_blk_mem_gen_0_5,blk_mem_gen_v8_4_5,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "blk_mem_gen_v8_4_5,Vivado 2022.2.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 14;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 14;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 1;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "1";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "7";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     0.0 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynquplus";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "NONE";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "no_coe_file_loaded";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 0;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 16384;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 16384;
  attribute C_READ_LATENCY_A : integer;
  attribute C_READ_LATENCY_A of U0 : label is 1;
  attribute C_READ_LATENCY_B : integer;
  attribute C_READ_LATENCY_B of U0 : label is 1;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 16;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 16;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 1;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 16384;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 16384;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "READ_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 16;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 16;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynquplus";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of U0 : label is "true";
  attribute x_interface_info : string;
  attribute x_interface_info of clka : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clka : signal is "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 131072, MEM_WIDTH 256, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1";
  attribute x_interface_info of ena : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA EN";
  attribute x_interface_info of addra : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR";
  attribute x_interface_info of dina : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN";
  attribute x_interface_info of douta : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT";
  attribute x_interface_info of wea : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA WE";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5
     port map (
      addra(13 downto 0) => addra(13 downto 0),
      addrb(13 downto 0) => B"00000000000000",
      clka => clka,
      clkb => '0',
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(15 downto 0) => dina(15 downto 0),
      dinb(15 downto 0) => B"0000000000000000",
      douta(15 downto 0) => douta(15 downto 0),
      doutb(15 downto 0) => NLW_U0_doutb_UNCONNECTED(15 downto 0),
      eccpipece => '0',
      ena => ena,
      enb => '0',
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(13 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(13 downto 0),
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rsta_busy => NLW_U0_rsta_busy_UNCONNECTED,
      rstb => '0',
      rstb_busy => NLW_U0_rstb_busy_UNCONNECTED,
      s_aclk => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => '0',
      s_axi_injectsbiterr => '0',
      s_axi_rdaddrecc(13 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(13 downto 0),
      s_axi_rdata(15 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(15 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(15 downto 0) => B"0000000000000000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(0) => '0',
      s_axi_wvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => '0',
      sleep => '0',
      wea(0) => wea(0),
      web(0) => '0'
    );
end STRUCTURE;
