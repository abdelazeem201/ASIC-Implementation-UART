module UART(clka, clkb, reset, tx_data, tx_rdy, rx_rdy, tx_busy, tx_out, tx_done, tcount, tstate, tx_error, tx_idle, rx_busy, rx_out, rx_done, rcount, rstate, rx_error, rx_idle, match, rxrxout);

input wire clka, clkb, reset;
input wire [7:0] tx_data;
input wire tx_rdy, rx_rdy;
output wire match;
output wire [7:0] tx_out, rx_out, rxrxout;
output wire [3:0] tstate, tcount, rstate, rcount;
output wire tx_error, tx_busy, tx_done, tx_idle, rx_error, rx_busy, rx_done, rx_idle;
wire [7:0] rx_data;

assign match = (rxrxout == tx_data)? 1 : 0;

tx_mainFSM tx(.clka(clka), .clkb(clkb), .reset(reset), .tx_data(tx_data), .tx_rdy(tx_rdy), .tx_busy(tx_busy), 
	.tx_out(tx_out), .tx_done(tx_done), .tcount(tcount), .tstate(tstate), .tx_error(tx_error), .tx_idle(tx_idle));

dp dp1(.clka(clka), .clkb(clkb), .reset(reset), .tx_out(tx_out), .tx_done(tx_done), .rx_data(rx_data));

rx_mainFSM rx(.clka(clka), .clkb(clkb), .reset(reset), .rx_data(rx_data), .rx_rdy(rx_rdy), .rx_busy(rx_busy), 
	.rx_out(rx_out), .rx_done(rx_done), .rcount(rcount), .rstate(rstate), .rx_error(rx_error), .rx_idle(rx_idle));

dp dp2(.clka(clka), .clkb(clkb), .reset(reset), .tx_out(rx_out), .tx_done(rx_done), .rx_data(rxrxout));

endmodule
