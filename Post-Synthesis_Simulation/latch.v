module dlatch(
data   , // Data Input
en     , // LatchInput
reset  , // Reset input - active high
q        // Q output
);
//-----------Input Ports---------------
input en, reset;
input [7:0] data;
//-----------Output Ports---------------
output reg [7:0] q;

//------------Internal Variables--------
//reg [7:0] q;

//-------------Code Starts Here---------
always @ ( en or reset or data)
if (reset) begin
  q <= 0;
end else if (en) begin
  q <= data;
end

endmodule //End Of Module dlatch_reset
