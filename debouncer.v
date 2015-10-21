`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:34:49 10/01/2015 
// Design Name: 
// Module Name:    debouncer 
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
module debounce(
    input wire clock,
    input wire IN,
    output reg OUT
);

 parameter M = 8;
 reg [M-1:0]shift;

 //shift: wait for stable
 always @ (posedge clock) 
 begin
   shift[M-1:0] <= {shift[M-2:0],IN}; // N shift register
// if(shift[M-1:0] == (2**M)*0)
   if(~|shift)
     OUT <= 1'b0;
// else if(shift[M-1:0] == (2**M)-1)
   else if(&shift)
     OUT <= 1'b1;
   else OUT <= OUT;
 end
 endmodule