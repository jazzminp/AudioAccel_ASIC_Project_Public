/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Fri May  2 01:33:49 2025
/////////////////////////////////////////////////////////////


module CIC_ADPCM_Wrapper ( clk, slow_clk, block_enable, pdm_in, outValid, 
        encPcm );
  output [3:0] encPcm;
  input clk, slow_clk, block_enable, pdm_in;
  output outValid;
  wire   oldValue, N30, N31, N32, N33, N34, N44, N45, N46, N47, N48, N49, N50,
         n13, n14, n15, n16, n17, n20, n21, n22, n29, n36, n37, n38, n39, n40,
         n41, n42, n43, n44;
  wire   [1:0] next_state;
  wire   [6:0] counter;
  wire   [6:2] \r62/carry ;
  tri   clk;
  tri   slow_clk;
  tri   outValid;
  tri   [3:0] encPcm;
  tri   \filter_in[1] ;
  tri   clk_enable;
  tri   rst;
  tri   inValid;
  tri   \filter_out[9] ;
  tri   \filter_out[8] ;
  tri   \filter_out[7] ;
  tri   \filter_out[6] ;
  tri   \filter_out[5] ;
  tri   \filter_out[4] ;
  tri   \filter_out[3] ;
  tri   \filter_out[2] ;
  tri   \filter_out[1] ;
  tri   \filter_out[15] ;
  tri   \filter_out[14] ;
  tri   \filter_out[13] ;
  tri   \filter_out[12] ;
  tri   \filter_out[11] ;
  tri   \filter_out[10] ;
  tri   \filter_out[0] ;
  tri   n24;

  CICDecimatorVerilogBlock cic ( .clk(clk), .clk_enable(clk_enable), .reset(
        rst), .filter_in({\filter_in[1] , 1'b1}), .filter_out({
        \filter_out[15] , \filter_out[14] , \filter_out[13] , \filter_out[12] , 
        \filter_out[11] , \filter_out[10] , \filter_out[9] , \filter_out[8] , 
        \filter_out[7] , \filter_out[6] , \filter_out[5] , \filter_out[4] , 
        \filter_out[3] , \filter_out[2] , \filter_out[1] , \filter_out[0] })
         );
  ima_adpcm_enc enc ( .clock(slow_clk), .reset(rst), .inSamp({\filter_out[15] , 
        \filter_out[14] , \filter_out[13] , \filter_out[12] , \filter_out[11] , 
        \filter_out[10] , \filter_out[9] , \filter_out[8] , \filter_out[7] , 
        \filter_out[6] , \filter_out[5] , \filter_out[4] , \filter_out[3] , 
        \filter_out[2] , \filter_out[1] , \filter_out[0] }), .inValid(inValid), 
        .outPCM(encPcm), .outValid(outValid) );
  SAEDRVT14_NR2_ISO_1 U26 ( .CK(n14), .EN(n13), .X(clk_enable) );
  SAEDRVT14_OR2_MM_0P5 U27 ( .A1(n21), .A2(n20), .X(rst) );
  SAEDRVT14_INV_0P5 U29 ( .A(rst), .X(n16) );
  SAEDRVT14_MUX2_MM_0P5 U35 ( .D0(oldValue), .D1(inValid), .S(n29), .X(n15) );
  SAEDRVT14_INV_0P5 I_1 ( .A(pdm_in), .X(\filter_in[1] ) );
  SAEDRVT14_ADDH_1 \r62/U1_1_5  ( .A(counter[5]), .B(\r62/carry [5]), .CO(
        \r62/carry [6]), .S(N34) );
  SAEDRVT14_ADDH_1 \r62/U1_1_4  ( .A(counter[4]), .B(\r62/carry [4]), .CO(
        \r62/carry [5]), .S(N33) );
  SAEDRVT14_ADDH_1 \r62/U1_1_1  ( .A(counter[1]), .B(counter[0]), .CO(
        \r62/carry [2]), .S(N30) );
  SAEDRVT14_ADDH_1 \r62/U1_1_2  ( .A(counter[2]), .B(\r62/carry [2]), .CO(
        \r62/carry [3]), .S(N31) );
  SAEDRVT14_ADDH_1 \r62/U1_1_3  ( .A(counter[3]), .B(\r62/carry [3]), .CO(
        \r62/carry [4]), .S(N32) );
  SAEDRVT14_FDP_V2LP_0P5 \state_reg[1]  ( .D(next_state[1]), .CK(clk), .Q(n44), 
        .QN(n14) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 oldValue_reg ( .D(n17), .CK(clk), .RD(n16), .Q(
        oldValue) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 inValid_reg ( .D(n15), .CK(clk), .RD(n16), .Q(
        inValid) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 \counter_reg[5]  ( .D(N49), .CK(clk), .RD(n16), 
        .Q(counter[5]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 \counter_reg[6]  ( .D(N50), .CK(clk), .RD(n16), 
        .Q(counter[6]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 \counter_reg[4]  ( .D(N48), .CK(clk), .RD(n16), 
        .Q(counter[4]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 \counter_reg[3]  ( .D(N47), .CK(clk), .RD(n16), 
        .Q(counter[3]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 \counter_reg[2]  ( .D(N46), .CK(clk), .RD(n16), 
        .Q(counter[2]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 \counter_reg[1]  ( .D(N45), .CK(clk), .RD(n16), 
        .Q(counter[1]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 \counter_reg[0]  ( .D(N44), .CK(clk), .RD(n16), 
        .Q(counter[0]) );
  SAEDRVT14_FDP_V2LP_0P5 \state_reg[0]  ( .D(next_state[0]), .CK(clk), .Q(n13), 
        .QN(n22) );
  SAEDRVT14_TIE0_V1_2 U53 ( .X(n21) );
  SAEDRVT14_AOI21_0P75 U54 ( .A1(n14), .A2(n13), .B(n41), .X(n20) );
  SAEDRVT14_NR2_ISO_1 U55 ( .CK(n14), .EN(n13), .X(n41) );
  SAEDRVT14_ND2_CDC_1 U56 ( .A1(n22), .A2(block_enable), .X(n36) );
  SAEDRVT14_NR2_ISO_1 U57 ( .CK(n44), .EN(n36), .X(next_state[0]) );
  SAEDRVT14_OAI22_0P5 U58 ( .A1(n14), .A2(n36), .B1(n44), .B2(n22), .X(
        next_state[1]) );
  SAEDRVT14_OR4_1 U59 ( .A1(counter[3]), .A2(counter[5]), .A3(counter[4]), 
        .A4(counter[1]), .X(n37) );
  SAEDRVT14_NR2_ISO_1 U60 ( .CK(counter[2]), .EN(n37), .X(n39) );
  SAEDRVT14_INV_0P5 U61 ( .A(counter[6]), .X(n38) );
  SAEDRVT14_NR2_ISO_1 U62 ( .CK(n39), .EN(n38), .X(n42) );
  SAEDRVT14_NR2_ISO_1 U63 ( .CK(counter[0]), .EN(n42), .X(N44) );
  SAEDRVT14_ND3B_0P75 U64 ( .A(counter[0]), .B1(n39), .B2(n38), .X(n40) );
  SAEDRVT14_MUX2_MM_0P5 U65 ( .D0(n41), .D1(oldValue), .S(n40), .X(n17) );
  SAEDRVT14_INV_0P5 U66 ( .A(n42), .X(n29) );
  SAEDRVT14_OAI21_0P5 U67 ( .A1(counter[6]), .A2(\r62/carry [6]), .B(n29), .X(
        n43) );
  SAEDRVT14_AOI21_0P75 U68 ( .A1(counter[6]), .A2(\r62/carry [6]), .B(n43), 
        .X(N50) );
  SAEDRVT14_AN2_MM_0P5 U69 ( .A1(N32), .A2(n29), .X(N47) );
  SAEDRVT14_AN2_MM_0P5 U70 ( .A1(N31), .A2(n29), .X(N46) );
  SAEDRVT14_AN2_MM_0P5 U71 ( .A1(N30), .A2(n29), .X(N45) );
  SAEDRVT14_AN2_MM_0P5 U72 ( .A1(N33), .A2(n29), .X(N48) );
  SAEDRVT14_AN2_MM_0P5 U73 ( .A1(N34), .A2(n29), .X(N49) );
endmodule

