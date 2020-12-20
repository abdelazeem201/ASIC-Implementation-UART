module dp(clka, clkb, reset, tx_out, tx_done, rx_data);
input clka, clkb, reset, tx_done;
input wire [7:0] tx_out;
output [7:0] rx_data;

dlatch d1(.data(tx_out), .en(tx_done), .reset(reset), .q(rx_data));

//dlatch d2(.data(rx_data), .en(rx_done), .reset(reset), .q(rx_out));
endmodule
