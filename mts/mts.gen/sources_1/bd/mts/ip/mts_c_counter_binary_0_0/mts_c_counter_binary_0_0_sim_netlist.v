// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (win64) Build 3788238 Tue Feb 21 20:00:34 MST 2023
// Date        : Thu Jun 29 15:27:52 2023
// Host        : Sega running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Work/FPGA/RFSoC-MTS/boards/RFSoC4x2/build_mts/mts/mts.gen/sources_1/bd/mts/ip/mts_c_counter_binary_0_0/mts_c_counter_binary_0_0_sim_netlist.v
// Design      : mts_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mts_c_counter_binary_0_0,c_counter_binary_v12_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_15,Vivado 2022.2.2" *) 
(* NotValidForBitStream *)
module mts_c_counter_binary_0_0
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clocktreeMTS/MTSclkwiz_clk_out1, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 14} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 14}" *) output [13:0]Q;

  wire CLK;
  wire [13:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "14" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  mts_c_counter_binary_0_0_c_counter_binary_v12_0_15 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
nmolhBIOmcReTy7DSj7xxKR3c0J4pSJSmfLFE1dBg2Mi6P+BikMyDbw09ZhAGEQbp1C0t9/9EAuj
2iBbBYG3uzvkSgt73P7GKGoCBhswBVJQ99qnareg3XyE6XS1dicdTLph/kVhSwS3/EOJk9uovK4h
GW2NBd+OFpj73NkkTKs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
epVakeutB5D0kxPkQ8Nn8iMDRFK8m00hn04cvP9HeS0DFX5qsrR+GOwoGdSNVz2c0lLXnVtxoZaB
NMIamCPKQwizLdJa7w5DRsqNaAYB7N9yGyRquJp5mInpIDvYQFeP0mBzIDcRYiboazWGItkeG6fl
hKJEUsHgoJgYQV+OTzGcF+jVbSl7Z7SrgUcOLZBqCViRcW0PyzXb1PTuzsULkxEp564HF947WNrc
E7u2ryYZyCmVa4jzd+dPz+hA7KVh5CkHfs7XCzVZjQrxE1+ix27bkGZcvqeaYTX/6SMOlMZn6dwy
qscQyyDHgcHKIyaphMxPRc9ytvcB54Nf+3FaQA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
bmiA+SHu9e+HZhwQE74adh7EnqVsy6aXYffe/NUq9JaAEr14zoaKc5SdyCeaDgMoL8mNz1/3qNWO
fa4Hv/gCu5VNVkkrxFZcmTuEO0MXFv4ANLs7SYMXWCK2zwjzhBAREvjXwzJaOmjxnfNKukIr9/XO
o4UYfVRGwZUVaJl/sTc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bgfHInY8KRqhDtSYId/H1t89wy+GOPs4Y5bSjbMh/U8dqMlrsXb2ZtiTeBAANREqdQsuYLlp/4iK
E6N33yfiI3ZkOuCGixpQgdXfO2onL1vp/Gi7pS6E0cWc3BcTqa3sE84+3l/mSXOfB8D+BUfhOJiS
2guppGJQRpGfWv0IUgmJJAJ+l+xY2Rlp8e11+ZZcDIhexUls0y0T9Yx/4ikDpO2b7Fql+ljS517r
WPR4oP9zeQe1TD+riFM3JL7Ti1+3cH1R8uuNziJtH9yGUeeF3gVri3FPJ215N9eKZeK2q7vnXpXl
NLXFR5GHina9YWq0I/UUll1a/PQVbsfZml7EWQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cmDOk4BIfCZiW/HFXVsD5NPxN117zKogJXOF693drdkqAQkKJF0xeuIwoJtRYHsvQt+h5YsU8CSd
08jlv08WBsbKC3cjQbWv193MriqeahheJrzsDaU84l/SQcbqSKNm/IfemuMm3Iaxj/QFkMstJ+7E
HEavbcrUdyp229u4ZZbMO/iy4ZfAwBFEcSfeX859ZE4Qz5hkTWLNOfUHgNMNi4I/uEXn3npWSZR8
iT+6BsQk1/igT3Ayk0T9GCuoxmMDvI0aCI6ZxSU7O3eXkHiJTUdvQrPqFoQALv42yf2Bk1x3zRCa
hOIl6EIssFQGZ8Hbihfm6+eq7QbmYUN13bqJJg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Xl9QsRqEajCSvzsjkS/ayF0UidmJsrkatAOcznvzJ8cR3HbZkyMkA49qTU1spuTXsux2EP3aWTQj
LPjTWCJ3jKyNv7MfGJiuQ4vsnpm7NqWYSGOU5fb6cInBuYLxdNXVvI5atLL3Ll7f1RCvGz2B7mMx
kqlhuAc4ag4syC7CAXbuuBq/SJQgN+/bN85HYRF6/gojAw0G7ZVcUeVI0Jli1l4OxwPABdvo4mAd
X4fc7iitHZNHqujzD9cRSJk4n0HHYLdcgPfDxQTEIksvqab6Terh2CcFlhCKkpdioV7HPyujGM7J
FAtvk4KELOfQYfv876lsvcED2ALbcLuRkeN8sA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hbrUYsKpNj3rW2bhsXhNRCM0heDF1cunHLyYr7hYd7+4GqDRmYOU1z7IxWEYCkuRY85Z0v9r+ITx
/1wmIdzu4fvEp5c9MEyIAqElBVtSTmGt10I4g4hKPWPFhAd+p9y9hvidI77hWerHmBdcT8kbj/mv
UiEx1foVN4YhOgnHUjXIbwWY3BQ/LgFBuP+ERg0eBGkG/3lQwiLEjNErYvUm6fJOOF8NIhSXzs7l
vtw9KONBtXg7xFmCqxqtX2/lrIM3PIV2qtqWPNaQDZqqrxzUFA7Y4UMQrrvFwEXJYnOw+9lx0edn
RGaAOeX5EF8PsgiqVjmFMvXvdxmbb9bFprpwJg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
QXcjtROg0Sh5X0OzrspVx64VzKgUicg/q6QGqQwfTfq1hw3/0l6TUIANyWCGDCXzKIjmlvEYFN+A
oRHRjTptT/ygsxzA/RpjzSRPldQVvRJtoC/cfyj6jC4RSSOwqUdGq2jvmOE+RizT5EjY+6f3FYyT
ABXUMaPuee80uG8UUGy4f/BAx092BZjh4yZrC/ELVdhyyTv5UXC/u46arGTrKmHHgL2QI0X9IoEA
jP+y1fZmm5enLcmcr8LwRdkOYbyDRgbVGlfniEb+9i+yM/qa3mMzgncv92xLgk0YiTxvt0uT5wjF
3PCVkzkUrixS1wnNA//iYDaeMnYgb2MoEk2B35PzMc10M9mJeN2I5xGP1VMzZCjQatm2tCxDdHJ2
07i0IWKhz5YEtSaSqeTVKhZmpAzmzceW3jkMCUqKuyXKqtk8Y4impsRmifHmoma2pNqnC62jGuiz
fqzaBuc2E+ZeagZfJ2bz2cBg4PjTYHGI9/Qdts0f3+MVzJhZzSzlX3St

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WMPFpgpz8vvJuKWT8ROrrwxURuwUYzmtiwpEMp/mHm0JX/8adPfRCR+r8Ef4kCgVzbu1klMsBvBe
fsBYs3amukjDKcfpkqlOYLc1IeJQDodHvhT3rV51RwYRTkT1E3Cr2xO6A7pjxy3uT3hc79b9j50p
Wv2cvR1JfJonkKVUmMhIxUNKKjaGZebKR3/6Ue11Qb2EdvLU2NoGVImOtoCcMFjGlFNt2Svh3suw
+BwKtkglxiocwsg/xSJ8pra3vtus5S50PQQ+KxTdkFu1DTDk+0ENZii9+lmK69Qr2XePNkHSdrpj
hi9xTJ1yqGnsFWs2irT1Oc/piRAnz83CutHtng==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gpbpZMjO+fwER4UaBd06iIl1XOrJrcPEoZy60d/UV34QoIz8tNwo+acHcZ84qBSxeAnQ+71vucIG
9a5Bvp/IuzaKKB3QOOWPdCplQxVYTwBxLtMtt5s+FjUWqYz4DILMRWB6ldsRP5OvEzwSvPao6Vwa
/a2M/hti9Qpta6ktFYfEnSEleBhuypqw8jYi23G6MukvgOFtObPYhVN0d567ai1AAgMsFLPgSgRo
VTGT9ctGdkRpZP2d7JkF2On2OeAYkuti2zoOSM83MzExVLHrC2aX0rCa1/h54mIeCTlTIz0ADslO
BMAU1JdT7Tk5hi7640HMtHsvrLdh9nV6QkkD9w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qUNOF9TLLp1pVLG5y+PndPFOlGr9fZenUYDbJvlIT/MZukd8+ZO8dzFH+IOsw95Ms1H4wUeAmzfk
35utTCTkwZfbXZ9o6KNM162QxppIzblre31/t/aSWDmCmMa+xmPiNWExFqEUsmkEmRL3s2ug57PV
9j3jQjLhtp9Xo7KX4j2qqv4GBGz81BRn7SKq9gPjyBHC71OdrtQV5iXOz49+jx9bRXLfdLW5Vceg
ly+OZjIObpyzTTKYPQ99yGXSGbvuvOt1fB7YzVi8jpFKx0g86mrmmLAml+W7QIiC5c+WCNqdgU+T
/ZsDgBiWvEtPoWjnXL18RoVR25as0H2E9lScIg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11808)
`pragma protect data_block
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
5OIKlqgIIz55
`pragma protect end_protected
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
