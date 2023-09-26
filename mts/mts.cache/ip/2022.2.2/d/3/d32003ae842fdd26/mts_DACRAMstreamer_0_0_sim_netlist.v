// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (win64) Build 3788238 Tue Feb 21 20:00:34 MST 2023
// Date        : Wed Jun 28 11:47:09 2023
// Host        : Sega running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mts_DACRAMstreamer_0_0_sim_netlist.v
// Design      : mts_DACRAMstreamer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DACRAMstreamer
   (portA_en,
    axis_tvalid,
    portAcpu_addr,
    axis_tdata,
    axis_clk,
    axis_aresetn,
    enable,
    portA_cpu_rdata);
  output portA_en;
  output axis_tvalid;
  output [30:0]portAcpu_addr;
  output [15:0]axis_tdata;
  input axis_clk;
  input axis_aresetn;
  input enable;
  input [15:0]portA_cpu_rdata;

  wire axis_aresetn;
  wire axis_clk;
  wire [15:0]axis_tdata;
  wire axis_tvalid;
  wire axis_tvalid_i_1_n_0;
  wire [31:1]data0;
  wire enable;
  wire [15:0]portA_cpu_rdata;
  wire portA_en;
  wire portA_en_i_1_n_0;
  wire [30:0]portAcpu_addr;
  wire \portAcpu_addr[31]_i_1_n_0 ;
  wire \portAcpu_addr[7]_i_2_n_0 ;
  wire \portAcpu_addr_reg[15]_i_1_n_0 ;
  wire \portAcpu_addr_reg[15]_i_1_n_1 ;
  wire \portAcpu_addr_reg[15]_i_1_n_2 ;
  wire \portAcpu_addr_reg[15]_i_1_n_3 ;
  wire \portAcpu_addr_reg[15]_i_1_n_4 ;
  wire \portAcpu_addr_reg[15]_i_1_n_5 ;
  wire \portAcpu_addr_reg[15]_i_1_n_6 ;
  wire \portAcpu_addr_reg[15]_i_1_n_7 ;
  wire \portAcpu_addr_reg[23]_i_1_n_0 ;
  wire \portAcpu_addr_reg[23]_i_1_n_1 ;
  wire \portAcpu_addr_reg[23]_i_1_n_2 ;
  wire \portAcpu_addr_reg[23]_i_1_n_3 ;
  wire \portAcpu_addr_reg[23]_i_1_n_4 ;
  wire \portAcpu_addr_reg[23]_i_1_n_5 ;
  wire \portAcpu_addr_reg[23]_i_1_n_6 ;
  wire \portAcpu_addr_reg[23]_i_1_n_7 ;
  wire \portAcpu_addr_reg[31]_i_2_n_1 ;
  wire \portAcpu_addr_reg[31]_i_2_n_2 ;
  wire \portAcpu_addr_reg[31]_i_2_n_3 ;
  wire \portAcpu_addr_reg[31]_i_2_n_4 ;
  wire \portAcpu_addr_reg[31]_i_2_n_5 ;
  wire \portAcpu_addr_reg[31]_i_2_n_6 ;
  wire \portAcpu_addr_reg[31]_i_2_n_7 ;
  wire \portAcpu_addr_reg[7]_i_1_n_0 ;
  wire \portAcpu_addr_reg[7]_i_1_n_1 ;
  wire \portAcpu_addr_reg[7]_i_1_n_2 ;
  wire \portAcpu_addr_reg[7]_i_1_n_3 ;
  wire \portAcpu_addr_reg[7]_i_1_n_4 ;
  wire \portAcpu_addr_reg[7]_i_1_n_5 ;
  wire \portAcpu_addr_reg[7]_i_1_n_6 ;
  wire \portAcpu_addr_reg[7]_i_1_n_7 ;
  wire [7:7]\NLW_portAcpu_addr_reg[31]_i_2_CO_UNCONNECTED ;
  wire [0:0]\NLW_portAcpu_addr_reg[7]_i_1_O_UNCONNECTED ;

  FDRE \axis_tdata_reg[0] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[0]),
        .Q(axis_tdata[0]),
        .R(1'b0));
  FDRE \axis_tdata_reg[10] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[10]),
        .Q(axis_tdata[10]),
        .R(1'b0));
  FDRE \axis_tdata_reg[11] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[11]),
        .Q(axis_tdata[11]),
        .R(1'b0));
  FDRE \axis_tdata_reg[12] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[12]),
        .Q(axis_tdata[12]),
        .R(1'b0));
  FDRE \axis_tdata_reg[13] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[13]),
        .Q(axis_tdata[13]),
        .R(1'b0));
  FDRE \axis_tdata_reg[14] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[14]),
        .Q(axis_tdata[14]),
        .R(1'b0));
  FDRE \axis_tdata_reg[15] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[15]),
        .Q(axis_tdata[15]),
        .R(1'b0));
  FDRE \axis_tdata_reg[1] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[1]),
        .Q(axis_tdata[1]),
        .R(1'b0));
  FDRE \axis_tdata_reg[2] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[2]),
        .Q(axis_tdata[2]),
        .R(1'b0));
  FDRE \axis_tdata_reg[3] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[3]),
        .Q(axis_tdata[3]),
        .R(1'b0));
  FDRE \axis_tdata_reg[4] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[4]),
        .Q(axis_tdata[4]),
        .R(1'b0));
  FDRE \axis_tdata_reg[5] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[5]),
        .Q(axis_tdata[5]),
        .R(1'b0));
  FDRE \axis_tdata_reg[6] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[6]),
        .Q(axis_tdata[6]),
        .R(1'b0));
  FDRE \axis_tdata_reg[7] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[7]),
        .Q(axis_tdata[7]),
        .R(1'b0));
  FDRE \axis_tdata_reg[8] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[8]),
        .Q(axis_tdata[8]),
        .R(1'b0));
  FDRE \axis_tdata_reg[9] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[9]),
        .Q(axis_tdata[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    axis_tvalid_i_1
       (.I0(axis_aresetn),
        .I1(enable),
        .O(axis_tvalid_i_1_n_0));
  FDRE axis_tvalid_reg
       (.C(axis_clk),
        .CE(1'b1),
        .D(axis_tvalid_i_1_n_0),
        .Q(axis_tvalid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    portA_en_i_1
       (.I0(enable),
        .I1(axis_aresetn),
        .I2(portA_en),
        .O(portA_en_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A EN" *) 
  FDRE portA_en_reg
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_en_i_1_n_0),
        .Q(portA_en),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \portAcpu_addr[31]_i_1 
       (.I0(axis_aresetn),
        .I1(enable),
        .O(\portAcpu_addr[31]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \portAcpu_addr[7]_i_2 
       (.I0(portAcpu_addr[0]),
        .O(\portAcpu_addr[7]_i_2_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[10] 
       (.C(axis_clk),
        .CE(axis_aresetn),
        .D(data0[10]),
        .Q(portAcpu_addr[9]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[11] 
       (.C(axis_clk),
        .CE(axis_aresetn),
        .D(data0[11]),
        .Q(portAcpu_addr[10]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[12] 
       (.C(axis_clk),
        .CE(axis_aresetn),
        .D(data0[12]),
        .Q(portAcpu_addr[11]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[13] 
       (.C(axis_clk),
        .CE(axis_aresetn),
        .D(data0[13]),
        .Q(portAcpu_addr[12]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[14] 
       (.C(axis_clk),
        .CE(axis_aresetn),
        .D(data0[14]),
        .Q(portAcpu_addr[13]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[15] 
       (.C(axis_clk),
        .CE(axis_aresetn),
        .D(data0[15]),
        .Q(portAcpu_addr[14]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \portAcpu_addr_reg[15]_i_1 
       (.CI(\portAcpu_addr_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\portAcpu_addr_reg[15]_i_1_n_0 ,\portAcpu_addr_reg[15]_i_1_n_1 ,\portAcpu_addr_reg[15]_i_1_n_2 ,\portAcpu_addr_reg[15]_i_1_n_3 ,\portAcpu_addr_reg[15]_i_1_n_4 ,\portAcpu_addr_reg[15]_i_1_n_5 ,\portAcpu_addr_reg[15]_i_1_n_6 ,\portAcpu_addr_reg[15]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(data0[15:8]),
        .S(portAcpu_addr[14:7]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[16] 
       (.C(axis_clk),
        .CE(axis_aresetn),
        .D(data0[16]),
        .Q(portAcpu_addr[15]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[17] 
       (.C(axis_clk),
        .CE(axis_aresetn),
        .D(data0[17]),
        .Q(portAcpu_addr[16]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[18] 
       (.C(axis_clk),
        .CE(axis_aresetn),
        .D(data0[18]),
        .Q(portAcpu_addr[17]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[19] 
       (.C(axis_clk),
        .CE(axis_aresetn),
        .D(data0[19]),
        .Q(portAcpu_addr[18]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[1] 
       (.C(axis_clk),
        .CE(axis_aresetn),
        .D(data0[1]),
        .Q(portAcpu_addr[0]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[20] 
       (.C(axis_clk),
        .CE(axis_aresetn),
        .D(data0[20]),
        .Q(portAcpu_addr[19]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[21] 
       (.C(axis_clk),
        .CE(axis_aresetn),
        .D(data0[21]),
        .Q(portAcpu_addr[20]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[22] 
       (.C(axis_clk),
        .CE(axis_aresetn),
        .D(data0[22]),
        .Q(portAcpu_addr[21]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[23] 
       (.C(axis_clk),
        .CE(axis_aresetn),
        .D(data0[23]),
        .Q(portAcpu_addr[22]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \portAcpu_addr_reg[23]_i_1 
       (.CI(\portAcpu_addr_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\portAcpu_addr_reg[23]_i_1_n_0 ,\portAcpu_addr_reg[23]_i_1_n_1 ,\portAcpu_addr_reg[23]_i_1_n_2 ,\portAcpu_addr_reg[23]_i_1_n_3 ,\portAcpu_addr_reg[23]_i_1_n_4 ,\portAcpu_addr_reg[23]_i_1_n_5 ,\portAcpu_addr_reg[23]_i_1_n_6 ,\portAcpu_addr_reg[23]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(data0[23:16]),
        .S(portAcpu_addr[22:15]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[24] 
       (.C(axis_clk),
        .CE(axis_aresetn),
        .D(data0[24]),
        .Q(portAcpu_addr[23]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[25] 
       (.C(axis_clk),
        .CE(axis_aresetn),
        .D(data0[25]),
        .Q(portAcpu_addr[24]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[26] 
       (.C(axis_clk),
        .CE(axis_aresetn),
        .D(data0[26]),
        .Q(portAcpu_addr[25]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[27] 
       (.C(axis_clk),
        .CE(axis_aresetn),
        .D(data0[27]),
        .Q(portAcpu_addr[26]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[28] 
       (.C(axis_clk),
        .CE(axis_aresetn),
        .D(data0[28]),
        .Q(portAcpu_addr[27]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[29] 
       (.C(axis_clk),
        .CE(axis_aresetn),
        .D(data0[29]),
        .Q(portAcpu_addr[28]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[2] 
       (.C(axis_clk),
        .CE(axis_aresetn),
        .D(data0[2]),
        .Q(portAcpu_addr[1]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[30] 
       (.C(axis_clk),
        .CE(axis_aresetn),
        .D(data0[30]),
        .Q(portAcpu_addr[29]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[31] 
       (.C(axis_clk),
        .CE(axis_aresetn),
        .D(data0[31]),
        .Q(portAcpu_addr[30]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \portAcpu_addr_reg[31]_i_2 
       (.CI(\portAcpu_addr_reg[23]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_portAcpu_addr_reg[31]_i_2_CO_UNCONNECTED [7],\portAcpu_addr_reg[31]_i_2_n_1 ,\portAcpu_addr_reg[31]_i_2_n_2 ,\portAcpu_addr_reg[31]_i_2_n_3 ,\portAcpu_addr_reg[31]_i_2_n_4 ,\portAcpu_addr_reg[31]_i_2_n_5 ,\portAcpu_addr_reg[31]_i_2_n_6 ,\portAcpu_addr_reg[31]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(data0[31:24]),
        .S(portAcpu_addr[30:23]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[3] 
       (.C(axis_clk),
        .CE(axis_aresetn),
        .D(data0[3]),
        .Q(portAcpu_addr[2]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[4] 
       (.C(axis_clk),
        .CE(axis_aresetn),
        .D(data0[4]),
        .Q(portAcpu_addr[3]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[5] 
       (.C(axis_clk),
        .CE(axis_aresetn),
        .D(data0[5]),
        .Q(portAcpu_addr[4]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[6] 
       (.C(axis_clk),
        .CE(axis_aresetn),
        .D(data0[6]),
        .Q(portAcpu_addr[5]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[7] 
       (.C(axis_clk),
        .CE(axis_aresetn),
        .D(data0[7]),
        .Q(portAcpu_addr[6]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \portAcpu_addr_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\portAcpu_addr_reg[7]_i_1_n_0 ,\portAcpu_addr_reg[7]_i_1_n_1 ,\portAcpu_addr_reg[7]_i_1_n_2 ,\portAcpu_addr_reg[7]_i_1_n_3 ,\portAcpu_addr_reg[7]_i_1_n_4 ,\portAcpu_addr_reg[7]_i_1_n_5 ,\portAcpu_addr_reg[7]_i_1_n_6 ,\portAcpu_addr_reg[7]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,portAcpu_addr[0],1'b0}),
        .O({data0[7:1],\NLW_portAcpu_addr_reg[7]_i_1_O_UNCONNECTED [0]}),
        .S({portAcpu_addr[6:1],\portAcpu_addr[7]_i_2_n_0 ,1'b0}));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[8] 
       (.C(axis_clk),
        .CE(axis_aresetn),
        .D(data0[8]),
        .Q(portAcpu_addr[7]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[9] 
       (.C(axis_clk),
        .CE(axis_aresetn),
        .D(data0[9]),
        .Q(portAcpu_addr[8]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "mts_DACRAMstreamer_0_0,DACRAMstreamer,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "DACRAMstreamer,Vivado 2022.2.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (portA_cpu_wdata,
    portA_we,
    portA_en,
    portA_cpu_rdata,
    portAcpu_addr,
    portA_clk,
    portA_rst,
    axis_clk,
    axis_aresetn,
    axis_tdata,
    axis_tready,
    axis_tvalid,
    numSampleVectors,
    enable);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_A, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256, MEM_ECC NONE, READ_LATENCY 1" *) output [15:0]portA_cpu_wdata;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_A WE" *) output [1:0]portA_we;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_A EN" *) output portA_en;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_A DOUT" *) input [15:0]portA_cpu_rdata;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) output [31:0]portAcpu_addr;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_A CLK" *) output portA_clk;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_A RST" *) output portA_rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 axis_clk CLK" *) (* x_interface_parameter = "ASSOCIATED_BUSIF AXIS, ASSOCIATED_RESET axis_aresetn" *) input axis_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 axis_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input axis_aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 axis TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 250000000, PHASE 0.0, CLK_DOMAIN /clocktreeMTS/MTSclkwiz_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [15:0]axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 axis TREADY" *) input axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 axis TVALID" *) output axis_tvalid;
  input [16:0]numSampleVectors;
  input enable;

  wire \<const0> ;
  wire axis_aresetn;
  wire axis_clk;
  wire [15:0]axis_tdata;
  wire axis_tvalid;
  wire enable;
  wire [15:0]portA_cpu_rdata;
  wire portA_en;
  wire portA_rst;
  wire [31:1]\^portAcpu_addr ;

  assign portA_clk = axis_clk;
  assign portA_cpu_wdata[15] = \<const0> ;
  assign portA_cpu_wdata[14] = \<const0> ;
  assign portA_cpu_wdata[13] = \<const0> ;
  assign portA_cpu_wdata[12] = \<const0> ;
  assign portA_cpu_wdata[11] = \<const0> ;
  assign portA_cpu_wdata[10] = \<const0> ;
  assign portA_cpu_wdata[9] = \<const0> ;
  assign portA_cpu_wdata[8] = \<const0> ;
  assign portA_cpu_wdata[7] = \<const0> ;
  assign portA_cpu_wdata[6] = \<const0> ;
  assign portA_cpu_wdata[5] = \<const0> ;
  assign portA_cpu_wdata[4] = \<const0> ;
  assign portA_cpu_wdata[3] = \<const0> ;
  assign portA_cpu_wdata[2] = \<const0> ;
  assign portA_cpu_wdata[1] = \<const0> ;
  assign portA_cpu_wdata[0] = \<const0> ;
  assign portA_we[1] = \<const0> ;
  assign portA_we[0] = \<const0> ;
  assign portAcpu_addr[31:1] = \^portAcpu_addr [31:1];
  assign portAcpu_addr[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DACRAMstreamer U0
       (.axis_aresetn(axis_aresetn),
        .axis_clk(axis_clk),
        .axis_tdata(axis_tdata),
        .axis_tvalid(axis_tvalid),
        .enable(enable),
        .portA_cpu_rdata(portA_cpu_rdata),
        .portA_en(portA_en),
        .portAcpu_addr(\^portAcpu_addr ));
  LUT1 #(
    .INIT(2'h1)) 
    portA_rst_INST_0
       (.I0(axis_aresetn),
        .O(portA_rst));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
