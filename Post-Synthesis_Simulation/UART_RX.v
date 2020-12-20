module rx_mainFSM(clka, clkb, reset, rx_data, rx_rdy, rx_busy, rx_out, rx_done, rcount, rstate, rx_error,rx_idle);

input wire clka, clkb, reset;
input wire [7:0] rx_data;
input wire rx_rdy;
output reg [7:0] rx_out;
output reg [3:0] rcount;
output [3:0] rstate;
output reg rx_error, rx_busy, rx_done, rx_idle;

reg [7:0] rtmpout =8'b00000000;

parameter SIZE = 4;
parameter S0  = 4'b0000, S1 = 4'b0001, S2 = 4'b0010, S3=4'b0011, S4=4'b0100, S5=4'b0101, S6  = 4'b0110, S7 = 4'b0111, S8 = 4'b1000;

reg   [SIZE-1:0]          rstate        ;// Seq part of the FSM
wire   [SIZE-1:0]         temp_rstate   ;// Internal rstate reg
reg   [SIZE-1:0]          next_rstate   ;// combo part of FSM

assign  temp_rstate = fsm_function(rstate, rx_rdy, rx_busy, rcount);
function [SIZE-1:0] fsm_function;
	input [SIZE-1:0] rstate;
	input rx_rdy, rx_busy;
	input [3:0] rcount;

	case(rstate)
			S0: begin 
				if(~rx_rdy) begin
					fsm_function = S1;
				end 
										// idle stage
			end
			
			S1: begin
				if (rx_rdy) begin
					fsm_function = S2;
				end else begin
					fsm_function = S1;
				end				
			    end

			S2: begin 
				if (rx_busy) begin
					fsm_function = S2;
				end else begin
					fsm_function = S3;  // receiving data stage
				end
			end

			S3: begin
				fsm_function = S4;    // rx_done stage
			end

			S4: begin
				fsm_function = S5;  //self check
			end

			S5: begin
				fsm_function = S1; // go back to wait for new data
			end

			default: fsm_function = S0;
    endcase
endfunction

always @ (negedge clka)
begin
  if (reset == 1'b1) begin
    next_rstate <= S0;
  end else begin
    next_rstate <= temp_rstate;
  end
end

always @ (negedge clkb)
begin
  case(next_rstate)
          S0: begin
               	rcount <= 4'b0000;
               	rtmpout  <= 8'b00000000;
               	rx_error <= 0;
               	rx_idle <= 1;
		rx_out <= 0;
		rx_done <= 0;
		rx_busy <= 0;
		if (~rx_done) begin
			rx_out <= 0;
		end
               	if (rx_data[0]) begin
               		rx_error <= 1;
               	end
                rstate <= next_rstate;
          end

	  S1: begin
		rstate <= next_rstate;
	      end

          S2: begin
          		rx_idle <= 0;
        		if (rcount > 4) begin
          			rx_busy <= 0;
          		end
          		else begin 
          			rx_busy <= 1;
      			end
      			rtmpout [7] <= 1;
      			rtmpout [rcount+1] <= rx_data[rcount+1];
          		rcount <= rcount + 1;
          		rstate <= next_rstate;
          end

          S3: begin
          		rtmpout [7] <= 0;
          		rx_done <= 1;
          		rstate <= next_rstate;
          end

          S4: begin
         		if (rtmpout [6:2]==rx_data[6:2]) begin
          			rx_error <= 0;
          		end
          		else begin
          			rx_error <= 1;
          		end
          	    rstate <= next_rstate;
          end

          S5: begin
          	   rx_out <= {rtmpout[7:2], rx_done, rx_error};        	   
          	   rstate <= next_rstate;
          end

  endcase
end

endmodule
