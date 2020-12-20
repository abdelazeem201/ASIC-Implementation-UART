/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : N-2017.09-SP2
// Date      : Fri Apr  5 12:04:21 2019
/////////////////////////////////////////////////////////////


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
  wire   N0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, \tx/n144 ,
         \tx/n143 , \tx/n142 , \tx/n141 , \tx/n140 , \tx/n139 , \tx/n138 ,
         \tx/n137 , \tx/n136 , \tx/n135 , \tx/n134 , \tx/n133 , \tx/n132 ,
         \tx/n131 , \tx/n130 , \tx/n129 , \tx/n128 , \tx/n127 , \tx/n126 ,
         \tx/n125 , \tx/n124 , \tx/n123 , \tx/n122 , \tx/n121 , \tx/n120 ,
         \tx/n119 , \tx/n118 , \tx/n117 , \tx/n116 , \tx/n115 , \tx/n114 ,
         \tx/n113 , \tx/n112 , \tx/n111 , \tx/n110 , \tx/n109 , \tx/n108 ,
         \tx/n107 , \tx/n106 , \tx/n105 , \tx/n104 , \tx/n103 , \tx/n102 ,
         \tx/n101 , \tx/n100 , \tx/n99 , \tx/n98 , \tx/n97 , \tx/n95 ,
         \tx/n94 , \tx/n93 , \tx/n92 , \tx/n91 , \tx/n90 , \tx/n89 , \tx/n88 ,
         \tx/n87 , \tx/n86 , \tx/n85 , \tx/n84 , \tx/n83 , \tx/n82 , \tx/n81 ,
         \tx/n80 , \tx/n79 , \tx/n78 , \tx/n77 , \tx/n76 , \tx/n75 , \tx/n74 ,
         \tx/n73 , \tx/n72 , \tx/n71 , \tx/n70 , \tx/n69 , \tx/n68 , \tx/n67 ,
         \tx/n66 , \tx/n65 , \tx/n64 , \tx/n63 , \tx/n62 , \tx/n61 , \tx/n60 ,
         \tx/n59 , \tx/n58 , \tx/n57 , \tx/n56 , \tx/n55 , \tx/n54 , \tx/n53 ,
         \tx/n52 , \tx/n51 , \tx/n50 , \tx/n49 , \tx/n48 , \tx/n47 , \tx/n46 ,
         \tx/n45 , \tx/n44 , \tx/n43 , \tx/n42 , \tx/n41 , \tx/n40 , \tx/n39 ,
         \tx/n38 , \tx/n37 , \tx/n36 , \tx/n35 , \tx/n34 , \tx/n33 , \tx/n32 ,
         \tx/n31 , \tx/n30 , \tx/n29 , \tx/n28 , \tx/n27 , \tx/n26 , \tx/n25 ,
         \tx/n24 , \tx/n23 , \tx/n21 , \tx/n20 , \tx/n19 , \tx/n18 , \tx/n17 ,
         \tx/n16 , \tx/n14 , \tx/n13 , \tx/n12 , \tx/n11 , \tx/n10 , \tx/n9 ,
         \tx/N79 , \tx/N78 , \tx/N77 , \rx/n152 , \rx/n151 , \rx/n150 ,
         \rx/n149 , \rx/n148 , \rx/n147 , \rx/n146 , \rx/n145 , \rx/n144 ,
         \rx/n143 , \rx/n142 , \rx/n141 , \rx/n140 , \rx/n139 , \rx/n138 ,
         \rx/n137 , \rx/n136 , \rx/n135 , \rx/n134 , \rx/n133 , \rx/n132 ,
         \rx/n131 , \rx/n130 , \rx/n129 , \rx/n128 , \rx/n127 , \rx/n126 ,
         \rx/n125 , \rx/n124 , \rx/n123 , \rx/n122 , \rx/n121 , \rx/n120 ,
         \rx/n119 , \rx/n118 , \rx/n117 , \rx/n116 , \rx/n115 , \rx/n114 ,
         \rx/n113 , \rx/n112 , \rx/n111 , \rx/n110 , \rx/n109 , \rx/n108 ,
         \rx/n107 , \rx/n106 , \rx/n105 , \rx/n104 , \rx/n103 , \rx/n102 ,
         \rx/n101 , \rx/n100 , \rx/n99 , \rx/n98 , \rx/n97 , \rx/n96 ,
         \rx/n95 , \rx/n94 , \rx/n93 , \rx/n92 , \rx/n91 , \rx/n90 , \rx/n89 ,
         \rx/n88 , \rx/n87 , \rx/n86 , \rx/n84 , \rx/n83 , \rx/n82 , \rx/n81 ,
         \rx/n80 , \rx/n79 , \rx/n78 , \rx/n77 , \rx/n76 , \rx/n75 , \rx/n74 ,
         \rx/n73 , \rx/n72 , \rx/n71 , \rx/n70 , \rx/n69 , \rx/n68 , \rx/n67 ,
         \rx/n66 , \rx/n65 , \rx/n63 , \rx/n62 , \rx/n61 , \rx/n60 , \rx/n59 ,
         \rx/n58 , \rx/n57 , \rx/n56 , \rx/n55 , \rx/n54 , \rx/n53 , \rx/n52 ,
         \rx/n51 , \rx/n50 , \rx/n49 , \rx/n48 , \rx/n47 , \rx/n46 , \rx/n45 ,
         \rx/n44 , \rx/n43 , \rx/n42 , \rx/n41 , \rx/n40 , \rx/n39 , \rx/n38 ,
         \rx/n37 , \rx/n36 , \rx/n35 , \rx/n34 , \rx/n33 , \rx/n32 , \rx/n31 ,
         \rx/n30 , \rx/n29 , \rx/n28 , \rx/n27 , \rx/n26 , \rx/n25 , \rx/n23 ,
         \rx/n21 , \rx/n20 , \rx/n19 , \rx/n18 , \rx/n17 , \rx/n16 , \rx/n15 ,
         \rx/n14 , \rx/n13 , \rx/n12 , \rx/n11 , \rx/n10 , \rx/n9 , \rx/N79 ,
         \rx/N78 , \rx/N77 , \dp1/d1/n3 , \dp1/d1/n1 , \dp1/d1/N11 ,
         \dp1/d1/N10 , \dp1/d1/N9 , \dp1/d1/N8 , \dp1/d1/N7 , \dp1/d1/N6 ,
         \dp1/d1/N4 , \dp1/d1/N3 , \dp2/d1/N11 , \dp2/d1/N10 , \dp2/d1/N9 ,
         \dp2/d1/N8 , \dp2/d1/N7 , \dp2/d1/N6 , \dp2/d1/N5 , \dp2/d1/N4 ,
         \dp2/d1/N3 , n13, n14, n15, n16, n17, n18, n19, n20, n21;
  wire   [7:0] rx_data;
  wire   [7:2] \tx/ttmpout ;
  wire   [3:0] \tx/next_tstate ;
  wire   [7:2] \rx/rtmpout ;
  wire   [3:0] \rx/next_rstate ;
  assign match = N0;

  NOR2X1 U1 ( .A(n1), .B(n2), .Y(N0) );
  NAND3X1 U2 ( .A(n3), .B(n4), .C(n5), .Y(n2) );
  NOR2X1 U3 ( .A(n6), .B(n7), .Y(n5) );
  XOR2X1 U4 ( .A(tx_data[6]), .B(rxrxout[6]), .Y(n7) );
  XOR2X1 U5 ( .A(tx_data[7]), .B(rxrxout[7]), .Y(n6) );
  XNOR2X1 U6 ( .A(tx_data[3]), .B(rxrxout[3]), .Y(n4) );
  XNOR2X1 U7 ( .A(tx_data[2]), .B(rxrxout[2]), .Y(n3) );
  NAND3X1 U8 ( .A(n8), .B(n9), .C(n10), .Y(n1) );
  NOR2X1 U9 ( .A(n11), .B(n12), .Y(n10) );
  XOR2X1 U10 ( .A(tx_data[5]), .B(rxrxout[5]), .Y(n12) );
  XOR2X1 U11 ( .A(tx_data[4]), .B(rxrxout[4]), .Y(n11) );
  XNOR2X1 U12 ( .A(tx_data[0]), .B(rxrxout[0]), .Y(n9) );
  XNOR2X1 U13 ( .A(tx_data[1]), .B(rxrxout[1]), .Y(n8) );
  OAI21X1 \tx/U142  ( .A(tstate[2]), .B(\tx/n46 ), .C(\tx/n32 ), .Y(\tx/n116 )
         );
  NOR2X1 \tx/U141  ( .A(tx_busy), .B(tstate[2]), .Y(\tx/n118 ) );
  NAND3X1 \tx/U140  ( .A(tstate[1]), .B(\tx/n33 ), .C(\tx/n118 ), .Y(\tx/n117 ) );
  OR2X1 \tx/U139  ( .A(tstate[3]), .B(reset), .Y(\tx/n112 ) );
  AOI21X1 \tx/U138  ( .A(\tx/n116 ), .B(\tx/n117 ), .C(\tx/n112 ), .Y(\tx/N77 ) );
  NAND3X1 \tx/U137  ( .A(tstate[0]), .B(\tx/n32 ), .C(tx_rdy), .Y(\tx/n115 )
         );
  OAI21X1 \tx/U136  ( .A(tstate[0]), .B(\tx/n32 ), .C(\tx/n115 ), .Y(\tx/n114 ) );
  NAND2X1 \tx/U135  ( .A(\tx/n114 ), .B(\tx/n31 ), .Y(\tx/n113 ) );
  NOR2X1 \tx/U134  ( .A(\tx/n112 ), .B(\tx/n113 ), .Y(\tx/N78 ) );
  NAND3X1 \tx/U133  ( .A(tstate[1]), .B(\tx/n31 ), .C(tstate[0]), .Y(\tx/n110 ) );
  NAND3X1 \tx/U132  ( .A(\tx/n33 ), .B(\tx/n32 ), .C(tstate[2]), .Y(\tx/n111 )
         );
  AOI21X1 \tx/U131  ( .A(\tx/n110 ), .B(\tx/n111 ), .C(\tx/n112 ), .Y(\tx/N79 ) );
  NAND3X1 \tx/U130  ( .A(\tx/n27 ), .B(\tx/n25 ), .C(\tx/next_tstate [1]), .Y(
        \tx/n83 ) );
  NAND3X1 \tx/U129  ( .A(\tx/n26 ), .B(\tx/n25 ), .C(\tx/n27 ), .Y(\tx/n97 )
         );
  NOR2X1 \tx/U126  ( .A(\tx/n83 ), .B(\tx/n21 ), .Y(\tx/n105 ) );
  OAI22X1 \tx/U125  ( .A(\tx/n39 ), .B(\tx/n107 ), .C(tcount[0]), .D(\tx/n18 ), 
        .Y(\tx/n144 ) );
  NOR2X1 \tx/U124  ( .A(\tx/n36 ), .B(tcount[1]), .Y(\tx/n81 ) );
  NAND2X1 \tx/U123  ( .A(\tx/n81 ), .B(tcount[0]), .Y(\tx/n86 ) );
  NOR2X1 \tx/U122  ( .A(\tx/n37 ), .B(\tx/n36 ), .Y(\tx/n104 ) );
  NOR2X1 \tx/U121  ( .A(tcount[3]), .B(\tx/n104 ), .Y(\tx/n109 ) );
  NAND3X1 \tx/U120  ( .A(\tx/n105 ), .B(\tx/n86 ), .C(\tx/n109 ), .Y(\tx/n108 ) );
  OAI21X1 \tx/U119  ( .A(\tx/n107 ), .B(\tx/n30 ), .C(\tx/n108 ), .Y(\tx/n143 ) );
  AOI21X1 \tx/U118  ( .A(\tx/n39 ), .B(\tx/n24 ), .C(\tx/n21 ), .Y(\tx/n99 )
         );
  OAI21X1 \tx/U117  ( .A(\tx/n83 ), .B(\tx/n104 ), .C(\tx/n99 ), .Y(\tx/n106 )
         );
  NAND2X1 \tx/U116  ( .A(\tx/n105 ), .B(tcount[0]), .Y(\tx/n102 ) );
  NAND3X1 \tx/U115  ( .A(\tx/n19 ), .B(\tx/n34 ), .C(\tx/n104 ), .Y(\tx/n103 )
         );
  OAI21X1 \tx/U114  ( .A(\tx/n20 ), .B(\tx/n34 ), .C(\tx/n103 ), .Y(\tx/n142 )
         );
  OAI22X1 \tx/U113  ( .A(\tx/n99 ), .B(\tx/n37 ), .C(tcount[1]), .D(\tx/n102 ), 
        .Y(\tx/n141 ) );
  NOR2X1 \tx/U112  ( .A(tcount[2]), .B(\tx/n37 ), .Y(\tx/n101 ) );
  AOI22X1 \tx/U111  ( .A(\tx/n101 ), .B(\tx/n19 ), .C(\tx/n24 ), .D(\tx/n81 ), 
        .Y(\tx/n100 ) );
  OAI21X1 \tx/U110  ( .A(\tx/n99 ), .B(\tx/n36 ), .C(\tx/n100 ), .Y(\tx/n140 )
         );
  NAND2X1 \tx/U109  ( .A(tx_idle), .B(\tx/n21 ), .Y(\tx/n98 ) );
  OAI21X1 \tx/U108  ( .A(\tx/n21 ), .B(\tx/n97 ), .C(\tx/n98 ), .Y(\tx/n139 )
         );
  NAND3X1 \tx/U106  ( .A(\tx/next_tstate [1]), .B(\tx/next_tstate [0]), .C(
        \tx/n25 ), .Y(\tx/n92 ) );
  OAI21X1 \tx/U105  ( .A(\tx/n95 ), .B(\tx/n29 ), .C(\tx/n92 ), .Y(\tx/n138 )
         );
  NAND3X1 \tx/U104  ( .A(\tx/next_tstate [0]), .B(\tx/n26 ), .C(
        \tx/next_tstate [2]), .Y(\tx/n57 ) );
  NOR2X1 \tx/U103  ( .A(\tx/n23 ), .B(\tx/n25 ), .Y(\tx/n94 ) );
  NAND3X1 \tx/U102  ( .A(\tx/n27 ), .B(\tx/n26 ), .C(\tx/next_tstate [2]), .Y(
        \tx/n59 ) );
  OAI22X1 \tx/U99  ( .A(\tx/n16 ), .B(\tx/n27 ), .C(\tx/n93 ), .D(\tx/n33 ), 
        .Y(\tx/n137 ) );
  OAI22X1 \tx/U98  ( .A(\tx/n16 ), .B(\tx/n26 ), .C(\tx/n93 ), .D(\tx/n32 ), 
        .Y(\tx/n136 ) );
  OAI22X1 \tx/U97  ( .A(\tx/n16 ), .B(\tx/n25 ), .C(\tx/n93 ), .D(\tx/n31 ), 
        .Y(\tx/n135 ) );
  NAND2X1 \tx/U96  ( .A(\tx/n21 ), .B(\tx/n92 ), .Y(\tx/n82 ) );
  AOI22X1 \tx/U95  ( .A(tx_data[3]), .B(tcount[0]), .C(\tx/n39 ), .D(
        tx_data[2]), .Y(\tx/n90 ) );
  AOI22X1 \tx/U94  ( .A(tx_data[5]), .B(tcount[0]), .C(\tx/n39 ), .D(
        tx_data[4]), .Y(\tx/n91 ) );
  OAI22X1 \tx/U93  ( .A(\tx/n90 ), .B(tcount[1]), .C(\tx/n37 ), .D(\tx/n91 ), 
        .Y(\tx/n88 ) );
  AOI22X1 \tx/U92  ( .A(tx_data[6]), .B(\tx/n39 ), .C(tx_data[7]), .D(
        tcount[0]), .Y(\tx/n89 ) );
  AOI22X1 \tx/U91  ( .A(\tx/n36 ), .B(\tx/n88 ), .C(\tx/n38 ), .D(\tx/n81 ), 
        .Y(\tx/n87 ) );
  OR2X1 \tx/U90  ( .A(\tx/n86 ), .B(tcount[3]), .Y(\tx/n85 ) );
  OAI21X1 \tx/U89  ( .A(\tx/n35 ), .B(\tx/n85 ), .C(\tx/n82 ), .Y(\tx/n84 ) );
  OAI22X1 \tx/U88  ( .A(\tx/n40 ), .B(\tx/n82 ), .C(\tx/n83 ), .D(\tx/n84 ), 
        .Y(\tx/n133 ) );
  NAND2X1 \tx/U86  ( .A(\tx/n81 ), .B(\tx/n39 ), .Y(\tx/n80 ) );
  OAI21X1 \tx/U85  ( .A(\tx/n78 ), .B(\tx/n80 ), .C(\tx/n97 ), .Y(\tx/n79 ) );
  NAND2X1 \tx/U84  ( .A(\tx/n24 ), .B(\tx/n35 ), .Y(\tx/n69 ) );
  OAI22X1 \tx/U83  ( .A(\tx/n41 ), .B(\tx/n79 ), .C(\tx/n10 ), .D(\tx/n69 ), 
        .Y(\tx/n132 ) );
  OR2X1 \tx/U82  ( .A(\tx/n78 ), .B(tcount[2]), .Y(\tx/n70 ) );
  NAND2X1 \tx/U81  ( .A(tcount[1]), .B(tcount[0]), .Y(\tx/n77 ) );
  OAI21X1 \tx/U80  ( .A(\tx/n70 ), .B(\tx/n77 ), .C(\tx/n97 ), .Y(\tx/n76 ) );
  OAI22X1 \tx/U79  ( .A(\tx/n42 ), .B(\tx/n76 ), .C(\tx/n11 ), .D(\tx/n69 ), 
        .Y(\tx/n131 ) );
  NAND2X1 \tx/U78  ( .A(tcount[1]), .B(\tx/n39 ), .Y(\tx/n75 ) );
  OAI21X1 \tx/U77  ( .A(\tx/n70 ), .B(\tx/n75 ), .C(\tx/n97 ), .Y(\tx/n74 ) );
  OAI22X1 \tx/U76  ( .A(\tx/n43 ), .B(\tx/n74 ), .C(\tx/n12 ), .D(\tx/n69 ), 
        .Y(\tx/n130 ) );
  NAND2X1 \tx/U75  ( .A(tcount[0]), .B(\tx/n37 ), .Y(\tx/n73 ) );
  OAI21X1 \tx/U74  ( .A(\tx/n70 ), .B(\tx/n73 ), .C(\tx/n97 ), .Y(\tx/n72 ) );
  OAI22X1 \tx/U73  ( .A(\tx/n44 ), .B(\tx/n72 ), .C(\tx/n13 ), .D(\tx/n69 ), 
        .Y(\tx/n129 ) );
  NAND2X1 \tx/U72  ( .A(\tx/n39 ), .B(\tx/n37 ), .Y(\tx/n71 ) );
  OAI21X1 \tx/U71  ( .A(\tx/n70 ), .B(\tx/n71 ), .C(\tx/n97 ), .Y(\tx/n68 ) );
  OAI22X1 \tx/U70  ( .A(\tx/n45 ), .B(\tx/n68 ), .C(\tx/n14 ), .D(\tx/n69 ), 
        .Y(\tx/n128 ) );
  XOR2X1 \tx/U69  ( .A(\tx/n41 ), .B(tx_data[6]), .Y(\tx/n65 ) );
  XOR2X1 \tx/U68  ( .A(\tx/n42 ), .B(tx_data[5]), .Y(\tx/n66 ) );
  XOR2X1 \tx/U67  ( .A(\tx/n43 ), .B(tx_data[4]), .Y(\tx/n67 ) );
  NAND3X1 \tx/U66  ( .A(\tx/n65 ), .B(\tx/n66 ), .C(\tx/n67 ), .Y(\tx/n61 ) );
  XOR2X1 \tx/U65  ( .A(\tx/n44 ), .B(tx_data[3]), .Y(\tx/n63 ) );
  XOR2X1 \tx/U64  ( .A(\tx/n45 ), .B(tx_data[2]), .Y(\tx/n64 ) );
  NAND2X1 \tx/U63  ( .A(\tx/n63 ), .B(\tx/n64 ), .Y(\tx/n62 ) );
  OAI21X1 \tx/U62  ( .A(\tx/n61 ), .B(\tx/n62 ), .C(\tx/n58 ), .Y(\tx/n60 ) );
  OAI22X1 \tx/U61  ( .A(\tx/n28 ), .B(\tx/n58 ), .C(\tx/n59 ), .D(\tx/n60 ), 
        .Y(\tx/n127 ) );
  NAND2X1 \tx/U59  ( .A(\tx/n23 ), .B(\tx/n56 ), .Y(\tx/n47 ) );
  NAND2X1 \tx/U58  ( .A(tx_out[0]), .B(\tx/n9 ), .Y(\tx/n55 ) );
  OAI21X1 \tx/U57  ( .A(\tx/n47 ), .B(\tx/n28 ), .C(\tx/n55 ), .Y(\tx/n126 )
         );
  NAND2X1 \tx/U56  ( .A(tx_out[1]), .B(\tx/n9 ), .Y(\tx/n54 ) );
  OAI21X1 \tx/U55  ( .A(\tx/n47 ), .B(\tx/n29 ), .C(\tx/n54 ), .Y(\tx/n125 )
         );
  NAND2X1 \tx/U54  ( .A(tx_out[2]), .B(\tx/n9 ), .Y(\tx/n53 ) );
  OAI21X1 \tx/U53  ( .A(\tx/n47 ), .B(\tx/n45 ), .C(\tx/n53 ), .Y(\tx/n124 )
         );
  NAND2X1 \tx/U52  ( .A(tx_out[3]), .B(\tx/n9 ), .Y(\tx/n52 ) );
  OAI21X1 \tx/U51  ( .A(\tx/n47 ), .B(\tx/n44 ), .C(\tx/n52 ), .Y(\tx/n123 )
         );
  NAND2X1 \tx/U50  ( .A(tx_out[4]), .B(\tx/n9 ), .Y(\tx/n51 ) );
  OAI21X1 \tx/U49  ( .A(\tx/n47 ), .B(\tx/n43 ), .C(\tx/n51 ), .Y(\tx/n122 )
         );
  NAND2X1 \tx/U48  ( .A(tx_out[5]), .B(\tx/n9 ), .Y(\tx/n50 ) );
  OAI21X1 \tx/U47  ( .A(\tx/n47 ), .B(\tx/n42 ), .C(\tx/n50 ), .Y(\tx/n121 )
         );
  NAND2X1 \tx/U46  ( .A(tx_out[6]), .B(\tx/n9 ), .Y(\tx/n49 ) );
  OAI21X1 \tx/U45  ( .A(\tx/n47 ), .B(\tx/n41 ), .C(\tx/n49 ), .Y(\tx/n120 )
         );
  NAND2X1 \tx/U44  ( .A(tx_out[7]), .B(\tx/n9 ), .Y(\tx/n48 ) );
  OAI21X1 \tx/U43  ( .A(\tx/n47 ), .B(\tx/n40 ), .C(\tx/n48 ), .Y(\tx/n119 )
         );
  INVX2 \tx/U42  ( .A(tx_rdy), .Y(\tx/n46 ) );
  INVX2 \tx/U41  ( .A(\tx/ttmpout [2]), .Y(\tx/n45 ) );
  INVX2 \tx/U40  ( .A(\tx/ttmpout [3]), .Y(\tx/n44 ) );
  INVX2 \tx/U39  ( .A(\tx/ttmpout [4]), .Y(\tx/n43 ) );
  INVX2 \tx/U38  ( .A(\tx/ttmpout [5]), .Y(\tx/n42 ) );
  INVX2 \tx/U37  ( .A(\tx/ttmpout [6]), .Y(\tx/n41 ) );
  INVX2 \tx/U36  ( .A(\tx/ttmpout [7]), .Y(\tx/n40 ) );
  INVX2 \tx/U35  ( .A(tcount[0]), .Y(\tx/n39 ) );
  INVX2 \tx/U34  ( .A(\tx/n89 ), .Y(\tx/n38 ) );
  INVX2 \tx/U33  ( .A(tcount[1]), .Y(\tx/n37 ) );
  INVX2 \tx/U32  ( .A(tcount[2]), .Y(\tx/n36 ) );
  INVX2 \tx/U31  ( .A(\tx/n87 ), .Y(\tx/n35 ) );
  INVX2 \tx/U30  ( .A(tcount[3]), .Y(\tx/n34 ) );
  INVX2 \tx/U29  ( .A(tstate[0]), .Y(\tx/n33 ) );
  INVX2 \tx/U28  ( .A(tstate[1]), .Y(\tx/n32 ) );
  INVX2 \tx/U27  ( .A(tstate[2]), .Y(\tx/n31 ) );
  INVX2 \tx/U26  ( .A(tx_busy), .Y(\tx/n30 ) );
  INVX2 \tx/U25  ( .A(tx_done), .Y(\tx/n29 ) );
  INVX2 \tx/U24  ( .A(tx_error), .Y(\tx/n28 ) );
  INVX2 \tx/U23  ( .A(\tx/next_tstate [0]), .Y(\tx/n27 ) );
  INVX2 \tx/U22  ( .A(\tx/next_tstate [1]), .Y(\tx/n26 ) );
  INVX2 \tx/U21  ( .A(\tx/next_tstate [2]), .Y(\tx/n25 ) );
  INVX2 \tx/U20  ( .A(\tx/n83 ), .Y(\tx/n24 ) );
  INVX2 \tx/U19  ( .A(\tx/n57 ), .Y(\tx/n23 ) );
  INVX2 \tx/U17  ( .A(\tx/n107 ), .Y(\tx/n21 ) );
  INVX2 \tx/U16  ( .A(\tx/n106 ), .Y(\tx/n20 ) );
  INVX2 \tx/U15  ( .A(\tx/n102 ), .Y(\tx/n19 ) );
  INVX2 \tx/U14  ( .A(\tx/n105 ), .Y(\tx/n18 ) );
  INVX2 \tx/U13  ( .A(\tx/n58 ), .Y(\tx/n17 ) );
  INVX2 \tx/U12  ( .A(\tx/n93 ), .Y(\tx/n16 ) );
  INVX2 \tx/U11  ( .A(\tx/n68 ), .Y(\tx/n14 ) );
  INVX2 \tx/U10  ( .A(\tx/n72 ), .Y(\tx/n13 ) );
  INVX2 \tx/U9  ( .A(\tx/n74 ), .Y(\tx/n12 ) );
  INVX2 \tx/U8  ( .A(\tx/n76 ), .Y(\tx/n11 ) );
  INVX2 \tx/U7  ( .A(\tx/n79 ), .Y(\tx/n10 ) );
  INVX2 \tx/U6  ( .A(\tx/n56 ), .Y(\tx/n9 ) );
  AND2X2 \tx/U5  ( .A(\tx/n16 ), .B(tstate[3]), .Y(\tx/n134 ) );
  DFFNEGX1 \tx/tx_out_reg[2]  ( .D(\tx/n124 ), .CLK(clkb), .Q(tx_out[2]) );
  DFFNEGX1 \tx/tx_out_reg[0]  ( .D(\tx/n126 ), .CLK(clkb), .Q(tx_out[0]) );
  DFFNEGX1 \tx/tx_error_reg  ( .D(\tx/n127 ), .CLK(clkb), .Q(tx_error) );
  DFFNEGX1 \tx/ttmpout_reg[2]  ( .D(\tx/n128 ), .CLK(clkb), .Q(\tx/ttmpout [2]) );
  DFFNEGX1 \tx/tx_out_reg[3]  ( .D(\tx/n123 ), .CLK(clkb), .Q(tx_out[3]) );
  DFFNEGX1 \tx/ttmpout_reg[3]  ( .D(\tx/n129 ), .CLK(clkb), .Q(\tx/ttmpout [3]) );
  DFFNEGX1 \tx/tx_out_reg[4]  ( .D(\tx/n122 ), .CLK(clkb), .Q(tx_out[4]) );
  DFFNEGX1 \tx/ttmpout_reg[4]  ( .D(\tx/n130 ), .CLK(n13), .Q(\tx/ttmpout [4])
         );
  DFFNEGX1 \tx/tx_out_reg[5]  ( .D(\tx/n121 ), .CLK(n14), .Q(tx_out[5]) );
  DFFNEGX1 \tx/ttmpout_reg[5]  ( .D(\tx/n131 ), .CLK(n15), .Q(\tx/ttmpout [5])
         );
  DFFNEGX1 \tx/tx_out_reg[6]  ( .D(\tx/n120 ), .CLK(n13), .Q(tx_out[6]) );
  DFFNEGX1 \tx/ttmpout_reg[6]  ( .D(\tx/n132 ), .CLK(n14), .Q(\tx/ttmpout [6])
         );
  DFFNEGX1 \tx/tx_out_reg[7]  ( .D(\tx/n119 ), .CLK(n15), .Q(tx_out[7]) );
  DFFNEGX1 \tx/ttmpout_reg[7]  ( .D(\tx/n133 ), .CLK(n15), .Q(\tx/ttmpout [7])
         );
  DFFNEGX1 \tx/tstate_reg[1]  ( .D(\tx/n136 ), .CLK(n15), .Q(tstate[1]) );
  DFFNEGX1 \tx/tstate_reg[3]  ( .D(\tx/n134 ), .CLK(n15), .Q(tstate[3]) );
  DFFNEGX1 \tx/tx_out_reg[1]  ( .D(\tx/n125 ), .CLK(n15), .Q(tx_out[1]) );
  DFFNEGX1 \tx/tx_idle_reg  ( .D(\tx/n139 ), .CLK(n15), .Q(tx_idle) );
  DFFNEGX1 \tx/tcount_reg[2]  ( .D(\tx/n140 ), .CLK(n15), .Q(tcount[2]) );
  DFFNEGX1 \tx/tcount_reg[1]  ( .D(\tx/n141 ), .CLK(n15), .Q(tcount[1]) );
  DFFNEGX1 \tx/tx_done_reg  ( .D(\tx/n138 ), .CLK(n15), .Q(tx_done) );
  DFFNEGX1 \tx/next_tstate_reg[1]  ( .D(\tx/N78 ), .CLK(clka), .Q(
        \tx/next_tstate [1]) );
  DFFNEGX1 \tx/tstate_reg[2]  ( .D(\tx/n135 ), .CLK(n15), .Q(tstate[2]) );
  DFFNEGX1 \tx/next_tstate_reg[2]  ( .D(\tx/N79 ), .CLK(clka), .Q(
        \tx/next_tstate [2]) );
  DFFNEGX1 \tx/tstate_reg[0]  ( .D(\tx/n137 ), .CLK(n15), .Q(tstate[0]) );
  DFFNEGX1 \tx/next_tstate_reg[0]  ( .D(\tx/N77 ), .CLK(clka), .Q(
        \tx/next_tstate [0]) );
  DFFNEGX1 \tx/tx_busy_reg  ( .D(\tx/n143 ), .CLK(n15), .Q(tx_busy) );
  DFFNEGX1 \tx/tcount_reg[3]  ( .D(\tx/n142 ), .CLK(n15), .Q(tcount[3]) );
  DFFNEGX1 \tx/tcount_reg[0]  ( .D(\tx/n144 ), .CLK(n15), .Q(tcount[0]) );
  OAI21X1 \rx/U150  ( .A(rstate[2]), .B(\rx/n52 ), .C(\rx/n49 ), .Y(\rx/n124 )
         );
  NOR2X1 \rx/U149  ( .A(rx_busy), .B(rstate[2]), .Y(\rx/n126 ) );
  NAND3X1 \rx/U148  ( .A(rstate[1]), .B(\rx/n50 ), .C(\rx/n126 ), .Y(\rx/n125 ) );
  OR2X1 \rx/U147  ( .A(rstate[3]), .B(reset), .Y(\rx/n120 ) );
  AOI21X1 \rx/U146  ( .A(\rx/n124 ), .B(\rx/n125 ), .C(\rx/n120 ), .Y(\rx/N77 ) );
  NAND3X1 \rx/U145  ( .A(rstate[0]), .B(\rx/n49 ), .C(rx_rdy), .Y(\rx/n123 )
         );
  OAI21X1 \rx/U144  ( .A(rstate[0]), .B(\rx/n49 ), .C(\rx/n123 ), .Y(\rx/n122 ) );
  NAND2X1 \rx/U143  ( .A(\rx/n122 ), .B(\rx/n48 ), .Y(\rx/n121 ) );
  NOR2X1 \rx/U142  ( .A(\rx/n120 ), .B(\rx/n121 ), .Y(\rx/N78 ) );
  NAND3X1 \rx/U141  ( .A(rstate[1]), .B(\rx/n48 ), .C(rstate[0]), .Y(\rx/n118 ) );
  NAND3X1 \rx/U140  ( .A(\rx/n50 ), .B(\rx/n49 ), .C(rstate[2]), .Y(\rx/n119 )
         );
  AOI21X1 \rx/U139  ( .A(\rx/n118 ), .B(\rx/n119 ), .C(\rx/n120 ), .Y(\rx/N79 ) );
  NAND3X1 \rx/U138  ( .A(\rx/next_rstate [0]), .B(\rx/n30 ), .C(
        \rx/next_rstate [2]), .Y(\rx/n63 ) );
  NOR2X1 \rx/U137  ( .A(\rx/n29 ), .B(\rx/n28 ), .Y(\rx/n117 ) );
  NAND3X1 \rx/U136  ( .A(\rx/n31 ), .B(\rx/n30 ), .C(\rx/next_rstate [2]), .Y(
        \rx/n77 ) );
  NAND3X1 \rx/U135  ( .A(\rx/n30 ), .B(\rx/n28 ), .C(\rx/n31 ), .Y(\rx/n110 )
         );
  OAI22X1 \rx/U131  ( .A(\rx/n15 ), .B(\rx/n31 ), .C(\rx/n66 ), .D(\rx/n50 ), 
        .Y(\rx/n152 ) );
  NAND3X1 \rx/U130  ( .A(\rx/n31 ), .B(\rx/n28 ), .C(\rx/next_rstate [1]), .Y(
        \rx/n79 ) );
  NAND2X1 \rx/U129  ( .A(rcount[2]), .B(rcount[1]), .Y(\rx/n84 ) );
  OAI21X1 \rx/U127  ( .A(rcount[0]), .B(\rx/n79 ), .C(\rx/n106 ), .Y(\rx/n114 ) );
  AOI21X1 \rx/U126  ( .A(\rx/n27 ), .B(\rx/n84 ), .C(\rx/n114 ), .Y(\rx/n115 )
         );
  NOR2X1 \rx/U125  ( .A(\rx/n79 ), .B(\rx/n14 ), .Y(\rx/n108 ) );
  NAND2X1 \rx/U124  ( .A(\rx/n108 ), .B(rcount[0]), .Y(\rx/n113 ) );
  NAND3X1 \rx/U123  ( .A(\rx/n35 ), .B(\rx/n32 ), .C(\rx/n11 ), .Y(\rx/n116 )
         );
  OAI21X1 \rx/U122  ( .A(\rx/n115 ), .B(\rx/n32 ), .C(\rx/n116 ), .Y(\rx/n151 ) );
  OAI22X1 \rx/U121  ( .A(\rx/n106 ), .B(\rx/n38 ), .C(rcount[0]), .D(\rx/n13 ), 
        .Y(\rx/n150 ) );
  OAI22X1 \rx/U120  ( .A(\rx/n10 ), .B(\rx/n36 ), .C(rcount[1]), .D(\rx/n113 ), 
        .Y(\rx/n149 ) );
  NAND2X1 \rx/U119  ( .A(rcount[1]), .B(\rx/n34 ), .Y(\rx/n93 ) );
  NAND2X1 \rx/U118  ( .A(rcount[2]), .B(\rx/n36 ), .Y(\rx/n102 ) );
  OAI22X1 \rx/U117  ( .A(\rx/n113 ), .B(\rx/n93 ), .C(\rx/n102 ), .D(\rx/n79 ), 
        .Y(\rx/n112 ) );
  OAI21X1 \rx/U116  ( .A(\rx/n10 ), .B(\rx/n34 ), .C(\rx/n12 ), .Y(\rx/n148 )
         );
  NAND2X1 \rx/U115  ( .A(rx_idle), .B(\rx/n14 ), .Y(\rx/n111 ) );
  OAI21X1 \rx/U114  ( .A(\rx/n14 ), .B(\rx/n110 ), .C(\rx/n111 ), .Y(\rx/n147 ) );
  NAND2X1 \rx/U113  ( .A(rcount[0]), .B(\rx/n33 ), .Y(\rx/n88 ) );
  NOR2X1 \rx/U112  ( .A(rcount[3]), .B(\rx/n35 ), .Y(\rx/n109 ) );
  NAND3X1 \rx/U111  ( .A(\rx/n108 ), .B(\rx/n88 ), .C(\rx/n109 ), .Y(\rx/n107 ) );
  OAI21X1 \rx/U110  ( .A(\rx/n106 ), .B(\rx/n46 ), .C(\rx/n107 ), .Y(\rx/n146 ) );
  NAND2X1 \rx/U109  ( .A(\rx/n36 ), .B(\rx/n34 ), .Y(\rx/n105 ) );
  NAND2X1 \rx/U107  ( .A(\rx/n23 ), .B(rcount[0]), .Y(\rx/n94 ) );
  OAI21X1 \rx/U106  ( .A(\rx/n105 ), .B(\rx/n94 ), .C(\rx/n110 ), .Y(\rx/n97 )
         );
  AOI22X1 \rx/U105  ( .A(rx_data[4]), .B(rcount[0]), .C(\rx/n38 ), .D(
        rx_data[3]), .Y(\rx/n104 ) );
  AOI22X1 \rx/U104  ( .A(rx_data[2]), .B(\rx/n36 ), .C(rcount[1]), .D(\rx/n37 ), .Y(\rx/n98 ) );
  NAND2X1 \rx/U103  ( .A(rx_data[7]), .B(\rx/n35 ), .Y(\rx/n103 ) );
  OAI21X1 \rx/U102  ( .A(\rx/n51 ), .B(\rx/n102 ), .C(\rx/n103 ), .Y(\rx/n101 ) );
  AOI22X1 \rx/U101  ( .A(\rx/n100 ), .B(rcount[0]), .C(\rx/n101 ), .D(\rx/n38 ), .Y(\rx/n99 ) );
  OAI21X1 \rx/U100  ( .A(rcount[2]), .B(\rx/n98 ), .C(\rx/n99 ), .Y(\rx/n83 )
         );
  NAND2X1 \rx/U99  ( .A(\rx/n27 ), .B(\rx/n83 ), .Y(\rx/n86 ) );
  OAI22X1 \rx/U98  ( .A(\rx/n17 ), .B(\rx/n86 ), .C(\rx/n44 ), .D(\rx/n97 ), 
        .Y(\rx/n145 ) );
  NAND2X1 \rx/U97  ( .A(\rx/n23 ), .B(\rx/n38 ), .Y(\rx/n96 ) );
  OAI21X1 \rx/U96  ( .A(\rx/n93 ), .B(\rx/n96 ), .C(\rx/n110 ), .Y(\rx/n95 )
         );
  OAI22X1 \rx/U95  ( .A(\rx/n18 ), .B(\rx/n86 ), .C(\rx/n43 ), .D(\rx/n95 ), 
        .Y(\rx/n144 ) );
  OAI21X1 \rx/U94  ( .A(\rx/n93 ), .B(\rx/n94 ), .C(\rx/n110 ), .Y(\rx/n92 )
         );
  OAI22X1 \rx/U93  ( .A(\rx/n19 ), .B(\rx/n86 ), .C(\rx/n42 ), .D(\rx/n92 ), 
        .Y(\rx/n143 ) );
  NAND2X1 \rx/U92  ( .A(\rx/n33 ), .B(\rx/n38 ), .Y(\rx/n91 ) );
  OAI21X1 \rx/U91  ( .A(\rx/n89 ), .B(\rx/n91 ), .C(\rx/n110 ), .Y(\rx/n90 )
         );
  OAI22X1 \rx/U90  ( .A(\rx/n20 ), .B(\rx/n86 ), .C(\rx/n41 ), .D(\rx/n90 ), 
        .Y(\rx/n142 ) );
  OAI21X1 \rx/U89  ( .A(\rx/n88 ), .B(\rx/n89 ), .C(\rx/n110 ), .Y(\rx/n87 )
         );
  OAI22X1 \rx/U88  ( .A(\rx/n21 ), .B(\rx/n86 ), .C(\rx/n40 ), .D(\rx/n87 ), 
        .Y(\rx/n141 ) );
  NAND3X1 \rx/U86  ( .A(\rx/next_rstate [1]), .B(\rx/next_rstate [0]), .C(
        \rx/n28 ), .Y(\rx/n65 ) );
  NAND2X1 \rx/U85  ( .A(\rx/n14 ), .B(\rx/n65 ), .Y(\rx/n78 ) );
  NAND2X1 \rx/U84  ( .A(\rx/n38 ), .B(\rx/n32 ), .Y(\rx/n81 ) );
  OR2X1 \rx/U83  ( .A(\rx/n83 ), .B(\rx/n84 ), .Y(\rx/n82 ) );
  OAI21X1 \rx/U82  ( .A(\rx/n81 ), .B(\rx/n82 ), .C(\rx/n78 ), .Y(\rx/n80 ) );
  OAI22X1 \rx/U81  ( .A(\rx/n39 ), .B(\rx/n78 ), .C(\rx/n79 ), .D(\rx/n80 ), 
        .Y(\rx/n140 ) );
  XOR2X1 \rx/U80  ( .A(rx_data[5]), .B(\rx/rtmpout [5]), .Y(\rx/n75 ) );
  XOR2X1 \rx/U79  ( .A(rx_data[6]), .B(\rx/rtmpout [6]), .Y(\rx/n76 ) );
  NOR2X1 \rx/U78  ( .A(\rx/n75 ), .B(\rx/n76 ), .Y(\rx/n70 ) );
  XOR2X1 \rx/U77  ( .A(\rx/n42 ), .B(rx_data[4]), .Y(\rx/n71 ) );
  XOR2X1 \rx/U76  ( .A(rx_data[2]), .B(\rx/rtmpout [2]), .Y(\rx/n73 ) );
  XOR2X1 \rx/U75  ( .A(rx_data[3]), .B(\rx/rtmpout [3]), .Y(\rx/n74 ) );
  NOR2X1 \rx/U74  ( .A(\rx/n73 ), .B(\rx/n74 ), .Y(\rx/n72 ) );
  NAND3X1 \rx/U73  ( .A(\rx/n70 ), .B(\rx/n71 ), .C(\rx/n72 ), .Y(\rx/n69 ) );
  AOI22X1 \rx/U72  ( .A(\rx/n25 ), .B(\rx/n69 ), .C(rx_data[0]), .D(\rx/n26 ), 
        .Y(\rx/n68 ) );
  OAI22X1 \rx/U71  ( .A(\rx/n45 ), .B(\rx/n67 ), .C(\rx/n16 ), .D(\rx/n68 ), 
        .Y(\rx/n139 ) );
  OAI22X1 \rx/U70  ( .A(\rx/n15 ), .B(\rx/n30 ), .C(\rx/n66 ), .D(\rx/n49 ), 
        .Y(\rx/n138 ) );
  OAI22X1 \rx/U69  ( .A(\rx/n15 ), .B(\rx/n28 ), .C(\rx/n66 ), .D(\rx/n48 ), 
        .Y(\rx/n137 ) );
  OAI21X1 \rx/U68  ( .A(\rx/n26 ), .B(\rx/n47 ), .C(\rx/n65 ), .Y(\rx/n135 )
         );
  NAND2X1 \rx/U66  ( .A(\rx/n29 ), .B(\rx/n62 ), .Y(\rx/n53 ) );
  NAND2X1 \rx/U65  ( .A(rx_out[0]), .B(\rx/n9 ), .Y(\rx/n61 ) );
  OAI21X1 \rx/U64  ( .A(\rx/n53 ), .B(\rx/n45 ), .C(\rx/n61 ), .Y(\rx/n134 )
         );
  NAND2X1 \rx/U63  ( .A(rx_out[1]), .B(\rx/n9 ), .Y(\rx/n60 ) );
  OAI21X1 \rx/U62  ( .A(\rx/n53 ), .B(\rx/n47 ), .C(\rx/n60 ), .Y(\rx/n133 )
         );
  NAND2X1 \rx/U61  ( .A(rx_out[2]), .B(\rx/n9 ), .Y(\rx/n59 ) );
  OAI21X1 \rx/U60  ( .A(\rx/n53 ), .B(\rx/n44 ), .C(\rx/n59 ), .Y(\rx/n132 )
         );
  NAND2X1 \rx/U59  ( .A(rx_out[3]), .B(\rx/n9 ), .Y(\rx/n58 ) );
  OAI21X1 \rx/U58  ( .A(\rx/n53 ), .B(\rx/n43 ), .C(\rx/n58 ), .Y(\rx/n131 )
         );
  NAND2X1 \rx/U57  ( .A(rx_out[4]), .B(\rx/n9 ), .Y(\rx/n57 ) );
  OAI21X1 \rx/U56  ( .A(\rx/n53 ), .B(\rx/n42 ), .C(\rx/n57 ), .Y(\rx/n130 )
         );
  NAND2X1 \rx/U55  ( .A(rx_out[5]), .B(\rx/n9 ), .Y(\rx/n56 ) );
  OAI21X1 \rx/U54  ( .A(\rx/n53 ), .B(\rx/n41 ), .C(\rx/n56 ), .Y(\rx/n129 )
         );
  NAND2X1 \rx/U53  ( .A(rx_out[6]), .B(\rx/n9 ), .Y(\rx/n55 ) );
  OAI21X1 \rx/U52  ( .A(\rx/n53 ), .B(\rx/n40 ), .C(\rx/n55 ), .Y(\rx/n128 )
         );
  NAND2X1 \rx/U51  ( .A(rx_out[7]), .B(\rx/n9 ), .Y(\rx/n54 ) );
  OAI21X1 \rx/U50  ( .A(\rx/n53 ), .B(\rx/n39 ), .C(\rx/n54 ), .Y(\rx/n127 )
         );
  INVX2 \rx/U49  ( .A(rx_rdy), .Y(\rx/n52 ) );
  INVX2 \rx/U48  ( .A(rx_data[5]), .Y(\rx/n51 ) );
  INVX2 \rx/U47  ( .A(rstate[0]), .Y(\rx/n50 ) );
  INVX2 \rx/U46  ( .A(rstate[1]), .Y(\rx/n49 ) );
  INVX2 \rx/U45  ( .A(rstate[2]), .Y(\rx/n48 ) );
  INVX2 \rx/U44  ( .A(rx_done), .Y(\rx/n47 ) );
  INVX2 \rx/U43  ( .A(rx_busy), .Y(\rx/n46 ) );
  INVX2 \rx/U42  ( .A(rx_error), .Y(\rx/n45 ) );
  INVX2 \rx/U41  ( .A(\rx/rtmpout [2]), .Y(\rx/n44 ) );
  INVX2 \rx/U40  ( .A(\rx/rtmpout [3]), .Y(\rx/n43 ) );
  INVX2 \rx/U39  ( .A(\rx/rtmpout [4]), .Y(\rx/n42 ) );
  INVX2 \rx/U38  ( .A(\rx/rtmpout [5]), .Y(\rx/n41 ) );
  INVX2 \rx/U37  ( .A(\rx/rtmpout [6]), .Y(\rx/n40 ) );
  INVX2 \rx/U36  ( .A(\rx/rtmpout [7]), .Y(\rx/n39 ) );
  INVX2 \rx/U35  ( .A(rcount[0]), .Y(\rx/n38 ) );
  INVX2 \rx/U34  ( .A(\rx/n104 ), .Y(\rx/n37 ) );
  INVX2 \rx/U33  ( .A(rcount[1]), .Y(\rx/n36 ) );
  INVX2 \rx/U32  ( .A(\rx/n84 ), .Y(\rx/n35 ) );
  INVX2 \rx/U31  ( .A(rcount[2]), .Y(\rx/n34 ) );
  INVX2 \rx/U30  ( .A(\rx/n102 ), .Y(\rx/n33 ) );
  INVX2 \rx/U29  ( .A(rcount[3]), .Y(\rx/n32 ) );
  INVX2 \rx/U28  ( .A(\rx/next_rstate [0]), .Y(\rx/n31 ) );
  INVX2 \rx/U27  ( .A(\rx/next_rstate [1]), .Y(\rx/n30 ) );
  INVX2 \rx/U26  ( .A(\rx/n63 ), .Y(\rx/n29 ) );
  INVX2 \rx/U25  ( .A(\rx/next_rstate [2]), .Y(\rx/n28 ) );
  INVX2 \rx/U24  ( .A(\rx/n79 ), .Y(\rx/n27 ) );
  INVX2 \rx/U23  ( .A(\rx/n110 ), .Y(\rx/n26 ) );
  INVX2 \rx/U22  ( .A(\rx/n77 ), .Y(\rx/n25 ) );
  INVX2 \rx/U21  ( .A(\rx/n89 ), .Y(\rx/n23 ) );
  INVX2 \rx/U19  ( .A(\rx/n87 ), .Y(\rx/n21 ) );
  INVX2 \rx/U18  ( .A(\rx/n90 ), .Y(\rx/n20 ) );
  INVX2 \rx/U17  ( .A(\rx/n92 ), .Y(\rx/n19 ) );
  INVX2 \rx/U16  ( .A(\rx/n95 ), .Y(\rx/n18 ) );
  INVX2 \rx/U15  ( .A(\rx/n97 ), .Y(\rx/n17 ) );
  INVX2 \rx/U14  ( .A(\rx/n67 ), .Y(\rx/n16 ) );
  INVX2 \rx/U13  ( .A(\rx/n66 ), .Y(\rx/n15 ) );
  INVX2 \rx/U12  ( .A(\rx/n106 ), .Y(\rx/n14 ) );
  INVX2 \rx/U11  ( .A(\rx/n108 ), .Y(\rx/n13 ) );
  INVX2 \rx/U10  ( .A(\rx/n112 ), .Y(\rx/n12 ) );
  INVX2 \rx/U9  ( .A(\rx/n113 ), .Y(\rx/n11 ) );
  INVX2 \rx/U8  ( .A(\rx/n114 ), .Y(\rx/n10 ) );
  INVX2 \rx/U7  ( .A(\rx/n62 ), .Y(\rx/n9 ) );
  AND2X2 \rx/U6  ( .A(rx_data[6]), .B(\rx/n33 ), .Y(\rx/n100 ) );
  AND2X2 \rx/U5  ( .A(\rx/n15 ), .B(rstate[3]), .Y(\rx/n136 ) );
  DFFNEGX1 \rx/rx_out_reg[2]  ( .D(\rx/n132 ), .CLK(n14), .Q(rx_out[2]) );
  DFFNEGX1 \rx/rx_out_reg[0]  ( .D(\rx/n134 ), .CLK(n14), .Q(rx_out[0]) );
  DFFNEGX1 \rx/rx_error_reg  ( .D(\rx/n139 ), .CLK(n14), .Q(rx_error) );
  DFFNEGX1 \rx/rtmpout_reg[2]  ( .D(\rx/n145 ), .CLK(n14), .Q(\rx/rtmpout [2])
         );
  DFFNEGX1 \rx/rx_out_reg[3]  ( .D(\rx/n131 ), .CLK(n14), .Q(rx_out[3]) );
  DFFNEGX1 \rx/rtmpout_reg[3]  ( .D(\rx/n144 ), .CLK(n14), .Q(\rx/rtmpout [3])
         );
  DFFNEGX1 \rx/rx_out_reg[4]  ( .D(\rx/n130 ), .CLK(n14), .Q(rx_out[4]) );
  DFFNEGX1 \rx/rtmpout_reg[4]  ( .D(\rx/n143 ), .CLK(n14), .Q(\rx/rtmpout [4])
         );
  DFFNEGX1 \rx/rx_out_reg[5]  ( .D(\rx/n129 ), .CLK(n14), .Q(rx_out[5]) );
  DFFNEGX1 \rx/rtmpout_reg[5]  ( .D(\rx/n142 ), .CLK(n14), .Q(\rx/rtmpout [5])
         );
  DFFNEGX1 \rx/rx_out_reg[6]  ( .D(\rx/n128 ), .CLK(n14), .Q(rx_out[6]) );
  DFFNEGX1 \rx/rtmpout_reg[6]  ( .D(\rx/n141 ), .CLK(n14), .Q(\rx/rtmpout [6])
         );
  DFFNEGX1 \rx/rx_out_reg[7]  ( .D(\rx/n127 ), .CLK(n14), .Q(rx_out[7]) );
  DFFNEGX1 \rx/rtmpout_reg[7]  ( .D(\rx/n140 ), .CLK(n13), .Q(\rx/rtmpout [7])
         );
  DFFNEGX1 \rx/rx_busy_reg  ( .D(\rx/n146 ), .CLK(n13), .Q(rx_busy) );
  DFFNEGX1 \rx/rcount_reg[3]  ( .D(\rx/n151 ), .CLK(n13), .Q(rcount[3]) );
  DFFNEGX1 \rx/rx_idle_reg  ( .D(\rx/n147 ), .CLK(n13), .Q(rx_idle) );
  DFFNEGX1 \rx/rcount_reg[2]  ( .D(\rx/n148 ), .CLK(n13), .Q(rcount[2]) );
  DFFNEGX1 \rx/rcount_reg[1]  ( .D(\rx/n149 ), .CLK(n13), .Q(rcount[1]) );
  DFFNEGX1 \rx/rcount_reg[0]  ( .D(\rx/n150 ), .CLK(n13), .Q(rcount[0]) );
  DFFNEGX1 \rx/rx_out_reg[1]  ( .D(\rx/n133 ), .CLK(n13), .Q(rx_out[1]) );
  DFFNEGX1 \rx/rx_done_reg  ( .D(\rx/n135 ), .CLK(n13), .Q(rx_done) );
  DFFNEGX1 \rx/rstate_reg[3]  ( .D(\rx/n136 ), .CLK(n13), .Q(rstate[3]) );
  DFFNEGX1 \rx/next_rstate_reg[0]  ( .D(\rx/N77 ), .CLK(clka), .Q(
        \rx/next_rstate [0]) );
  DFFNEGX1 \rx/rstate_reg[1]  ( .D(\rx/n138 ), .CLK(n13), .Q(rstate[1]) );
  DFFNEGX1 \rx/next_rstate_reg[1]  ( .D(\rx/N78 ), .CLK(clka), .Q(
        \rx/next_rstate [1]) );
  DFFNEGX1 \rx/rstate_reg[2]  ( .D(\rx/n137 ), .CLK(n13), .Q(rstate[2]) );
  DFFNEGX1 \rx/next_rstate_reg[2]  ( .D(\rx/N79 ), .CLK(clka), .Q(
        \rx/next_rstate [2]) );
  DFFNEGX1 \rx/rstate_reg[0]  ( .D(\rx/n152 ), .CLK(n13), .Q(rstate[0]) );
  NAND2X1 \dp1/d1/U14  ( .A(tx_done), .B(n20), .Y(\dp1/d1/n3 ) );
  NAND2X1 \dp1/d1/U13  ( .A(n20), .B(\dp1/d1/n3 ), .Y(\dp1/d1/N3 ) );
  INVX2 \dp1/d1/U11  ( .A(\dp1/d1/n3 ), .Y(\dp1/d1/n1 ) );
  AND2X2 \dp1/d1/U10  ( .A(tx_out[6]), .B(\dp1/d1/n1 ), .Y(\dp1/d1/N10 ) );
  AND2X2 \dp1/d1/U9  ( .A(tx_out[7]), .B(\dp1/d1/n1 ), .Y(\dp1/d1/N11 ) );
  AND2X2 \dp1/d1/U8  ( .A(tx_out[0]), .B(\dp1/d1/n1 ), .Y(\dp1/d1/N4 ) );
  AND2X2 \dp1/d1/U6  ( .A(tx_out[2]), .B(\dp1/d1/n1 ), .Y(\dp1/d1/N6 ) );
  AND2X2 \dp1/d1/U5  ( .A(tx_out[3]), .B(\dp1/d1/n1 ), .Y(\dp1/d1/N7 ) );
  AND2X2 \dp1/d1/U4  ( .A(tx_out[4]), .B(\dp1/d1/n1 ), .Y(\dp1/d1/N8 ) );
  AND2X2 \dp1/d1/U3  ( .A(tx_out[5]), .B(\dp1/d1/n1 ), .Y(\dp1/d1/N9 ) );
  LATCH \dp1/d1/q_reg[0]  ( .CLK(\dp1/d1/N3 ), .D(\dp1/d1/N4 ), .Q(rx_data[0])
         );
  LATCH \dp1/d1/q_reg[2]  ( .CLK(\dp1/d1/N3 ), .D(\dp1/d1/N6 ), .Q(rx_data[2])
         );
  LATCH \dp1/d1/q_reg[3]  ( .CLK(\dp1/d1/N3 ), .D(\dp1/d1/N7 ), .Q(rx_data[3])
         );
  LATCH \dp1/d1/q_reg[4]  ( .CLK(\dp1/d1/N3 ), .D(\dp1/d1/N8 ), .Q(rx_data[4])
         );
  LATCH \dp1/d1/q_reg[5]  ( .CLK(\dp1/d1/N3 ), .D(\dp1/d1/N9 ), .Q(rx_data[5])
         );
  LATCH \dp1/d1/q_reg[6]  ( .CLK(\dp1/d1/N3 ), .D(\dp1/d1/N10 ), .Q(rx_data[6]) );
  LATCH \dp1/d1/q_reg[7]  ( .CLK(\dp1/d1/N3 ), .D(\dp1/d1/N11 ), .Q(rx_data[7]) );
  NAND2X1 \dp2/d1/U14  ( .A(rx_done), .B(n20), .Y(n21) );
  NAND2X1 \dp2/d1/U13  ( .A(n20), .B(n21), .Y(\dp2/d1/N3 ) );
  INVX2 \dp2/d1/U12  ( .A(reset), .Y(n20) );
  INVX2 \dp2/d1/U11  ( .A(n21), .Y(n19) );
  AND2X2 \dp2/d1/U10  ( .A(rx_out[6]), .B(n19), .Y(\dp2/d1/N10 ) );
  AND2X2 \dp2/d1/U9  ( .A(rx_out[7]), .B(n19), .Y(\dp2/d1/N11 ) );
  AND2X2 \dp2/d1/U8  ( .A(rx_out[0]), .B(n19), .Y(\dp2/d1/N4 ) );
  AND2X2 \dp2/d1/U7  ( .A(rx_out[1]), .B(n19), .Y(\dp2/d1/N5 ) );
  AND2X2 \dp2/d1/U6  ( .A(rx_out[2]), .B(n19), .Y(\dp2/d1/N6 ) );
  AND2X2 \dp2/d1/U5  ( .A(rx_out[3]), .B(n19), .Y(\dp2/d1/N7 ) );
  AND2X2 \dp2/d1/U4  ( .A(rx_out[4]), .B(n19), .Y(\dp2/d1/N8 ) );
  AND2X2 \dp2/d1/U3  ( .A(rx_out[5]), .B(n19), .Y(\dp2/d1/N9 ) );
  LATCH \dp2/d1/q_reg[0]  ( .CLK(\dp2/d1/N3 ), .D(\dp2/d1/N4 ), .Q(rxrxout[0])
         );
  LATCH \dp2/d1/q_reg[1]  ( .CLK(\dp2/d1/N3 ), .D(\dp2/d1/N5 ), .Q(rxrxout[1])
         );
  LATCH \dp2/d1/q_reg[2]  ( .CLK(\dp2/d1/N3 ), .D(\dp2/d1/N6 ), .Q(rxrxout[2])
         );
  LATCH \dp2/d1/q_reg[3]  ( .CLK(\dp2/d1/N3 ), .D(\dp2/d1/N7 ), .Q(rxrxout[3])
         );
  LATCH \dp2/d1/q_reg[4]  ( .CLK(\dp2/d1/N3 ), .D(\dp2/d1/N8 ), .Q(rxrxout[4])
         );
  LATCH \dp2/d1/q_reg[5]  ( .CLK(\dp2/d1/N3 ), .D(\dp2/d1/N9 ), .Q(rxrxout[5])
         );
  LATCH \dp2/d1/q_reg[6]  ( .CLK(\dp2/d1/N3 ), .D(\dp2/d1/N10 ), .Q(rxrxout[6]) );
  LATCH \dp2/d1/q_reg[7]  ( .CLK(\dp2/d1/N3 ), .D(\dp2/d1/N11 ), .Q(rxrxout[7]) );
  INVX2 U14 ( .A(n17), .Y(n13) );
  INVX2 U15 ( .A(n17), .Y(n14) );
  INVX2 U16 ( .A(n16), .Y(n15) );
  BUFX2 U17 ( .A(n18), .Y(n17) );
  BUFX2 U18 ( .A(n18), .Y(n16) );
  INVX2 U19 ( .A(clkb), .Y(n18) );
  NAND2X1 U20 ( .A(\tx/n34 ), .B(\tx/n24 ), .Y(\tx/n78 ) );
  NAND2X1 U21 ( .A(\rx/n32 ), .B(\rx/n27 ), .Y(\rx/n89 ) );
  INVX2 U22 ( .A(\tx/n97 ), .Y(\tx/n95 ) );
  NAND2X1 U23 ( .A(\tx/n83 ), .B(\tx/n97 ), .Y(\tx/n107 ) );
  NAND2X1 U24 ( .A(\tx/n59 ), .B(\tx/n97 ), .Y(\tx/n58 ) );
  NAND2X1 U25 ( .A(\tx/n94 ), .B(\tx/n17 ), .Y(\tx/n93 ) );
  NAND2X1 U26 ( .A(\tx/n57 ), .B(\tx/n97 ), .Y(\tx/n56 ) );
  NAND2X1 U27 ( .A(\rx/n77 ), .B(\rx/n110 ), .Y(\rx/n67 ) );
  NAND2X1 U28 ( .A(\rx/n117 ), .B(\rx/n16 ), .Y(\rx/n66 ) );
  NAND2X1 U29 ( .A(\rx/n79 ), .B(\rx/n110 ), .Y(\rx/n106 ) );
  NAND2X1 U30 ( .A(\rx/n63 ), .B(\rx/n110 ), .Y(\rx/n62 ) );
endmodule

