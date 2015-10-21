`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:53:31 10/07/2015 
// Design Name: 
// Module Name:    mySevenSegment 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mySevenSegment(
	input clk,
	input rst_n,
    input [3:0] inp0,
	 input [3:0] inp1,
	 input [3:0] inp2,
    output [6:0] out_wire,
	 output reg [2:0] output_select
    );
	 
	 reg [6:0] out;
	 integer output_select_loop;
	 reg[3:0] inp;
	 integer counter;
	 
	 assign out_wire = ~out;
	 always @(posedge clk or negedge rst_n)
	 begin
		if (~rst_n)
		begin
			out <= 7'b0;
			output_select<=3'b110;
			counter<=0;
		end
		else
		begin
			counter<= counter + 1;
			if (counter == 1000)
			begin
				counter <= 0;
				case(output_select)
				3'b110:
				begin
					output_select<= 3'b101;
					inp<= inp1;
				end
				
				3'b101:
				begin
					output_select<= 3'b011;
					inp<= inp2;
				end
				
				3'b011:
				begin
					output_select<= 3'b110;
					inp<= inp0;
				end
				endcase
			end
			case (inp)
						4'd0:out <= 7'b1111110;
						4'd1:out <= 7'b0110000;
						4'd2:out <= 7'b1101101;
						4'd3:out <= 7'b1111001;
						4'd4:out <= 7'b0110011;
						4'd5:out <= 7'b1011011;
						4'd6:out <= 7'b1011111;
						4'd7:out <= 7'b1110000;
						4'd8:out <= 7'b1111111;
						4'd9:out <= 7'b1111011;
			endcase
		end
	end

endmodule
