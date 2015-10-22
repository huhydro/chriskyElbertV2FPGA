`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:28:25 10/01/2015 
// Design Name: 
// Module Name:    new_counter 
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
module new_counter(
input rst_n,
input inc,
output [9:0]counter
    );

reg [9:0]counter_reg;

assign counter = counter_reg;

always@(posedge inc or negedge rst_n)
begin
	if(~rst_n)
		counter_reg<=10'b0000;
	else
		counter_reg <= counter_reg  + 1;
end

endmodule
