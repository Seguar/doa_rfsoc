//----------------------------------------------------------------------------
// Title : ROM for tile configuration
// Project : Ultrascale+ RF Data Converter Subsystem
//----------------------------------------------------------------------------
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES. 

`timescale 1ps/1ps

module mts_usp_rf_data_converter_1_0_device_rom (
    aux_clk,
    data_index,
    data_out,
    addr_out,
    tile_out
  );

    input aux_clk;

    input [10:0] data_index;

    output [15:0] data_out;
    output [10:0] addr_out;
    output [2:0]  tile_out;

    reg [29:0] data;

    // The 30-bit data in the array follows the format below:
    // 29:27 |  26:24  |    23:16    |    15:0
    // Tile  |  Slice  | DRP Address |  DRP Data

    (* rom_style = "distributed" *) reg [29:0] data_array [0:386] = '{
       30'h07230000,  // Clock Network Control 0 (ADC0)
       30'h07240008,  // Clock Network Control 1 (ADC0)
       30'h07226028,  // Clock Distribution Control (ADC0)
       30'h070c0000,  // PLL Output Divide (ADC0)
       30'h072c0022,  // CLK_DIV (ADC0)
       30'h07280280,  // SYSREF Distribution (ADC0)
       30'h072df0fe,  // HSCOM_PWR_MASK (ADC0)
       30'h07310062,  // CLOCK_DETECT_CTRL0 (ADC0)
       30'h07320032,  // CLOCK_DETECT_CTRL1 (ADC0)
       30'h07300040,  // FIFO_START (ADC0)
       30'h00020101,  // ADC00 Data Width
       30'h00100003,  // ADC00 Decimation Config
       30'h00110028,  // ADC00 Decimation Mode
       30'h00221015,  // ADC00 Mixer Mode
       30'h002a0001,  // ADC00 NCO Phase Mode
       30'h002747ae,  // ADC00 NCO Frequency Word 0
       30'h00267ae1,  // ADC00 NCO Frequency Word 1
       30'h00253e14,  // ADC00 NCO Frequency Word 2
       30'h00290000,  // ADC00 NCO Phase Offset Word 0
       30'h00280000,  // ADC00 NCO Phase Offset Word 1
       30'h003a0020,  // ADC00 Switch Matrix Config
       30'h007101f1,  // ADC00 RX MC Config 0
       30'h00780002,  // ADC00 DSA Control
       30'h005181c3,  // ADC00 TI_DCB_CTRL0
       30'h0055d44a,  // ADC00 TI_TIME_SKEW_CTRL0
       30'h005a0001,  // ADC00 TI_TIME_SKEW_CTRL5
       30'h001d001c,  // ADC00 CAL_FREEZE_MASK
       30'h00060001,  // ADC00 FABRIC_DEBUG
       30'h01020101,  // ADC01 Data Width
       30'h01100003,  // ADC01 Decimation Config
       30'h01110028,  // ADC01 Decimation Mode
       30'h01221015,  // ADC01 Mixer Mode
       30'h012a0002,  // ADC01 NCO Phase Mode
       30'h012747ae,  // ADC01 NCO Frequency Word 0
       30'h01267ae1,  // ADC01 NCO Frequency Word 1
       30'h01253e14,  // ADC01 NCO Frequency Word 2
       30'h01290000,  // ADC01 NCO Phase Offset Word 0
       30'h01280000,  // ADC01 NCO Phase Offset Word 1
       30'h013a0024,  // ADC01 Switch Matrix Config
       30'h017101f9,  // ADC01 RX MC Config 0
       30'h01780002,  // ADC01 DSA Control
       30'h015181c7,  // ADC01 TI_DCB_CTRL0
       30'h0155d44a,  // ADC01 TI_TIME_SKEW_CTRL0
       30'h015a0001,  // ADC01 TI_TIME_SKEW_CTRL5
       30'h011d001c,  // ADC01 CAL_FREEZE_MASK
       30'h01060001,  // ADC01 FABRIC_DEBUG
       30'h02020101,  // ADC02 Data Width
       30'h02100003,  // ADC02 Decimation Config
       30'h02110028,  // ADC02 Decimation Mode
       30'h02221015,  // ADC02 Mixer Mode
       30'h022a0001,  // ADC02 NCO Phase Mode
       30'h022747ae,  // ADC02 NCO Frequency Word 0
       30'h02267ae1,  // ADC02 NCO Frequency Word 1
       30'h02253e14,  // ADC02 NCO Frequency Word 2
       30'h02290000,  // ADC02 NCO Phase Offset Word 0
       30'h02280000,  // ADC02 NCO Phase Offset Word 1
       30'h023a0028,  // ADC02 Switch Matrix Config
       30'h027101f1,  // ADC02 RX MC Config 0
       30'h02780002,  // ADC02 DSA Control
       30'h025181c3,  // ADC02 TI_DCB_CTRL0
       30'h0255d44a,  // ADC02 TI_TIME_SKEW_CTRL0
       30'h025a0001,  // ADC02 TI_TIME_SKEW_CTRL5
       30'h021d001c,  // ADC02 CAL_FREEZE_MASK
       30'h02060001,  // ADC02 FABRIC_DEBUG
       30'h03020101,  // ADC03 Data Width
       30'h03100003,  // ADC03 Decimation Config
       30'h03110028,  // ADC03 Decimation Mode
       30'h03221015,  // ADC03 Mixer Mode
       30'h032a0002,  // ADC03 NCO Phase Mode
       30'h032747ae,  // ADC03 NCO Frequency Word 0
       30'h03267ae1,  // ADC03 NCO Frequency Word 1
       30'h03253e14,  // ADC03 NCO Frequency Word 2
       30'h03290000,  // ADC03 NCO Phase Offset Word 0
       30'h03280000,  // ADC03 NCO Phase Offset Word 1
       30'h033a002c,  // ADC03 Switch Matrix Config
       30'h037101f9,  // ADC03 RX MC Config 0
       30'h03780002,  // ADC03 DSA Control
       30'h035181c7,  // ADC03 TI_DCB_CTRL0
       30'h0355d44a,  // ADC03 TI_TIME_SKEW_CTRL0
       30'h035a0001,  // ADC03 TI_TIME_SKEW_CTRL5
       30'h031d001c,  // ADC03 CAL_FREEZE_MASK
       30'h03060001,  // ADC03 FABRIC_DEBUG
       30'h0f230000,  // Clock Network Control 0 (ADC1)
       30'h0f240008,  // Clock Network Control 1 (ADC1)
       30'h0f2260a0,  // Clock Distribution Control (ADC1)
       30'h0f0c0000,  // PLL Output Divide (ADC1)
       30'h0f2c0022,  // CLK_DIV (ADC1)
       30'h0f280600,  // SYSREF Distribution (ADC1)
       30'h0f2df0fe,  // HSCOM_PWR_MASK (ADC1)
       30'h0f310062,  // CLOCK_DETECT_CTRL0 (ADC1)
       30'h0f320032,  // CLOCK_DETECT_CTRL1 (ADC1)
       30'h0f300040,  // FIFO_START (ADC1)
       30'h08020101,  // ADC10 Data Width
       30'h08100003,  // ADC10 Decimation Config
       30'h08110028,  // ADC10 Decimation Mode
       30'h08221015,  // ADC10 Mixer Mode
       30'h082a0001,  // ADC10 NCO Phase Mode
       30'h082747ae,  // ADC10 NCO Frequency Word 0
       30'h08267ae1,  // ADC10 NCO Frequency Word 1
       30'h08253e14,  // ADC10 NCO Frequency Word 2
       30'h08290000,  // ADC10 NCO Phase Offset Word 0
       30'h08280000,  // ADC10 NCO Phase Offset Word 1
       30'h083a0020,  // ADC10 Switch Matrix Config
       30'h087101f1,  // ADC10 RX MC Config 0
       30'h08780002,  // ADC10 DSA Control
       30'h085181c3,  // ADC10 TI_DCB_CTRL0
       30'h0855d44a,  // ADC10 TI_TIME_SKEW_CTRL0
       30'h085a0001,  // ADC10 TI_TIME_SKEW_CTRL5
       30'h081d001c,  // ADC10 CAL_FREEZE_MASK
       30'h08060001,  // ADC10 FABRIC_DEBUG
       30'h09020101,  // ADC11 Data Width
       30'h09100003,  // ADC11 Decimation Config
       30'h09110028,  // ADC11 Decimation Mode
       30'h09221015,  // ADC11 Mixer Mode
       30'h092a0002,  // ADC11 NCO Phase Mode
       30'h092747ae,  // ADC11 NCO Frequency Word 0
       30'h09267ae1,  // ADC11 NCO Frequency Word 1
       30'h09253e14,  // ADC11 NCO Frequency Word 2
       30'h09290000,  // ADC11 NCO Phase Offset Word 0
       30'h09280000,  // ADC11 NCO Phase Offset Word 1
       30'h093a0024,  // ADC11 Switch Matrix Config
       30'h097101f9,  // ADC11 RX MC Config 0
       30'h09780002,  // ADC11 DSA Control
       30'h095181c7,  // ADC11 TI_DCB_CTRL0
       30'h0955d44a,  // ADC11 TI_TIME_SKEW_CTRL0
       30'h095a0001,  // ADC11 TI_TIME_SKEW_CTRL5
       30'h091d001c,  // ADC11 CAL_FREEZE_MASK
       30'h09060001,  // ADC11 FABRIC_DEBUG
       30'h17230000,  // Clock Network Control 0 (ADC2)
       30'h17240028,  // Clock Network Control 1 (ADC2)
       30'h1722ab28,  // Clock Distribution Control (ADC2)
       30'h17170016,  // PLL FB Div (ADC2)
       30'h170c0081,  // PLL Output Divide (ADC2)
       30'h17100010,  // PLL Ref clock divide (ADC2)
       30'h17000080,  // PLL SDM CONFIG0 (ADC2)
       30'h17060111,  // PLL SDM seed (ADC2)
       30'h17070011,  // PLL SDM seed setup (ADC2)
       30'h170e0d37,  // PLL ChargePump setup (ADC2)
       30'h170f2080,  // PLL temprature sensor control (ADC2)
       30'h1712ffff,  // PLL ChargePump setup (ADC2)
       30'h17137f95,  // PLL loop filter setup (ADC2)
       30'h17140006,  // PLL loop filter setup (ADC2)
       30'h17155800,  // PLL VCO setup (ADC2)
       30'h17160008,  // PLL VCO setup (ADC2)
       30'h170a7a20,  // PLL Coarse Frequency setup (ADC2)
       30'h170b7008,  // PLL Coarse Frequency setup (ADC2)
       30'h1711002d,  // PLL Voltage Regulator setup (ADC2)
       30'h172c0022,  // CLK_DIV (ADC2)
       30'h17288880,  // SYSREF Distribution (ADC2)
       30'h172dfffc,  // HSCOM_PWR_MASK (ADC2)
       30'h17310062,  // CLOCK_DETECT_CTRL0 (ADC2)
       30'h17320032,  // CLOCK_DETECT_CTRL1 (ADC2)
       30'h17300040,  // FIFO_START (ADC2)
       30'h10020101,  // ADC20 Data Width
       30'h10100003,  // ADC20 Decimation Config
       30'h10110028,  // ADC20 Decimation Mode
       30'h10221015,  // ADC20 Mixer Mode
       30'h102a0001,  // ADC20 NCO Phase Mode
       30'h102747ae,  // ADC20 NCO Frequency Word 0
       30'h10267ae1,  // ADC20 NCO Frequency Word 1
       30'h10253e14,  // ADC20 NCO Frequency Word 2
       30'h10290000,  // ADC20 NCO Phase Offset Word 0
       30'h10280000,  // ADC20 NCO Phase Offset Word 1
       30'h103a0020,  // ADC20 Switch Matrix Config
       30'h107101f1,  // ADC20 RX MC Config 0
       30'h10780002,  // ADC20 DSA Control
       30'h105181c3,  // ADC20 TI_DCB_CTRL0
       30'h1055d44a,  // ADC20 TI_TIME_SKEW_CTRL0
       30'h105a0001,  // ADC20 TI_TIME_SKEW_CTRL5
       30'h101d001c,  // ADC20 CAL_FREEZE_MASK
       30'h10060001,  // ADC20 FABRIC_DEBUG
       30'h11020101,  // ADC21 Data Width
       30'h11100003,  // ADC21 Decimation Config
       30'h11110028,  // ADC21 Decimation Mode
       30'h11221015,  // ADC21 Mixer Mode
       30'h112a0002,  // ADC21 NCO Phase Mode
       30'h112747ae,  // ADC21 NCO Frequency Word 0
       30'h11267ae1,  // ADC21 NCO Frequency Word 1
       30'h11253e14,  // ADC21 NCO Frequency Word 2
       30'h11290000,  // ADC21 NCO Phase Offset Word 0
       30'h11280000,  // ADC21 NCO Phase Offset Word 1
       30'h113a0024,  // ADC21 Switch Matrix Config
       30'h117101f9,  // ADC21 RX MC Config 0
       30'h11780002,  // ADC21 DSA Control
       30'h115181c7,  // ADC21 TI_DCB_CTRL0
       30'h1155d44a,  // ADC21 TI_TIME_SKEW_CTRL0
       30'h115a0001,  // ADC21 TI_TIME_SKEW_CTRL5
       30'h111d001c,  // ADC21 CAL_FREEZE_MASK
       30'h11060001,  // ADC21 FABRIC_DEBUG
       30'h12020101,  // ADC22 Data Width
       30'h12100003,  // ADC22 Decimation Config
       30'h12110028,  // ADC22 Decimation Mode
       30'h12221015,  // ADC22 Mixer Mode
       30'h122a0001,  // ADC22 NCO Phase Mode
       30'h122747ae,  // ADC22 NCO Frequency Word 0
       30'h12267ae1,  // ADC22 NCO Frequency Word 1
       30'h12253e14,  // ADC22 NCO Frequency Word 2
       30'h12290000,  // ADC22 NCO Phase Offset Word 0
       30'h12280000,  // ADC22 NCO Phase Offset Word 1
       30'h123a0028,  // ADC22 Switch Matrix Config
       30'h127101f1,  // ADC22 RX MC Config 0
       30'h12780002,  // ADC22 DSA Control
       30'h125181c3,  // ADC22 TI_DCB_CTRL0
       30'h1255d44a,  // ADC22 TI_TIME_SKEW_CTRL0
       30'h125a0001,  // ADC22 TI_TIME_SKEW_CTRL5
       30'h121d001c,  // ADC22 CAL_FREEZE_MASK
       30'h12060001,  // ADC22 FABRIC_DEBUG
       30'h13020101,  // ADC23 Data Width
       30'h13100003,  // ADC23 Decimation Config
       30'h13110028,  // ADC23 Decimation Mode
       30'h13221015,  // ADC23 Mixer Mode
       30'h132a0002,  // ADC23 NCO Phase Mode
       30'h132747ae,  // ADC23 NCO Frequency Word 0
       30'h13267ae1,  // ADC23 NCO Frequency Word 1
       30'h13253e14,  // ADC23 NCO Frequency Word 2
       30'h13290000,  // ADC23 NCO Phase Offset Word 0
       30'h13280000,  // ADC23 NCO Phase Offset Word 1
       30'h133a002c,  // ADC23 Switch Matrix Config
       30'h137101f9,  // ADC23 RX MC Config 0
       30'h13780002,  // ADC23 DSA Control
       30'h135181c7,  // ADC23 TI_DCB_CTRL0
       30'h1355d44a,  // ADC23 TI_TIME_SKEW_CTRL0
       30'h135a0001,  // ADC23 TI_TIME_SKEW_CTRL5
       30'h131d001c,  // ADC23 CAL_FREEZE_MASK
       30'h13060001,  // ADC23 FABRIC_DEBUG
       30'h1f230000,  // Clock Network Control 0 (ADC3)
       30'h1f240008,  // Clock Network Control 1 (ADC3)
       30'h1f222060,  // Clock Distribution Control (ADC3)
       30'h1f0c0000,  // PLL Output Divide (ADC3)
       30'h1f2c0022,  // CLK_DIV (ADC3)
       30'h1f280700,  // SYSREF Distribution (ADC3)
       30'h1f2df0fe,  // HSCOM_PWR_MASK (ADC3)
       30'h1f310062,  // CLOCK_DETECT_CTRL0 (ADC3)
       30'h1f320032,  // CLOCK_DETECT_CTRL1 (ADC3)
       30'h1f300040,  // FIFO_START (ADC3)
       30'h18020101,  // ADC30 Data Width
       30'h18100003,  // ADC30 Decimation Config
       30'h18110028,  // ADC30 Decimation Mode
       30'h18221015,  // ADC30 Mixer Mode
       30'h182a0001,  // ADC30 NCO Phase Mode
       30'h182747ae,  // ADC30 NCO Frequency Word 0
       30'h18267ae1,  // ADC30 NCO Frequency Word 1
       30'h18253e14,  // ADC30 NCO Frequency Word 2
       30'h18290000,  // ADC30 NCO Phase Offset Word 0
       30'h18280000,  // ADC30 NCO Phase Offset Word 1
       30'h183a0020,  // ADC30 Switch Matrix Config
       30'h187101f1,  // ADC30 RX MC Config 0
       30'h18780002,  // ADC30 DSA Control
       30'h185181c3,  // ADC30 TI_DCB_CTRL0
       30'h1855d44a,  // ADC30 TI_TIME_SKEW_CTRL0
       30'h185a0001,  // ADC30 TI_TIME_SKEW_CTRL5
       30'h181d001c,  // ADC30 CAL_FREEZE_MASK
       30'h18060001,  // ADC30 FABRIC_DEBUG
       30'h19020101,  // ADC31 Data Width
       30'h19100003,  // ADC31 Decimation Config
       30'h19110028,  // ADC31 Decimation Mode
       30'h19221015,  // ADC31 Mixer Mode
       30'h192a0002,  // ADC31 NCO Phase Mode
       30'h192747ae,  // ADC31 NCO Frequency Word 0
       30'h19267ae1,  // ADC31 NCO Frequency Word 1
       30'h19253e14,  // ADC31 NCO Frequency Word 2
       30'h19290000,  // ADC31 NCO Phase Offset Word 0
       30'h19280000,  // ADC31 NCO Phase Offset Word 1
       30'h193a0024,  // ADC31 Switch Matrix Config
       30'h197101f9,  // ADC31 RX MC Config 0
       30'h19780002,  // ADC31 DSA Control
       30'h195181c7,  // ADC31 TI_DCB_CTRL0
       30'h1955d44a,  // ADC31 TI_TIME_SKEW_CTRL0
       30'h195a0001,  // ADC31 TI_TIME_SKEW_CTRL5
       30'h191d001c,  // ADC31 CAL_FREEZE_MASK
       30'h19060001,  // ADC31 FABRIC_DEBUG
       30'h27230000,  // Clock Network Control 0 (DAC0)
       30'h27240008,  // Clock Network Control 1 (DAC0)
       30'h27226028,  // Clock Distribution Control (DAC0)
       30'h270c0000,  // PLL Output Divide (DAC0)
       30'h272c0025,  // CLK_DIV (DAC0)
       30'h2728ca80,  // SYSREF Distribution (DAC0)
       30'h272df0fe,  // HSCOM_PWR_MASK (DAC0)
       30'h273103e6,  // CLOCK_DETECT_CTRL0 (DAC0)
       30'h273204e1,  // CLOCK_DETECT_CTRL1 (DAC0)
       30'h20020101,  // DAC00 Data Width
       30'h20100028,  // DAC00 Interpolation Control
       30'h20110000,  // DAC00 Interpolation Data
       30'h20200000,  // DAC00 Mixer Config 0
       30'h20210924,  // DAC00 Mixer Config 1
       30'h20300000,  // DAC00 Inv Sinc Filter
       30'h20310040,  // DAC00 Multiband Config
       30'h20600009,  // DAC00 Decoder Control
       30'h20610001,  // DAC00 Decoder Clock Enable
       30'h20714000,  // DAC00 MC_CONFIG0
       30'h2073f345,  // DAC00 MC_CONFIG2
       30'h20746a85,  // DAC00 MC_CONFIG3
       30'h20660001,  // DAC00 VOP_CTRL
       30'h200d0002,  // DAC00 DATAPATH
       30'h2004000c,  // DAC00 FIFO_START
       30'h20070001,  // DAC00 FABRIC_DEBUG
       30'h2f230000,  // Clock Network Control 0 (DAC1)
       30'h2f240008,  // Clock Network Control 1 (DAC1)
       30'h2f2260a0,  // Clock Distribution Control (DAC1)
       30'h2f0c0000,  // PLL Output Divide (DAC1)
       30'h2f2c0025,  // CLK_DIV (DAC1)
       30'h2f282400,  // SYSREF Distribution (DAC1)
       30'h2f2df0fe,  // HSCOM_PWR_MASK (DAC1)
       30'h2f3103e6,  // CLOCK_DETECT_CTRL0 (DAC1)
       30'h2f3204e1,  // CLOCK_DETECT_CTRL1 (DAC1)
       30'h28020101,  // DAC10 Data Width
       30'h28100028,  // DAC10 Interpolation Control
       30'h28110000,  // DAC10 Interpolation Data
       30'h28200000,  // DAC10 Mixer Config 0
       30'h28210924,  // DAC10 Mixer Config 1
       30'h28300000,  // DAC10 Inv Sinc Filter
       30'h28310040,  // DAC10 Multiband Config
       30'h28600009,  // DAC10 Decoder Control
       30'h28610001,  // DAC10 Decoder Clock Enable
       30'h28714000,  // DAC10 MC_CONFIG0
       30'h2873f345,  // DAC10 MC_CONFIG2
       30'h28746a85,  // DAC10 MC_CONFIG3
       30'h28660001,  // DAC10 VOP_CTRL
       30'h280d0002,  // DAC10 DATAPATH
       30'h2804000c,  // DAC10 FIFO_START
       30'h28070001,  // DAC10 FABRIC_DEBUG
       30'h37230000,  // Clock Network Control 0 (DAC2)
       30'h37240028,  // Clock Network Control 1 (DAC2)
       30'h3722ab28,  // Clock Distribution Control (DAC2)
       30'h37170012,  // PLL FB Div (DAC2)
       30'h370c0040,  // PLL Output Divide (DAC2)
       30'h37100010,  // PLL Ref clock divide (DAC2)
       30'h37000080,  // PLL SDM CONFIG0 (DAC2)
       30'h37060111,  // PLL SDM seed (DAC2)
       30'h37070011,  // PLL SDM seed setup (DAC2)
       30'h370e0d37,  // PLL ChargePump setup (DAC2)
       30'h370f2080,  // PLL temprature sensor control (DAC2)
       30'h3712ffff,  // PLL ChargePump setup (DAC2)
       30'h37137f8e,  // PLL loop filter setup (DAC2)
       30'h37140006,  // PLL loop filter setup (DAC2)
       30'h37155f03,  // PLL VCO setup (DAC2)
       30'h37160008,  // PLL VCO setup (DAC2)
       30'h370a7a21,  // PLL Coarse Frequency setup (DAC2)
       30'h370b7008,  // PLL Coarse Frequency setup (DAC2)
       30'h3711002d,  // PLL Voltage Regulator setup (DAC2)
       30'h372c0025,  // CLK_DIV (DAC2)
       30'h37280980,  // SYSREF Distribution (DAC2)
       30'h372dfffc,  // HSCOM_PWR_MASK (DAC2)
       30'h373103e6,  // CLOCK_DETECT_CTRL0 (DAC2)
       30'h373204e1,  // CLOCK_DETECT_CTRL1 (DAC2)
       30'h30020101,  // DAC20 Data Width
       30'h30100028,  // DAC20 Interpolation Control
       30'h30110000,  // DAC20 Interpolation Data
       30'h30200000,  // DAC20 Mixer Config 0
       30'h30210924,  // DAC20 Mixer Config 1
       30'h30300000,  // DAC20 Inv Sinc Filter
       30'h30310040,  // DAC20 Multiband Config
       30'h30600009,  // DAC20 Decoder Control
       30'h30610001,  // DAC20 Decoder Clock Enable
       30'h30714000,  // DAC20 MC_CONFIG0
       30'h3073f345,  // DAC20 MC_CONFIG2
       30'h30746a85,  // DAC20 MC_CONFIG3
       30'h30660001,  // DAC20 VOP_CTRL
       30'h300d0002,  // DAC20 DATAPATH
       30'h3004000c,  // DAC20 FIFO_START
       30'h30070001,  // DAC20 FABRIC_DEBUG
       30'h3f230000,  // Clock Network Control 0 (DAC3)
       30'h3f240008,  // Clock Network Control 1 (DAC3)
       30'h3f222020,  // Clock Distribution Control (DAC3)
       30'h3f0c0000,  // PLL Output Divide (DAC3)
       30'h3f2c0025,  // CLK_DIV (DAC3)
       30'h3f280100,  // SYSREF Distribution (DAC3)
       30'h3f2df0fe,  // HSCOM_PWR_MASK (DAC3)
       30'h3f3103e6,  // CLOCK_DETECT_CTRL0 (DAC3)
       30'h3f3204e1,  // CLOCK_DETECT_CTRL1 (DAC3)
       30'h38020101,  // DAC30 Data Width
       30'h38100028,  // DAC30 Interpolation Control
       30'h38110000,  // DAC30 Interpolation Data
       30'h38200000,  // DAC30 Mixer Config 0
       30'h38210924,  // DAC30 Mixer Config 1
       30'h38300000,  // DAC30 Inv Sinc Filter
       30'h38310040,  // DAC30 Multiband Config
       30'h38600009,  // DAC30 Decoder Control
       30'h38610001,  // DAC30 Decoder Clock Enable
       30'h38714000,  // DAC30 MC_CONFIG0
       30'h3873f345,  // DAC30 MC_CONFIG2
       30'h38746a85,  // DAC30 MC_CONFIG3
       30'h38660001,  // DAC30 VOP_CTRL
       30'h380d0002,  // DAC30 DATAPATH
       30'h3804000c,  // DAC30 FIFO_START
       30'h38070001,  // DAC30 FABRIC_DEBUG
       30'h00000000};

    //-------------------------------------------------------------------------
    // Output the tile number, address and data for the DRP writes
    // depending on the data_index input
    //-------------------------------------------------------------------------
    always @(posedge aux_clk)
    begin
      data <= data_array[data_index];
    end

    assign data_out = data[15:0];
    assign addr_out = data[26:16];
    assign tile_out = data[29:27];

endmodule
