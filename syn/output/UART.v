
module UART ( clka, clkb, reset, tx_data, tx_rdy, rx_rdy, tx_busy, tx_out, 
        tx_done, tcount, tstate, tx_error, tx_idle, rx_busy, rx_out, rx_done, 
        rcount, rstate, rx_error, rx_idle, match, rxrxout );
  input [7:0] tx_data;
  output [7:0] tx_out;
  output [3:0] tcount;
  output [3:0] tstate;
  output [7:0] rx_out;
  output [3:0] rcount;
  output [3:0] rstate;
  output [7:0] rxrxout;
  input clka, clkb, reset, tx_rdy, rx_rdy;
  output tx_busy, tx_done, tx_error, tx_idle, rx_busy, rx_done, rx_error,
         rx_idle, match;
  wire   tx_n126, tx_n125, tx_n124, tx_n123, tx_n122, tx_n121, tx_n120,
         tx_n119, tx_n118, tx_n117, tx_n116, tx_n115, tx_n114, tx_n113,
         tx_n112, tx_n111, tx_n110, tx_n109, tx_n108, tx_n107, tx_n106,
         tx_n105, tx_n104, tx_n103, tx_n102, tx_n101, tx_n100, tx_n99, tx_n98,
         tx_n97, tx_n96, tx_n95, tx_n94, tx_n93, tx_n92, tx_n91, tx_n90,
         tx_n89, tx_n88, tx_n87, tx_n86, tx_n85, tx_n84, tx_n83, tx_n82,
         tx_n81, tx_n80, tx_n79, tx_n78, tx_n77, tx_n76, tx_n75, tx_n74,
         tx_n73, tx_n72, tx_n71, tx_n70, tx_n69, tx_n68, tx_n67, tx_n65,
         tx_n64, tx_n63, tx_n62, tx_n61, tx_n60, tx_n59, tx_n58, tx_n57,
         tx_n56, tx_n54, tx_n53, tx_n52, tx_n51, tx_n50, tx_n49, tx_n48,
         tx_n47, tx_n46, tx_n45, tx_n41, tx_n39, tx_n38, tx_n37, tx_n36,
         tx_n35, tx_n34, tx_n32, tx_n31, tx_n30, tx_n29, tx_n28, tx_n27,
         tx_n26, tx_n25, tx_n23, tx_n22, tx_n21, tx_n20, tx_n19, tx_N780,
         tx_N770, tx_N760, tx_next_tstate_0_, tx_next_tstate_1_,
         tx_next_tstate_2_, rx_n126, rx_n125, rx_n124, rx_n123, rx_n122,
         rx_n121, rx_n120, rx_n119, rx_n118, rx_n117, rx_n116, rx_n115,
         rx_n114, rx_n113, rx_n112, rx_n111, rx_n110, rx_n109, rx_n108,
         rx_n107, rx_n106, rx_n105, rx_n104, rx_n103, rx_n102, rx_n101,
         rx_n100, rx_n99, rx_n98, rx_n97, rx_n96, rx_n95, rx_n94, rx_n93,
         rx_n92, rx_n91, rx_n90, rx_n89, rx_n88, rx_n87, rx_n86, rx_n85,
         rx_n84, rx_n83, rx_n82, rx_n81, rx_n80, rx_n79, rx_n78, rx_n77,
         rx_n76, rx_n75, rx_n74, rx_n73, rx_n72, rx_n70, rx_n69, rx_n68,
         rx_n67, rx_n66, rx_n65, rx_n64, rx_n63, rx_n62, rx_n61, rx_n60,
         rx_n59, rx_n58, rx_n57, rx_n56, rx_n55, rx_n54, rx_n53, rx_n52,
         rx_n51, rx_n50, rx_n49, rx_n48, rx_n44, rx_n43, rx_n42, rx_n40,
         rx_n39, rx_n38, rx_n37, rx_n36, rx_n35, rx_n33, rx_n32, rx_n31,
         rx_n30, rx_n29, rx_n28, rx_n26, rx_n25, rx_n24, rx_n23, rx_n22,
         rx_N790, rx_N780, rx_N770, rx_next_rstate_0_, rx_next_rstate_1_,
         dp1_d1_n3, dp1_d1_N9, dp1_d1_N8, dp1_d1_N7, dp1_d1_N6, dp1_d1_N5,
         dp1_d1_N4, dp1_d1_N2, dp1_d1_N1, dp2_d1_N9, dp2_d1_N8, dp2_d1_N7,
         dp2_d1_N6, dp2_d1_N5, dp2_d1_N4, dp2_d1_N3, dp2_d1_N2, dp2_d1_N1, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85;
  wire   [7:0] rx_data;
  wire   [6:2] tx_ttmpout;
  wire   [6:2] rx_rtmpout;

  OAI33_X1 tx_U109 ( .A1(tx_n36), .A2(tstate[2]), .A3(tx_n35), .B1(tx_n34), 
        .B2(tstate[1]), .B3(tstate[0]), .ZN(tx_n96) );
  DFF_X1 tx_tx_out_reg_1_ ( .D(tx_n107), .CK(n10), .Q(tx_out[1]) );
  DFF_X1 tx_tx_done_reg ( .D(tx_n124), .CK(n10), .Q(tx_done), .QN(tx_n32) );
  DFF_X1 tx_tx_out_reg_7_ ( .D(tx_n101), .CK(n10), .Q(tx_out[7]) );
  DFF_X1 tx_ttmpout_reg_7_ ( .D(tx_n109), .CK(n10), .QN(tx_n22) );
  DFF_X1 tx_tx_out_reg_2_ ( .D(tx_n106), .CK(n10), .Q(tx_out[2]) );
  DFF_X1 tx_tx_out_reg_0_ ( .D(tx_n108), .CK(n10), .Q(tx_out[0]) );
  DFF_X1 tx_tx_error_reg ( .D(tx_n110), .CK(n10), .Q(tx_error), .QN(tx_n31) );
  DFF_X1 tx_ttmpout_reg_2_ ( .D(tx_n115), .CK(n10), .Q(tx_ttmpout[2]), .QN(
        tx_n28) );
  DFF_X1 tx_tx_out_reg_3_ ( .D(tx_n105), .CK(n9), .Q(tx_out[3]) );
  DFF_X1 tx_ttmpout_reg_3_ ( .D(tx_n114), .CK(n9), .Q(tx_ttmpout[3]), .QN(
        tx_n27) );
  DFF_X1 tx_tx_out_reg_4_ ( .D(tx_n104), .CK(n9), .Q(tx_out[4]) );
  DFF_X1 tx_ttmpout_reg_4_ ( .D(tx_n113), .CK(n9), .Q(tx_ttmpout[4]), .QN(
        tx_n26) );
  DFF_X1 tx_tx_out_reg_5_ ( .D(tx_n103), .CK(n9), .Q(tx_out[5]) );
  DFF_X1 tx_ttmpout_reg_5_ ( .D(tx_n112), .CK(n9), .Q(tx_ttmpout[5]), .QN(
        tx_n25) );
  DFF_X1 tx_tx_out_reg_6_ ( .D(tx_n102), .CK(n9), .Q(tx_out[6]) );
  DFF_X1 tx_ttmpout_reg_6_ ( .D(tx_n111), .CK(n9), .Q(tx_ttmpout[6]), .QN(
        tx_n23) );
  DFF_X1 tx_tcount_reg_3_ ( .D(tx_n116), .CK(n9), .Q(tcount[3]), .QN(tx_n37)
         );
  DFF_X1 tx_tcount_reg_2_ ( .D(tx_n117), .CK(n9), .Q(tcount[2]), .QN(tx_n38)
         );
  DFF_X1 tx_tcount_reg_1_ ( .D(tx_n118), .CK(n9), .Q(tcount[1]), .QN(tx_n39)
         );
  DFF_X1 tx_tx_idle_reg ( .D(tx_n123), .CK(n8), .Q(tx_idle), .QN(tx_n30) );
  DFF_X1 tx_tstate_reg_2_ ( .D(tx_n120), .CK(n8), .Q(tstate[2]), .QN(tx_n34)
         );
  DFF_X1 tx_next_tstate_reg_2_ ( .D(tx_N780), .CK(n11), .Q(tx_next_tstate_2_), 
        .QN(tx_n19) );
  DFF_X1 tx_tstate_reg_1_ ( .D(tx_n121), .CK(n8), .Q(tstate[1]), .QN(tx_n35)
         );
  DFF_X1 tx_next_tstate_reg_1_ ( .D(tx_N770), .CK(n11), .Q(tx_next_tstate_1_), 
        .QN(tx_n20) );
  DFF_X1 tx_tstate_reg_0_ ( .D(tx_n122), .CK(n8), .Q(tstate[0]), .QN(tx_n36)
         );
  DFF_X1 tx_tstate_reg_3_ ( .D(tx_n119), .CK(n8), .Q(tstate[3]) );
  DFF_X1 tx_next_tstate_reg_0_ ( .D(tx_N760), .CK(n11), .Q(tx_next_tstate_0_), 
        .QN(tx_n21) );
  DFF_X1 tx_tx_busy_reg ( .D(tx_n125), .CK(n8), .Q(tx_busy), .QN(tx_n29) );
  OAI33_X1 rx_U109 ( .A1(rx_n44), .A2(rstate[2]), .A3(rx_n43), .B1(rx_n42), 
        .B2(rstate[1]), .B3(rstate[0]), .ZN(rx_n96) );
  DFF_X1 rx_rx_out_reg_7_ ( .D(rx_n101), .CK(n8), .Q(rx_out[7]) );
  DFF_X1 rx_rtmpout_reg_7_ ( .D(rx_n110), .CK(n8), .QN(rx_n32) );
  DFF_X1 rx_rx_out_reg_0_ ( .D(rx_n108), .CK(n8), .Q(rx_out[0]) );
  DFF_X1 rx_rx_error_reg ( .D(rx_n111), .CK(n8), .Q(rx_error), .QN(rx_n30) );
  DFF_X1 rx_rx_idle_reg ( .D(rx_n125), .CK(n7), .Q(rx_idle), .QN(rx_n31) );
  DFF_X1 rx_rx_busy_reg ( .D(rx_n117), .CK(n7), .Q(rx_busy), .QN(rx_n40) );
  DFF_X1 rx_rx_out_reg_2_ ( .D(rx_n106), .CK(n7), .Q(rx_out[2]) );
  DFF_X1 rx_rtmpout_reg_2_ ( .D(rx_n116), .CK(n7), .Q(rx_rtmpout[2]), .QN(
        rx_n38) );
  DFF_X1 rx_rx_out_reg_3_ ( .D(rx_n105), .CK(n7), .Q(rx_out[3]) );
  DFF_X1 rx_rtmpout_reg_3_ ( .D(rx_n115), .CK(n7), .Q(rx_rtmpout[3]), .QN(
        rx_n37) );
  DFF_X1 rx_rx_out_reg_4_ ( .D(rx_n104), .CK(n7), .Q(rx_out[4]) );
  DFF_X1 rx_rtmpout_reg_4_ ( .D(rx_n114), .CK(n7), .Q(rx_rtmpout[4]), .QN(
        rx_n36) );
  DFF_X1 rx_rx_out_reg_5_ ( .D(rx_n103), .CK(n7), .Q(rx_out[5]) );
  DFF_X1 rx_rtmpout_reg_5_ ( .D(rx_n113), .CK(n7), .Q(rx_rtmpout[5]), .QN(
        rx_n35) );
  DFF_X1 rx_rx_out_reg_6_ ( .D(rx_n102), .CK(n7), .Q(rx_out[6]) );
  DFF_X1 rx_rtmpout_reg_6_ ( .D(rx_n112), .CK(n6), .Q(rx_rtmpout[6]), .QN(
        rx_n33) );
  DFF_X1 rx_rcount_reg_3_ ( .D(rx_n118), .CK(n6), .Q(rcount[3]), .QN(rx_n25)
         );
  DFF_X1 rx_rcount_reg_2_ ( .D(rx_n119), .CK(n6), .Q(rcount[2]), .QN(rx_n26)
         );
  DFF_X1 rx_rcount_reg_1_ ( .D(rx_n120), .CK(n6), .Q(rcount[1]), .QN(rx_n28)
         );
  DFF_X1 rx_rcount_reg_0_ ( .D(rx_n121), .CK(n6), .Q(rcount[0]), .QN(rx_n29)
         );
  DFF_X1 rx_rx_out_reg_1_ ( .D(rx_n107), .CK(n6), .Q(rx_out[1]) );
  DFF_X1 rx_rx_done_reg ( .D(rx_n109), .CK(n6), .Q(rx_done), .QN(rx_n39) );
  DFF_X1 rx_next_rstate_reg_0_ ( .D(rx_N770), .CK(n11), .Q(rx_next_rstate_0_), 
        .QN(rx_n24) );
  DFF_X1 rx_rstate_reg_2_ ( .D(rx_n123), .CK(n6), .Q(rstate[2]), .QN(rx_n42)
         );
  DFF_X1 rx_next_rstate_reg_2_ ( .D(rx_N790), .CK(n11), .QN(rx_n22) );
  DFF_X1 rx_rstate_reg_1_ ( .D(rx_n124), .CK(n6), .Q(rstate[1]), .QN(rx_n43)
         );
  DFF_X1 rx_rstate_reg_3_ ( .D(rx_n122), .CK(n6), .Q(rstate[3]) );
  DFF_X1 rx_next_rstate_reg_1_ ( .D(rx_N780), .CK(n11), .Q(rx_next_rstate_1_), 
        .QN(rx_n23) );
  DFF_X1 rx_rstate_reg_0_ ( .D(rx_n126), .CK(n6), .Q(rstate[0]), .QN(rx_n44)
         );
  DLH_X1 dp1_d1_q_reg_0_ ( .G(dp1_d1_N1), .D(dp1_d1_N2), .Q(rx_data[0]) );
  DLH_X1 dp1_d1_q_reg_2_ ( .G(dp1_d1_N1), .D(dp1_d1_N4), .Q(rx_data[2]) );
  DLH_X1 dp1_d1_q_reg_3_ ( .G(dp1_d1_N1), .D(dp1_d1_N5), .Q(rx_data[3]) );
  DLH_X1 dp1_d1_q_reg_4_ ( .G(dp1_d1_N1), .D(dp1_d1_N6), .Q(rx_data[4]) );
  DLH_X1 dp1_d1_q_reg_5_ ( .G(dp1_d1_N1), .D(dp1_d1_N7), .Q(rx_data[5]) );
  DLH_X1 dp1_d1_q_reg_6_ ( .G(dp1_d1_N1), .D(dp1_d1_N8), .Q(rx_data[6]) );
  DLH_X1 dp1_d1_q_reg_7_ ( .G(dp1_d1_N1), .D(dp1_d1_N9), .Q(rx_data[7]) );
  DLH_X1 dp2_d1_q_reg_0_ ( .G(dp2_d1_N1), .D(dp2_d1_N2), .Q(rxrxout[0]) );
  DLH_X1 dp2_d1_q_reg_1_ ( .G(dp2_d1_N1), .D(dp2_d1_N3), .Q(rxrxout[1]) );
  DLH_X1 dp2_d1_q_reg_2_ ( .G(dp2_d1_N1), .D(dp2_d1_N4), .Q(rxrxout[2]) );
  DLH_X1 dp2_d1_q_reg_3_ ( .G(dp2_d1_N1), .D(dp2_d1_N5), .Q(rxrxout[3]) );
  DLH_X1 dp2_d1_q_reg_4_ ( .G(dp2_d1_N1), .D(dp2_d1_N6), .Q(rxrxout[4]) );
  DLH_X1 dp2_d1_q_reg_5_ ( .G(dp2_d1_N1), .D(dp2_d1_N7), .Q(rxrxout[5]) );
  DLH_X1 dp2_d1_q_reg_6_ ( .G(dp2_d1_N1), .D(dp2_d1_N8), .Q(rxrxout[6]) );
  DLH_X1 dp2_d1_q_reg_7_ ( .G(dp2_d1_N1), .D(dp2_d1_N9), .Q(rxrxout[7]) );
  DFF_X1 tx_tcount_reg_0_ ( .D(tx_n126), .CK(n8), .Q(tcount[0]), .QN(tx_n41)
         );
  OR3_X1 U3 ( .A1(n84), .A2(n83), .A3(n82), .ZN(n3) );
  OR3_X1 U4 ( .A1(n76), .A2(n75), .A3(n74), .ZN(n4) );
  NAND2_X1 U5 ( .A1(n49), .A2(rx_n84), .ZN(rx_n85) );
  NAND2_X1 U6 ( .A1(n35), .A2(tx_n93), .ZN(tx_n89) );
  INV_X1 U7 ( .A(tx_n93), .ZN(n33) );
  INV_X1 U8 ( .A(rx_n84), .ZN(n47) );
  INV_X1 U9 ( .A(rx_n60), .ZN(n46) );
  INV_X1 U10 ( .A(tx_n56), .ZN(n32) );
  INV_X1 U11 ( .A(rx_n95), .ZN(n16) );
  INV_X1 U12 ( .A(tx_n95), .ZN(n17) );
  NOR2_X1 U13 ( .A1(rx_n58), .A2(n52), .ZN(rx_n50) );
  AND2_X1 U14 ( .A1(tx_n54), .A2(tx_n92), .ZN(n5) );
  NAND2_X1 U15 ( .A1(rx_n58), .A2(n50), .ZN(rx_n48) );
  INV_X1 U16 ( .A(rx_n50), .ZN(n50) );
  OR2_X1 U17 ( .A1(tx_n54), .A2(n5), .ZN(tx_n45) );
  INV_X1 U18 ( .A(rx_n94), .ZN(n52) );
  NAND2_X1 U19 ( .A1(tx_n82), .A2(tx_n92), .ZN(tx_n93) );
  INV_X1 U20 ( .A(rx_n91), .ZN(n49) );
  NAND2_X1 U21 ( .A1(rx_n91), .A2(rx_n94), .ZN(rx_n84) );
  INV_X1 U22 ( .A(tx_n82), .ZN(n35) );
  INV_X1 U23 ( .A(n85), .ZN(n13) );
  INV_X1 U24 ( .A(tx_n92), .ZN(n36) );
  INV_X1 U25 ( .A(dp1_d1_n3), .ZN(n14) );
  NAND2_X1 U26 ( .A1(n15), .A2(n85), .ZN(dp2_d1_N1) );
  INV_X1 U27 ( .A(rx_n83), .ZN(n43) );
  INV_X1 U28 ( .A(rx_n93), .ZN(n45) );
  INV_X1 U29 ( .A(tx_n90), .ZN(n31) );
  NAND2_X1 U30 ( .A1(n15), .A2(dp1_d1_n3), .ZN(dp1_d1_N1) );
  NAND2_X1 U31 ( .A1(tx_n91), .A2(n33), .ZN(tx_n56) );
  NAND2_X1 U32 ( .A1(rx_n59), .A2(n47), .ZN(rx_n60) );
  INV_X1 U33 ( .A(tx_n78), .ZN(n30) );
  INV_X1 U34 ( .A(tx_n85), .ZN(n34) );
  AOI211_X1 U35 ( .C1(rx_n97), .C2(rx_n98), .A(n16), .B(rstate[2]), .ZN(
        rx_N780) );
  NAND2_X1 U36 ( .A1(rstate[1]), .A2(rx_n44), .ZN(rx_n97) );
  NAND3_X1 U37 ( .A1(rstate[0]), .A2(rx_n43), .A3(rx_rdy), .ZN(rx_n98) );
  AOI211_X1 U38 ( .C1(tx_n97), .C2(tx_n98), .A(n17), .B(tstate[2]), .ZN(
        tx_N770) );
  NAND2_X1 U39 ( .A1(tstate[1]), .A2(tx_n36), .ZN(tx_n97) );
  NAND3_X1 U40 ( .A1(tstate[0]), .A2(tx_n35), .A3(tx_rdy), .ZN(tx_n98) );
  NOR2_X1 U41 ( .A1(rstate[3]), .A2(reset), .ZN(rx_n95) );
  NOR2_X1 U42 ( .A1(tstate[3]), .A2(reset), .ZN(tx_n95) );
  AOI21_X1 U43 ( .B1(rx_n99), .B2(rx_n100), .A(n16), .ZN(rx_N770) );
  NAND4_X1 U44 ( .A1(rstate[1]), .A2(rx_n44), .A3(rx_n42), .A4(rx_n40), .ZN(
        rx_n100) );
  OAI21_X1 U45 ( .B1(rstate[2]), .B2(n23), .A(rx_n43), .ZN(rx_n99) );
  INV_X1 U46 ( .A(rx_rdy), .ZN(n23) );
  AOI21_X1 U47 ( .B1(tx_n99), .B2(tx_n100), .A(n17), .ZN(tx_N760) );
  NAND4_X1 U48 ( .A1(tstate[1]), .A2(tx_n36), .A3(tx_n34), .A4(tx_n29), .ZN(
        tx_n100) );
  OAI21_X1 U49 ( .B1(tstate[2]), .B2(n22), .A(tx_n35), .ZN(tx_n99) );
  INV_X1 U50 ( .A(tx_rdy), .ZN(n22) );
  AND2_X1 U51 ( .A1(rx_n95), .A2(rx_n96), .ZN(rx_N790) );
  AND2_X1 U52 ( .A1(tx_n95), .A2(tx_n96), .ZN(tx_N780) );
  OAI22_X1 U53 ( .A1(n58), .A2(n56), .B1(tx_data[1]), .B2(n58), .ZN(n59) );
  INV_X1 U54 ( .A(rxrxout[1]), .ZN(n56) );
  AND2_X1 U55 ( .A1(tx_data[0]), .A2(n55), .ZN(n58) );
  OAI22_X1 U56 ( .A1(rxrxout[1]), .A2(n57), .B1(n57), .B2(n21), .ZN(n60) );
  INV_X1 U57 ( .A(tx_data[1]), .ZN(n21) );
  NOR2_X1 U58 ( .A1(n55), .A2(tx_data[0]), .ZN(n57) );
  NOR2_X1 U59 ( .A1(n68), .A2(n67), .ZN(match) );
  NAND4_X1 U60 ( .A1(n66), .A2(n65), .A3(n64), .A4(n63), .ZN(n67) );
  NAND4_X1 U61 ( .A1(n62), .A2(n61), .A3(n60), .A4(n59), .ZN(n68) );
  XNOR2_X1 U62 ( .A(tx_data[6]), .B(rxrxout[6]), .ZN(n66) );
  XNOR2_X1 U63 ( .A(tx_data[3]), .B(rxrxout[3]), .ZN(n63) );
  XNOR2_X1 U64 ( .A(tx_data[4]), .B(rxrxout[4]), .ZN(n64) );
  XNOR2_X1 U65 ( .A(tx_data[7]), .B(rxrxout[7]), .ZN(n61) );
  XNOR2_X1 U66 ( .A(tx_data[5]), .B(rxrxout[5]), .ZN(n65) );
  XNOR2_X1 U67 ( .A(tx_data[2]), .B(rxrxout[2]), .ZN(n62) );
  NAND3_X1 U68 ( .A1(tx_n20), .A2(tx_n19), .A3(tx_n21), .ZN(tx_n92) );
  NOR2_X1 U69 ( .A1(rx_n28), .A2(rcount[0]), .ZN(rx_n64) );
  NOR2_X1 U70 ( .A1(rx_n29), .A2(rx_n28), .ZN(rx_n76) );
  NAND3_X1 U71 ( .A1(rx_n23), .A2(rx_n22), .A3(rx_n24), .ZN(rx_n94) );
  NOR3_X1 U72 ( .A1(rx_next_rstate_0_), .A2(rx_next_rstate_1_), .A3(rx_n22), 
        .ZN(rx_n67) );
  NOR3_X1 U73 ( .A1(rx_n24), .A2(rx_next_rstate_1_), .A3(rx_n22), .ZN(rx_n58)
         );
  NOR2_X1 U74 ( .A1(rx_n69), .A2(rcount[2]), .ZN(rx_n77) );
  NAND3_X1 U75 ( .A1(tx_n21), .A2(tx_n19), .A3(tx_next_tstate_1_), .ZN(tx_n82)
         );
  NAND2_X1 U76 ( .A1(n49), .A2(rx_n80), .ZN(rx_n63) );
  OAI22_X1 U77 ( .A1(rcount[2]), .A2(rx_n81), .B1(rx_n82), .B2(rx_n26), .ZN(
        rx_n80) );
  AOI222_X1 U78 ( .A1(rx_data[6]), .A2(n43), .B1(rx_data[7]), .B2(rx_n64), 
        .C1(rx_data[5]), .C2(rx_n74), .ZN(rx_n82) );
  AOI222_X1 U79 ( .A1(rx_data[2]), .A2(n43), .B1(rx_data[3]), .B2(rx_n64), 
        .C1(rx_data[4]), .C2(rx_n76), .ZN(rx_n81) );
  NAND2_X1 U80 ( .A1(n35), .A2(tx_n75), .ZN(tx_n59) );
  OAI22_X1 U81 ( .A1(tcount[2]), .A2(tx_n76), .B1(tx_n77), .B2(tx_n38), .ZN(
        tx_n75) );
  AOI21_X1 U82 ( .B1(tx_data[2]), .B2(tx_n78), .A(tx_n79), .ZN(tx_n76) );
  AOI22_X1 U83 ( .A1(tx_data[6]), .A2(tx_n41), .B1(tx_data[7]), .B2(tcount[0]), 
        .ZN(tx_n77) );
  NOR2_X1 U84 ( .A1(tcount[0]), .A2(tcount[1]), .ZN(tx_n78) );
  NOR2_X1 U85 ( .A1(rcount[0]), .A2(rcount[1]), .ZN(rx_n74) );
  NAND3_X1 U86 ( .A1(rx_n24), .A2(rx_n22), .A3(rx_next_rstate_1_), .ZN(rx_n91)
         );
  AOI21_X1 U87 ( .B1(rx_n29), .B2(n49), .A(n47), .ZN(rx_n92) );
  AOI21_X1 U88 ( .B1(tx_n41), .B2(n35), .A(n33), .ZN(tx_n88) );
  OAI21_X1 U89 ( .B1(tcount[1]), .B2(tx_n82), .A(tx_n88), .ZN(tx_n86) );
  NAND3_X1 U90 ( .A1(n73), .A2(n72), .A3(n71), .ZN(n76) );
  OAI21_X1 U91 ( .B1(rcount[1]), .B2(rx_n91), .A(rx_n92), .ZN(rx_n89) );
  NAND2_X1 U92 ( .A1(tx_n64), .A2(tx_n38), .ZN(tx_n68) );
  NAND2_X1 U93 ( .A1(rx_next_rstate_1_), .A2(n46), .ZN(rx_n93) );
  OAI22_X1 U94 ( .A1(rx_rtmpout[3]), .A2(n78), .B1(n78), .B2(n54), .ZN(n80) );
  INV_X1 U95 ( .A(rx_data[3]), .ZN(n54) );
  AND2_X1 U96 ( .A1(rx_rtmpout[2]), .A2(n53), .ZN(n78) );
  OAI22_X1 U97 ( .A1(tx_ttmpout[3]), .A2(n70), .B1(n70), .B2(n19), .ZN(n72) );
  INV_X1 U98 ( .A(tx_data[3]), .ZN(n19) );
  AND2_X1 U99 ( .A1(tx_ttmpout[2]), .A2(n20), .ZN(n70) );
  OAI22_X1 U100 ( .A1(n77), .A2(rx_n37), .B1(rx_data[3]), .B2(n77), .ZN(n81)
         );
  NOR2_X1 U101 ( .A1(n53), .A2(rx_rtmpout[2]), .ZN(n77) );
  OAI22_X1 U102 ( .A1(n69), .A2(tx_n27), .B1(tx_data[3]), .B2(n69), .ZN(n73)
         );
  NOR2_X1 U103 ( .A1(n20), .A2(tx_ttmpout[2]), .ZN(n69) );
  NAND3_X1 U104 ( .A1(rx_next_rstate_1_), .A2(rx_n22), .A3(rx_next_rstate_0_), 
        .ZN(rx_n59) );
  NOR2_X1 U105 ( .A1(tx_n89), .A2(tx_n41), .ZN(tx_n85) );
  NOR2_X1 U106 ( .A1(tcount[3]), .A2(tx_n82), .ZN(tx_n64) );
  NAND2_X1 U107 ( .A1(tx_next_tstate_1_), .A2(n32), .ZN(tx_n90) );
  NAND3_X1 U108 ( .A1(tx_n21), .A2(tx_n20), .A3(tx_next_tstate_2_), .ZN(tx_n61) );
  NAND2_X1 U109 ( .A1(rx_n25), .A2(n49), .ZN(rx_n69) );
  OAI22_X1 U110 ( .A1(tx_n88), .A2(tx_n39), .B1(tcount[1]), .B2(n34), .ZN(
        tx_n118) );
  NAND3_X1 U111 ( .A1(tx_next_tstate_1_), .A2(tx_n19), .A3(tx_next_tstate_0_), 
        .ZN(tx_n91) );
  OAI22_X1 U112 ( .A1(n33), .A2(tx_n92), .B1(tx_n93), .B2(tx_n30), .ZN(tx_n123) );
  OAI22_X1 U113 ( .A1(n44), .A2(rx_n26), .B1(rx_n85), .B2(rx_n90), .ZN(rx_n119) );
  INV_X1 U114 ( .A(rx_n89), .ZN(n44) );
  NAND2_X1 U115 ( .A1(rx_n76), .A2(rx_n26), .ZN(rx_n90) );
  OAI22_X1 U116 ( .A1(rx_n84), .A2(rx_n40), .B1(rx_n85), .B2(rx_n86), .ZN(
        rx_n117) );
  OAI21_X1 U117 ( .B1(rx_n74), .B2(rx_n26), .A(rx_n25), .ZN(rx_n86) );
  OAI22_X1 U118 ( .A1(n47), .A2(rx_n94), .B1(rx_n84), .B2(rx_n31), .ZN(rx_n125) );
  OAI22_X1 U119 ( .A1(tx_n93), .A2(tx_n41), .B1(tcount[0]), .B2(tx_n89), .ZN(
        tx_n126) );
  OAI22_X1 U120 ( .A1(rx_n84), .A2(rx_n29), .B1(rcount[0]), .B2(rx_n85), .ZN(
        rx_n121) );
  OAI22_X1 U121 ( .A1(n45), .A2(rx_n24), .B1(rx_n93), .B2(rx_n44), .ZN(rx_n126) );
  OAI22_X1 U122 ( .A1(rx_n23), .A2(n45), .B1(rx_n93), .B2(rx_n43), .ZN(rx_n124) );
  OAI22_X1 U123 ( .A1(n45), .A2(rx_n22), .B1(rx_n93), .B2(rx_n42), .ZN(rx_n123) );
  OAI22_X1 U124 ( .A1(n31), .A2(tx_n21), .B1(tx_n90), .B2(tx_n36), .ZN(tx_n122) );
  OAI22_X1 U125 ( .A1(tx_n20), .A2(n31), .B1(tx_n90), .B2(tx_n35), .ZN(tx_n121) );
  INV_X1 U126 ( .A(reset), .ZN(n15) );
  OAI22_X1 U127 ( .A1(rx_n92), .A2(rx_n28), .B1(rx_n83), .B2(rx_n85), .ZN(
        rx_n120) );
  OAI22_X1 U128 ( .A1(n31), .A2(tx_n19), .B1(tx_n90), .B2(tx_n34), .ZN(tx_n120) );
  OAI22_X1 U129 ( .A1(rx_n75), .A2(rx_n63), .B1(rx_n36), .B2(n39), .ZN(rx_n114) );
  INV_X1 U130 ( .A(rx_n75), .ZN(n39) );
  AOI21_X1 U131 ( .B1(rx_n76), .B2(rx_n77), .A(n52), .ZN(rx_n75) );
  OAI22_X1 U132 ( .A1(rx_n78), .A2(rx_n63), .B1(rx_n37), .B2(n38), .ZN(rx_n115) );
  INV_X1 U133 ( .A(rx_n78), .ZN(n38) );
  AOI21_X1 U134 ( .B1(rx_n64), .B2(rx_n77), .A(n52), .ZN(rx_n78) );
  OAI22_X1 U135 ( .A1(rx_n79), .A2(rx_n63), .B1(rx_n38), .B2(n37), .ZN(rx_n116) );
  INV_X1 U136 ( .A(rx_n79), .ZN(n37) );
  AOI21_X1 U137 ( .B1(n43), .B2(rx_n77), .A(n52), .ZN(rx_n79) );
  OAI22_X1 U138 ( .A1(tx_n63), .A2(tx_n59), .B1(tx_n23), .B2(n28), .ZN(tx_n111) );
  INV_X1 U139 ( .A(tx_n63), .ZN(n28) );
  AOI21_X1 U140 ( .B1(tx_n64), .B2(tx_n65), .A(n36), .ZN(tx_n63) );
  NOR2_X1 U141 ( .A1(n30), .A2(tx_n38), .ZN(tx_n65) );
  OAI22_X1 U142 ( .A1(tx_n31), .A2(tx_n60), .B1(tx_n61), .B2(tx_n62), .ZN(
        tx_n110) );
  NAND2_X1 U143 ( .A1(n4), .A2(tx_n60), .ZN(tx_n62) );
  NAND2_X1 U144 ( .A1(tx_n61), .A2(tx_n92), .ZN(tx_n60) );
  OAI22_X1 U145 ( .A1(tx_n22), .A2(tx_n56), .B1(n32), .B2(tx_n57), .ZN(tx_n109) );
  AOI21_X1 U146 ( .B1(n35), .B2(tx_n58), .A(n18), .ZN(tx_n57) );
  INV_X1 U147 ( .A(tx_n59), .ZN(n18) );
  NAND4_X1 U148 ( .A1(tcount[2]), .A2(tcount[0]), .A3(tx_n39), .A4(tx_n37), 
        .ZN(tx_n58) );
  OAI22_X1 U149 ( .A1(rx_n32), .A2(rx_n60), .B1(n46), .B2(rx_n61), .ZN(rx_n110) );
  AOI21_X1 U150 ( .B1(n49), .B2(rx_n62), .A(n42), .ZN(rx_n61) );
  INV_X1 U151 ( .A(rx_n63), .ZN(n42) );
  NAND3_X1 U152 ( .A1(rx_n64), .A2(rx_n25), .A3(rcount[2]), .ZN(rx_n62) );
  OAI22_X1 U153 ( .A1(rx_n30), .A2(n51), .B1(rx_n65), .B2(rx_n66), .ZN(rx_n111) );
  INV_X1 U154 ( .A(rx_n65), .ZN(n51) );
  NOR2_X1 U155 ( .A1(rx_n67), .A2(n52), .ZN(rx_n65) );
  AOI22_X1 U156 ( .A1(rx_n67), .A2(n3), .B1(rx_data[0]), .B2(n52), .ZN(rx_n66)
         );
  OAI22_X1 U157 ( .A1(n41), .A2(rx_n63), .B1(rx_n33), .B2(rx_n68), .ZN(rx_n112) );
  INV_X1 U158 ( .A(rx_n68), .ZN(n41) );
  OAI21_X1 U159 ( .B1(rx_n69), .B2(rx_n70), .A(rx_n94), .ZN(rx_n68) );
  NAND2_X1 U160 ( .A1(n43), .A2(rcount[2]), .ZN(rx_n70) );
  OAI22_X1 U161 ( .A1(n40), .A2(rx_n63), .B1(rx_n35), .B2(rx_n72), .ZN(rx_n113) );
  INV_X1 U162 ( .A(rx_n72), .ZN(n40) );
  OAI21_X1 U163 ( .B1(rx_n69), .B2(rx_n73), .A(rx_n94), .ZN(rx_n72) );
  NAND2_X1 U164 ( .A1(rx_n74), .A2(rcount[2]), .ZN(rx_n73) );
  OAI22_X1 U165 ( .A1(n27), .A2(tx_n59), .B1(tx_n25), .B2(tx_n67), .ZN(tx_n112) );
  INV_X1 U166 ( .A(tx_n67), .ZN(n27) );
  OAI21_X1 U167 ( .B1(tx_n68), .B2(tx_n69), .A(tx_n92), .ZN(tx_n67) );
  NAND2_X1 U168 ( .A1(tcount[1]), .A2(tcount[0]), .ZN(tx_n69) );
  OAI22_X1 U169 ( .A1(n26), .A2(tx_n59), .B1(tx_n26), .B2(tx_n70), .ZN(tx_n113) );
  INV_X1 U170 ( .A(tx_n70), .ZN(n26) );
  OAI21_X1 U171 ( .B1(tx_n68), .B2(tx_n71), .A(tx_n92), .ZN(tx_n70) );
  NAND2_X1 U172 ( .A1(tcount[1]), .A2(tx_n41), .ZN(tx_n71) );
  OAI22_X1 U173 ( .A1(n25), .A2(tx_n59), .B1(tx_n27), .B2(tx_n72), .ZN(tx_n114) );
  INV_X1 U174 ( .A(tx_n72), .ZN(n25) );
  OAI21_X1 U175 ( .B1(tx_n68), .B2(tx_n73), .A(tx_n92), .ZN(tx_n72) );
  NAND2_X1 U176 ( .A1(tcount[0]), .A2(tx_n39), .ZN(tx_n73) );
  OAI22_X1 U177 ( .A1(n24), .A2(tx_n59), .B1(tx_n28), .B2(tx_n74), .ZN(tx_n115) );
  INV_X1 U178 ( .A(tx_n74), .ZN(n24) );
  OAI21_X1 U179 ( .B1(n30), .B2(tx_n68), .A(tx_n92), .ZN(tx_n74) );
  OAI22_X1 U180 ( .A1(n29), .A2(tx_n38), .B1(n34), .B2(tx_n87), .ZN(tx_n117)
         );
  INV_X1 U181 ( .A(tx_n86), .ZN(n29) );
  NAND2_X1 U182 ( .A1(tcount[1]), .A2(tx_n38), .ZN(tx_n87) );
  OAI22_X1 U183 ( .A1(tx_n93), .A2(tx_n29), .B1(tx_n89), .B2(tx_n94), .ZN(
        tx_n125) );
  OAI21_X1 U184 ( .B1(tx_n78), .B2(tx_n38), .A(tx_n37), .ZN(tx_n94) );
  XNOR2_X1 U185 ( .A(rx_data[4]), .B(rx_rtmpout[4]), .ZN(n79) );
  XNOR2_X1 U186 ( .A(tx_data[4]), .B(tx_ttmpout[4]), .ZN(n71) );
  OAI21_X1 U187 ( .B1(tx_n80), .B2(tx_n39), .A(tx_n81), .ZN(tx_n79) );
  NAND3_X1 U188 ( .A1(tcount[0]), .A2(tx_n39), .A3(tx_data[3]), .ZN(tx_n81) );
  AOI22_X1 U189 ( .A1(tx_data[4]), .A2(tx_n41), .B1(tx_data[5]), .B2(tcount[0]), .ZN(tx_n80) );
  NAND3_X1 U190 ( .A1(tx_next_tstate_0_), .A2(tx_n20), .A3(tx_next_tstate_2_), 
        .ZN(tx_n54) );
  OAI21_X1 U191 ( .B1(rx_n48), .B2(rx_n39), .A(rx_n56), .ZN(rx_n107) );
  NAND2_X1 U192 ( .A1(rx_out[1]), .A2(rx_n50), .ZN(rx_n56) );
  OAI21_X1 U193 ( .B1(rx_n48), .B2(rx_n33), .A(rx_n51), .ZN(rx_n102) );
  NAND2_X1 U194 ( .A1(rx_out[6]), .A2(rx_n50), .ZN(rx_n51) );
  OAI21_X1 U195 ( .B1(rx_n48), .B2(rx_n35), .A(rx_n52), .ZN(rx_n103) );
  NAND2_X1 U196 ( .A1(rx_out[5]), .A2(rx_n50), .ZN(rx_n52) );
  OAI21_X1 U197 ( .B1(rx_n48), .B2(rx_n36), .A(rx_n53), .ZN(rx_n104) );
  NAND2_X1 U198 ( .A1(rx_out[4]), .A2(rx_n50), .ZN(rx_n53) );
  OAI21_X1 U199 ( .B1(rx_n48), .B2(rx_n37), .A(rx_n54), .ZN(rx_n105) );
  NAND2_X1 U200 ( .A1(rx_out[3]), .A2(rx_n50), .ZN(rx_n54) );
  OAI21_X1 U201 ( .B1(rx_n48), .B2(rx_n38), .A(rx_n55), .ZN(rx_n106) );
  NAND2_X1 U202 ( .A1(rx_out[2]), .A2(rx_n50), .ZN(rx_n55) );
  OAI21_X1 U203 ( .B1(rx_n48), .B2(rx_n30), .A(rx_n57), .ZN(rx_n108) );
  NAND2_X1 U204 ( .A1(rx_out[0]), .A2(rx_n50), .ZN(rx_n57) );
  OAI21_X1 U205 ( .B1(rx_n48), .B2(rx_n32), .A(rx_n49), .ZN(rx_n101) );
  NAND2_X1 U206 ( .A1(rx_out[7]), .A2(rx_n50), .ZN(rx_n49) );
  NAND2_X1 U207 ( .A1(rcount[0]), .A2(rx_n28), .ZN(rx_n83) );
  OAI21_X1 U208 ( .B1(tx_n45), .B2(tx_n23), .A(tx_n47), .ZN(tx_n102) );
  NAND2_X1 U209 ( .A1(tx_out[6]), .A2(n5), .ZN(tx_n47) );
  OAI21_X1 U210 ( .B1(tx_n45), .B2(tx_n25), .A(tx_n48), .ZN(tx_n103) );
  NAND2_X1 U211 ( .A1(tx_out[5]), .A2(n5), .ZN(tx_n48) );
  OAI21_X1 U212 ( .B1(tx_n45), .B2(tx_n26), .A(tx_n49), .ZN(tx_n104) );
  NAND2_X1 U213 ( .A1(tx_out[4]), .A2(n5), .ZN(tx_n49) );
  OAI21_X1 U214 ( .B1(tx_n45), .B2(tx_n27), .A(tx_n50), .ZN(tx_n105) );
  NAND2_X1 U215 ( .A1(tx_out[3]), .A2(n5), .ZN(tx_n50) );
  OAI21_X1 U216 ( .B1(tx_n45), .B2(tx_n31), .A(tx_n53), .ZN(tx_n108) );
  NAND2_X1 U217 ( .A1(tx_out[0]), .A2(n5), .ZN(tx_n53) );
  OAI21_X1 U218 ( .B1(tx_n45), .B2(tx_n28), .A(tx_n51), .ZN(tx_n106) );
  NAND2_X1 U219 ( .A1(tx_out[2]), .A2(n5), .ZN(tx_n51) );
  OAI21_X1 U220 ( .B1(tx_n45), .B2(tx_n22), .A(tx_n46), .ZN(tx_n101) );
  NAND2_X1 U221 ( .A1(tx_out[7]), .A2(n5), .ZN(tx_n46) );
  OAI21_X1 U222 ( .B1(tx_n45), .B2(tx_n32), .A(tx_n52), .ZN(tx_n107) );
  NAND2_X1 U223 ( .A1(tx_out[1]), .A2(n5), .ZN(tx_n52) );
  OAI21_X1 U224 ( .B1(rx_n87), .B2(rx_n25), .A(rx_n88), .ZN(rx_n118) );
  AOI21_X1 U225 ( .B1(n49), .B2(rx_n26), .A(rx_n89), .ZN(rx_n87) );
  NAND4_X1 U226 ( .A1(n48), .A2(rx_n76), .A3(rcount[2]), .A4(rx_n25), .ZN(
        rx_n88) );
  INV_X1 U227 ( .A(rx_n85), .ZN(n48) );
  OAI21_X1 U228 ( .B1(tx_n83), .B2(tx_n37), .A(tx_n84), .ZN(tx_n116) );
  AOI21_X1 U229 ( .B1(n35), .B2(tx_n38), .A(tx_n86), .ZN(tx_n83) );
  NAND4_X1 U230 ( .A1(tx_n85), .A2(tcount[1]), .A3(tcount[2]), .A4(tx_n37), 
        .ZN(tx_n84) );
  OAI21_X1 U231 ( .B1(n52), .B2(rx_n39), .A(rx_n59), .ZN(rx_n109) );
  OAI21_X1 U232 ( .B1(n36), .B2(tx_n32), .A(tx_n91), .ZN(tx_n124) );
  NAND2_X1 U233 ( .A1(rx_done), .A2(n15), .ZN(n85) );
  NAND2_X1 U234 ( .A1(tx_done), .A2(n15), .ZN(dp1_d1_n3) );
  INV_X1 U235 ( .A(clkb), .ZN(n12) );
  INV_X1 U236 ( .A(rx_data[2]), .ZN(n53) );
  INV_X1 U237 ( .A(rxrxout[0]), .ZN(n55) );
  INV_X1 U238 ( .A(tx_data[2]), .ZN(n20) );
  NAND3_X1 U239 ( .A1(n81), .A2(n80), .A3(n79), .ZN(n84) );
  AND2_X1 U240 ( .A1(n45), .A2(rstate[3]), .ZN(rx_n122) );
  AND2_X1 U241 ( .A1(n31), .A2(tstate[3]), .ZN(tx_n119) );
  AND2_X1 U242 ( .A1(rx_out[7]), .A2(n13), .ZN(dp2_d1_N9) );
  AND2_X1 U243 ( .A1(rx_out[6]), .A2(n13), .ZN(dp2_d1_N8) );
  AND2_X1 U244 ( .A1(rx_out[5]), .A2(n13), .ZN(dp2_d1_N7) );
  AND2_X1 U245 ( .A1(rx_out[4]), .A2(n13), .ZN(dp2_d1_N6) );
  AND2_X1 U246 ( .A1(rx_out[3]), .A2(n13), .ZN(dp2_d1_N5) );
  AND2_X1 U247 ( .A1(rx_out[2]), .A2(n13), .ZN(dp2_d1_N4) );
  AND2_X1 U248 ( .A1(rx_out[1]), .A2(n13), .ZN(dp2_d1_N3) );
  AND2_X1 U249 ( .A1(rx_out[0]), .A2(n13), .ZN(dp2_d1_N2) );
  AND2_X1 U250 ( .A1(tx_out[7]), .A2(n14), .ZN(dp1_d1_N9) );
  AND2_X1 U251 ( .A1(tx_out[6]), .A2(n14), .ZN(dp1_d1_N8) );
  AND2_X1 U252 ( .A1(tx_out[5]), .A2(n14), .ZN(dp1_d1_N7) );
  AND2_X1 U253 ( .A1(tx_out[4]), .A2(n14), .ZN(dp1_d1_N6) );
  AND2_X1 U254 ( .A1(tx_out[3]), .A2(n14), .ZN(dp1_d1_N5) );
  AND2_X1 U255 ( .A1(tx_out[2]), .A2(n14), .ZN(dp1_d1_N4) );
  AND2_X1 U256 ( .A1(tx_out[0]), .A2(n14), .ZN(dp1_d1_N2) );
  INV_X1 U257 ( .A(clka), .ZN(n11) );
  BUF_X1 U258 ( .A(n12), .Z(n6) );
  BUF_X1 U259 ( .A(n12), .Z(n7) );
  BUF_X1 U260 ( .A(n12), .Z(n8) );
  BUF_X1 U261 ( .A(n12), .Z(n9) );
  BUF_X1 U262 ( .A(n12), .Z(n10) );
  XOR2_X1 U263 ( .A(tx_data[5]), .B(tx_ttmpout[5]), .Z(n75) );
  XOR2_X1 U264 ( .A(tx_data[6]), .B(tx_ttmpout[6]), .Z(n74) );
  XOR2_X1 U265 ( .A(rx_data[5]), .B(rx_rtmpout[5]), .Z(n83) );
  XOR2_X1 U266 ( .A(rx_data[6]), .B(rx_rtmpout[6]), .Z(n82) );
endmodule

