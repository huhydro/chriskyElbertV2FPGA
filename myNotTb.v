`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:33:45 09/30/2015 
// Design Name: 
// Module Name:    myNotTb 
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
module myModule_tb(); 
    wire out;
    reg clock;
     
    
    initial begin
		//Initialize clock
		clock = 0;
     
		//End simulation
		#10
		$finish;

    end
	 
	  always begin
		#1 clock =!clock;
     end
     
    myNot myNot(clock, out);
endmodule


