// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (win64) Build 3788238 Tue Feb 21 20:00:34 MST 2023
// Date        : Thu Jun 29 15:27:51 2023
// Host        : Sega running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mts_c_counter_binary_0_0_sim_netlist.v
// Design      : mts_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mts_c_counter_binary_0_0,c_counter_binary_v12_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_15,Vivado 2022.2.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_15 U0
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
XlA+cLhEzYF7Gky5rzJ/4rUb/4CzhYfT6qq0u5tbXWCrrwu7nS9DDC+VTEWZfXpTOzumTUb/OyaF
7yVvj5Y/7s/Mhlwtfg7WmGtER7GJvLSiH16vB0NDXarARxwb32m8aoUujPhFbnP5GmfFLU95CDjX
TSnkTn6BCyk4B15HiBtt7zjNgYIcIA+otnY/tI9tLQ3j6tOlxTTvinOo/k4u19F2VIMcljPmKJ89
MqE4nG88wOZhlA6Y1qnkvQcJ1yGXkL+UNMupAtD8w3BOiiE8xu2VPlUNU476YjBqbLk4ZvyLVJ1F
EzZn08WiqK4yfRjXnWxWeSDph0wmBfqA+QWLiw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VqKMCzGvPkUGvEQu6xRFz7hdGIVQ9P66f+c9hzzd7eLnRzRHoTTNchV2Mad61yrWB5k/+tZH/VqO
5p9jMeqG1/AU+8KdK6eIJAfNk1/ByYtMo1iW/3S3ksxMH15Z9tI2PDodbaTG+5EsTaZ0+OXhu/JQ
LR1zfFJzrffqKm5fgis0uJd8K94/WhM+sayWcXVYEKdEfZHxo0JVnjiZ/dVVjNUMzWQrZ095qiJD
FK7JKhme/Dad48Nzn8RQbWZqs+WvRGSb9OX0rYbZoZ30qY0y3GvhRZ7/ZzLxil0J0UqsZRW4hnli
fqq5ADJJnV6tSVok30yz98CLWtpF6OJDJ8JgEg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11648)
`pragma protect data_block
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
iTMZ96nOFSimhKjiELHSqjUN2Og=
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
