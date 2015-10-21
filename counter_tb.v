`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:10:39 10/01/2015 
// Design Name: 
// Module Name:    counter_tb 
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
module counter_tb(
    );
	reg clk;
	reg rst_n;
	wire [3:0]counter_result;
	reg inc;
	reg dec;
	
	initial begin
	clk = 0;
	rst_n = 0;
	inc = 1;
	dec = 0;
	#2
	inc = 0;
	#3
	rst_n = 1;
	#5
	inc = 1;
	#10
	inc = 0;
	dec = 1;
	#15
	dec = 0;
	#20
	$finish;
	end
	
	always begin
	#1 clk=~clk;
	end
	
	counter the_counter(rst_n,inc,dec,clk,counter_result);

endmodule
