`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:14:16 10/17/2015 
// Design Name: 
// Module Name:    tb_freqdiv 
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
module tb_freqdiv(
    );
reg clk;
reg rst_n;
wire clk_out0;
wire clk_out1;
wire clk_out2;


initial begin
clk = 0;
rst_n = 0;
#1
rst_n = 1;
#4000
$finish;
end

always
begin
#0.5 clk = ~clk;

end



freqdiv freqdiv0(clk,rst_n,clk_out0,2'b00);
freqdiv freqdiv1(clk,rst_n,clk_out1,2'b01);
freqdiv freqdiv2(clk,rst_n,clk_out2,2'b10);

endmodule
