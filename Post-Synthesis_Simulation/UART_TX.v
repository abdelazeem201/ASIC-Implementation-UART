module tx_mainFSM(clka, clkb, reset, tx_data, tx_rdy, tx_busy, tx_out, tx_done, tcount, tstate, tx_error, tx_idle);

input wire clka, clkb, reset;
input wire [7:0] tx_data;
input wire tx_rdy;
output reg [7:0] tx_out;
output [3:0] tstate;
output reg [3:0] tcount;
output reg tx_error, tx_busy, tx_done, tx_idle;

reg [7:0] ttmpout =8'b00000000;

parameter SIZE = 4;
parameter S0  = 4'b0000, S1 = 4'b0001, S2 = 4'b0010, S3=4'b0011, S4=4'b0100, S5=4'b0101, S6  = 4'b0110, S7 = 4'b0111, S8 = 4'b1000;

reg   [SIZE-1:0]          tstate        ;// Seq part of the FSM
wire   [SIZE-1:0]         temp_tstate   ;// Internal tstate reg
reg   [SIZE-1:0]          next_tstate   ;// combo part of FSM

assign  temp_tstate = fsm_function(tstate, tx_rdy, tx_busy, tcount);

function [SIZE-1:0] fsm_function;
	input [SIZE-1:0] tstate;
	input tx_rdy, tx_busy;
	input [3:0] tcount;

	case(tstate)
			S0: begin 
				if(~tx_rdy) begin
					fsm_function = S1;
				end 	
									// idle stage
			end

			S1: begin
				if(tx_rdy) begin 
					fsm_function = S2;
				end
				else begin
					fsm_function = S1;
				end
		            end
 
			S2: begin 
				if (tx_busy) begin
					fsm_function = S2;
				end else begin
					fsm_function = S3;  // trasnmitting data stage
				end
			end

			S3: begin
				fsm_function = S4;    // tx_done stage
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
    next_tstate <= S0;
  end else begin
    next_tstate <= temp_tstate;
  end
end

always @ (negedge clkb)
begin
  case(next_tstate)
          S0: begin
               	tcount <= 4'b0000;
               	ttmpout  <= 8'b00000000;
		tx_out <= 0;
               	tx_error <= 0;
               	tx_idle <= 1;
		tx_busy <= 0;
		tx_done <= 0;
		tcount <= 0;
                tstate <= next_tstate;
          end
	  
  	  S1: begin
		tstate <= next_tstate;
	      end
		
          S2: begin
        	    tx_idle <= 0;
        		if (tcount > 4) begin
          			tx_busy <= 0;
          		end
          		else begin 
          			tx_busy <= 1;
      			end
      			ttmpout [7] <= 1;
      			ttmpout [tcount+2] <= tx_data[tcount+2];
          		tcount <= tcount + 1;
          		tstate <= next_tstate;
          end

          S3: begin
          		ttmpout [7] <= 0;
          		tx_done <= 1;
          		tstate <= next_tstate;
          end

          S4: begin
         		if (ttmpout [6:2]==tx_data[6:2]) begin
          			tx_error <= 0;
          		end
          		else begin
          			tx_error <= 1;
          		end
          	    tstate <= next_tstate;
          end

          S5: begin
          	   tx_out <= {ttmpout[7:2], tx_done, tx_error};
          	   tstate <= next_tstate;
          end
  endcase
end

endmodule
