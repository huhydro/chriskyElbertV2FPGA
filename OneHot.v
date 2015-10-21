`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:14:20 10/16/2015 
// Design Name: 
// Module Name:    OneHot 
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
module OneHot(
    input rst_n,
    input clk,
    input inp,
    output reg output_oneHot
    );
	 
	 reg[1:0] hold_state;
	 
	 always@(posedge clk or negedge rst_n)
	 begin
		if (~rst_n)
		begin
			hold_state<=2'b0;
			output_oneHot<=0;
		end
		else
		case(hold_state)
		2'b0:
		begin
			output_oneHot<=1'b0;
			if(inp==1'b0)
				hold_state<=2'b1;
		end
		2'b1:
		begin
			output_oneHot<=1'b0;
			if(inp==1'b1)
			begin
				hold_state<=2'b0;
				output_oneHot<=1'b1;
			end
		end
		endcase
	end
			


endmodule
