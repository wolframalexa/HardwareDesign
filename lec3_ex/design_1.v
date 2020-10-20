//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Wed Sep 16 13:45:10 2020
//Host        : ALEXA-PC running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (A,
    B,
    C,
    D);
  input [0:0]A;
  input [0:0]B;
  input [0:0]C;
  output [0:0]D;

  wire [0:0]AND0_Res;
  wire [0:0]OR0_Res;
  wire [0:0]Op1_0_1;
  wire [0:0]Op2_0_1;
  wire [0:0]Op2_0_2;

  assign D[0] = AND0_Res;
  assign Op1_0_1 = A[0];
  assign Op2_0_1 = B[0];
  assign Op2_0_2 = C[0];
  design_1_util_vector_logic_0_0 AND0
       (.Op1(OR0_Res),
        .Op2(Op2_0_2),
        .Res(AND0_Res));
  design_1_util_vector_logic_0_1 OR0
       (.Op1(Op1_0_1),
        .Op2(Op2_0_1),
        .Res(OR0_Res));
endmodule
