////                                                              ////
////  UART Designe                                                ////
////     D-Latch                                                  ////
////  https://github.com/Casear98                                 ////
////                                                              ////
////  Description                                                 ////
////  Designed RTL of UART system in Verilog                      ////
////                                                              ////
////                                                              ////
////  Author(s):                                                  ////
////      - Ahmed Abdelazeen, ahmedabdelazeem373@gmail.com        ////
////                                                              ////
//////////////////////////////////////////////////////////////////////


module dlatch(
input wire [7:0] data   , // Data Input
input wire en     , // LatchInput
input wire reset  , // Reset input - active high
output reg [7:0] q        // Q output
);


always @ ( en or reset or data)
if (reset) begin
  q <= 0;
end else if (en) begin
  q <= data;
end

endmodule //End Of Module dlatch_reset
