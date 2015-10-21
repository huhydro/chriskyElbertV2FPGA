`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:22:03 10/16/2015 
// Design Name: 
// Module Name:    tb_oneHot 
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
module tb_oneHot(
    );
	 
reg clk;
reg rst_n;
reg inp;
wire out;
initial
begin
	rst_n = 0;
	clk = 0;
	inp = 0;
	#1 
	rst_n = 1;
	#5
	inp = 1;
	#2 
	inp = 0;
	#4
	inp = 1;
	#10
	inp = 0;
	#3
	inp=1;
	#1
	inp=0;
	#5
	$finish;
end

always
begin
#0.5
clk = ~clk;
end

OneHot oneHot(rst_n,clk,inp,out);

endmodule
