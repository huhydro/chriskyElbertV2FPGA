`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:50:04 10/01/2015 
// Design Name: 
// Module Name:    counter 
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
module counter(
	input reset_n,
   input inc,
   input dec,
	input clk,
   output [3:0] counter
    );
	 
	 reg inc_n;
	 reg dec_n;
	 reg [3:0] counter_out;
	 
	 assign counter = counter_out;
	 
	 always@(posedge clk, negedge reset_n)
	 begin
		if(~reset_n)
			begin 
			inc_n<=1'b0;
			dec_n<=1'b0;
			counter_out<=4'b0;
			end
		else
			begin
   		inc_n <= inc;
			
			if(inc_n) 
				counter_out<=counter_out+1;
			end
	 end
	

endmodule
