`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:47:29 10/16/2015 
// Design Name: 
// Module Name:    testv 
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
module tb_dht11(
    );
reg clk;
reg rst_n;
reg start;
wire data_io_wire;
reg data_io;
wire [7:0]a;
wire [7:0]b;
reg direction;


	 initial
	 begin
		clk = 1'b0;
		rst_n=1'b0;
		start = 1'b0;
		direction = 1'b1;
		#1
		rst_n = 1'b1;
		#5
		start = 1'b1;
		#10
		start = 1'b0;
		
		
		#20030
		direction = 1'b0;
		data_io = 1'b0;
		#80
		data_io = 1'b1;
		#30
		
		 
		data_io = 1'b0; //0
		#50
		data_io = 1'b1;
		#50 
		
		data_io = 1'b0; //1
		#50
		data_io = 1'b1;
		#50 
		data_io = 1'b0; //2	
		#50
		data_io = 1'b1;
		#50 
		data_io = 1'b0; //1
		#50
		data_io = 1'b1;
		#50 
		data_io = 1'b0; //1
		#50
		data_io = 1'b1;
		#50 
		data_io = 1'b0; //1
		#50
		data_io = 1'b1;
		#50 
		data_io = 1'b0; //1
		#50
		data_io = 1'b1;
		#50 
		data_io = 1'b0; //1
		#50
		data_io = 1'b1;
		#50 
		data_io = 1'b0; //1
		#50
		data_io = 1'b1;
		#50 
		data_io = 1'b0; //1
		#50
		data_io = 1'b1;
		#50 
		data_io = 1'b0; //1
		#50
		data_io = 1'b1;
		#50 
		data_io = 1'b0; //1
		#50
		data_io = 1'b1;
		#50 
		data_io = 1'b0; //1
		#50
		data_io = 1'b1;
		#50 
		data_io = 1'b0; //1
		#50
		data_io = 1'b1;
		#50 
		data_io = 1'b0; //1
		#50
		data_io = 1'b1;
		#50 
		data_io = 1'b0; //1
		#50
		data_io = 1'b1;
		#50 
		data_io = 1'b0; //1
		#50
		data_io = 1'b1;
		#50 
		data_io = 1'b0; //1
		#50
		data_io = 1'b1;
		#50 
		data_io = 1'b0; //1
		#50
		data_io = 1'b1;
		#50 
		data_io = 1'b0; //1
		#50
		data_io = 1'b1;
		#50 
		data_io = 1'b0; //1
		#50
		data_io = 1'b1;
		#50 
		data_io = 1'b0; //1
		#50
		data_io = 1'b1;
		#50 
		data_io = 1'b0; //1
		#50
		data_io = 1'b1;
		#50 
		data_io = 1'b0; //1
		#50
		data_io = 1'b1;
		#50 
		data_io = 1'b0; //1
		#50
		data_io = 1'b1;
		#50 
		data_io = 1'b0; //1
		#50
		data_io = 1'b1;
		#50 
		data_io = 1'b0; //1
		#50
		data_io = 1'b1;
		#50 
		data_io = 1'b0; //1
		#50
		data_io = 1'b1;
		#50 
		data_io = 1'b0; //1
		#50
		data_io = 1'b1;
		#50 
		data_io = 1'b0; //1
		#50
		data_io = 1'b1;
		#50 
		data_io = 1'b0; //1
		#50
		data_io = 1'b1;
		#50 
		data_io = 1'b0; //1
		#50
		data_io = 1'b1;
		#50 
		data_io = 1'b0; //1
		#50
		data_io = 1'b1;
		#50
		data_io = 1'b0;
				#50
		data_io = 1'b1;
		#50
		data_io = 1'b0;
				#50
		data_io = 1'b1;
		#50
		data_io = 1'b0;
				#50
		data_io = 1'b1;
		#50
		data_io = 1'b0;
				#50
		data_io = 1'b1;
		#50
		data_io = 1'b0;
				#50
		data_io = 1'b1;
		#50
		data_io = 1'b0;
				#50
		data_io = 1'b1;
		#50
		data_io = 1'b0;
				#50
		data_io = 1'b1;
		#50
		data_io = 1'b0;
				#50
		data_io = 1'b1;
		#50
		data_io = 1'b0;

		#100
		
		#100
		
		$finish;
	 end
	assign data_io_wire = direction? 1'bz:data_io;

	always
	begin
		#0.5 clk =~clk;
	end

	dht11_driver  theDriver(clk,rst_n,start,data_io_wire,a,b);


endmodule
