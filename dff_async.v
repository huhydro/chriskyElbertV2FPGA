`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:32:14 09/30/2015 
// Design Name: 
// Module Name:    dff_async 
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
module dff_async(
    input clk,
    input d,
    input reset_n,
    output q
    );
	 
reg q;
always @(posedge clk or negedge reset_n)
	if(~reset) begin
		q<=1'b0;
	end else begin
		q<=d;
	end
	
endmodule
