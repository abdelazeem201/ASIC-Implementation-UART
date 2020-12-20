module UART_tb();

reg clka, clkb, reset;
reg [7:0] tx_data;
reg tx_rdy, rx_rdy;
wire match;
wire [7:0] tx_out, rx_out, rxrxout;
wire [3:0] tstate, tcount, rstate, rcount;
wire tx_error, tx_busy, tx_done, tx_idle, rx_error, rx_busy, rx_done, rx_idle;

UART main(.clka(clka), .clkb(clkb), .reset(reset), .tx_data(tx_data), .tx_rdy(tx_rdy), .rx_rdy(rx_rdy), .tx_busy(tx_busy), 
	.tx_out(tx_out), .tx_done(tx_done), .tcount(tcount), .tstate(tstate), .tx_error(tx_error), .tx_idle(tx_idle),
	.rx_busy(rx_busy), .rx_out(rx_out), .rx_done(rx_done), .rcount(rcount), .rstate(rstate), .rx_error(rx_error), .rx_idle(rx_idle), .rxrxout(rxrxout), .match(match));

initial
begin

// Cycle 1
reset = 1;
tx_data = 8'b00000000;
tx_rdy = 0;
rx_rdy = 0;
clka = 0;
clkb = 0;
#1;
clka = 1;
clkb = 0;
#1;
clka = 0;
clkb = 0;
#1;
clka = 0;
clkb = 1;
#1;

// Cycle 2
reset = 1;
tx_data = 8'b00000000;
tx_rdy = 0;
rx_rdy = 0;
clka = 0;
clkb = 0;
#1;
clka = 1;
clkb = 0;
#1;
clka = 0;
clkb = 0;
#1;
clka = 0;
clkb = 1;
#1;

// Cycle 3
reset = 0;
tx_data = 8'b11101000;
tx_rdy = 0;
rx_rdy = 0;
clka = 0;
clkb = 0;
#1;
clka = 1;
clkb = 0;
#1;
clka = 0;
clkb = 0;
#1;
clka = 0;
clkb = 1;
#1;

// Cycle 4
reset = 0;
tx_data = 8'b11101000;
tx_rdy = 1;
rx_rdy = 0;
clka = 0;
clkb = 0;
#1;
clka = 1;
clkb = 0;
#1;
clka = 0;
clkb = 0;
#1;
clka = 0;
clkb = 1;
#1;

// Cycle 5
reset = 0;
tx_data = 8'b11101000;
tx_rdy = 1;
rx_rdy = 0;
clka = 0;
clkb = 0;
#1;
clka = 1;
clkb = 0;
#1;
clka = 0;
clkb = 0;
#1;
clka = 0;
clkb = 1;
#1;


// Cycle 6
reset = 0;
tx_data = 8'b11101000;
tx_rdy = 1;
rx_rdy = 0;
clka = 0;
clkb = 0;
#1;
clka = 1;
clkb = 0;
#1;
clka = 0;
clkb = 0;
#1;
clka = 0;
clkb = 1;
#1;


// Cycle 7
reset = 0;
tx_data = 8'b11101000;
tx_rdy = 1;
rx_rdy = 0;
clka = 0;
clkb = 0;
#1;
clka = 1;
clkb = 0;
#1;
clka = 0;
clkb = 0;
#1;
clka = 0;
clkb = 1;
#1;

// Cycle 8
reset = 0;
tx_data = 8'b11101000;
tx_rdy = 1;
rx_rdy = 0;
clka = 0;
clkb = 0;
#1;
clka = 1;
clkb = 0;
#1;
clka = 0;
clkb = 0;
#1;
clka = 0;
clkb = 1;
#1;

// Cycle 9
reset = 0;
tx_data = 8'b11101000;
tx_rdy = 1;
rx_rdy = 0;
clka = 0;
clkb = 0;
#1;
clka = 1;
clkb = 0;
#1;
clka = 0;
clkb = 0;
#1;
clka = 0;
clkb = 1;
#1;

// Cycle 10
reset = 0;
tx_data = 8'b11101000;
tx_rdy = 1;
rx_rdy = 0;
clka = 0;
clkb = 0;
#1;
clka = 1;
clkb = 0;
#1;
clka = 0;
clkb = 0;
#1;
clka = 0;
clkb = 1;
#1;

// Cycle 11
reset = 0;
tx_data = 8'b11101000;
tx_rdy = 1;
rx_rdy = 0;
clka = 0;
clkb = 0;
#1;
clka = 1;
clkb = 0;
#1;
clka = 0;
clkb = 0;
#1;
clka = 0;
clkb = 1;
#1;

// Cycle 12
reset = 0;
tx_data = 8'b11101000;
tx_rdy = 0;
rx_rdy = 1;
clka = 0;
clkb = 0;
#1;
clka = 1;
clkb = 0;
#1;
clka = 0;
clkb = 0;
#1;
clka = 0;
clkb = 1;
#1;

// Cycle 13
reset = 0;
tx_data = 8'b11101000;
tx_rdy = 0;
rx_rdy = 1;
clka = 0;
clkb = 0;
#1;
clka = 1;
clkb = 0;
#1;
clka = 0;
clkb = 0;
#1;
clka = 0;
clkb = 1;
#1;

// Cycle 14
reset = 0;
tx_data = 8'b11101000;
tx_rdy = 0;
rx_rdy = 1;
clka = 0;
clkb = 0;
#1;
clka = 1;
clkb = 0;
#1;
clka = 0;
clkb = 0;
#1;
clka = 0;
clkb = 1;
#1;


// Cycle 15
reset = 0;
tx_data = 8'b11101000;
tx_rdy = 0;
rx_rdy = 1;
clka = 0;
clkb = 0;
#1;
clka = 1;
clkb = 0;
#1;
clka = 0;
clkb = 0;
#1;
clka = 0;
clkb = 1;
#1;


// Cycle 16
reset = 0;
tx_data = 8'b11101000;
tx_rdy = 0;
rx_rdy = 1;
clka = 0;
clkb = 0;
#1;
clka = 1;
clkb = 0;
#1;
clka = 0;
clkb = 0;
#1;
clka = 0;
clkb = 1;
#1;

// Cycle 17
reset = 0;
tx_data = 8'b11101000;
tx_rdy = 0;
rx_rdy = 1;
clka = 0;
clkb = 0;
#1;
clka = 1;
clkb = 0;
#1;
clka = 0;
clkb = 0;
#1;
clka = 0;
clkb = 1;
#1;

// Cycle 18
reset = 0;
tx_data = 8'b11101000;
tx_rdy = 0;
rx_rdy = 1;
clka = 0;
clkb = 0;
#1;
clka = 1;
clkb = 0;
#1;
clka = 0;
clkb = 0;
#1;
clka = 0;
clkb = 1;
#1;

// Cycle 19
reset = 0;
tx_data = 8'b11101000;
tx_rdy = 0;
rx_rdy = 1;
clka = 0;
clkb = 0;
#1;
clka = 1;
clkb = 0;
#1;
clka = 0;
clkb = 0;
#1;
clka = 0;
clkb = 1;
#1;

// Cycle 20
reset = 0;
tx_data = 8'b11101000;
tx_rdy = 0;
rx_rdy = 1;
clka = 0;
clkb = 0;
#1;
clka = 1;
clkb = 0;
#1;
clka = 0;
clkb = 0;
#1;
clka = 0;
clkb = 1;
#1;

// Cycle 21
reset = 0;
tx_data = 8'b11101000;
tx_rdy = 0;
rx_rdy = 1;
clka = 0;
clkb = 0;
#1;
clka = 1;
clkb = 0;
#1;
clka = 0;
clkb = 0;
#1;
clka = 0;
clkb = 1;
#1;

end
endmodule
