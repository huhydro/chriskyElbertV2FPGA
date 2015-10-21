`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:25:03 10/15/2015 
// Design Name: 
// Module Name:    dht11_decode 
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
module dht11_decode(
    input clk1mhz,
    input rst_n,
	 input start_signal,
    inout dht11_dat,
    output reg[7:0] output_temp,
    output reg[7:0] output_humidity
    );
	 integer clock_count;
	 reg machine_start;
	 reg direction;
	 reg data_out;
	 assign dht11_dat = direction ? 1'bz:data_out;
	 reg[2:0] state;
	 
	 always@(posedge clk, negedge rst_n)
	 begin
		if (~rst_n)
			state<=3'b0;
		end
		else
		case( state)
		3'b0:
		begin
			output_temp <= 8'b0;
			output_humidity <=8'b0;
			clock_count<=0;
			machine_start<=1'b0;
			direction <= 1'b0;
			data_out<=1'b1;
			if(start_signal==1'b1)
			begin
				state <=3'd1;
			end
		end
		3'b1:
		begin
			if(start_signal==1'b0)
				state<=3'd2;
		end
		3'd2:
		begin
			direction<=1'd0;
			output_data<=1'd0;
			counter<=counter+1;
			if(counter==20000)
				state <=3'd3;
				clock_couter<=0;
		end
		case 3'd3:
			output_data<=1'd1;
			begin
				clock_count<=clock_count+1;
			end
			if (clock_count == 20)
			begin
				direction<=1'b1;
				data_out<=1'bz;
			end
			else if(clock_count == 20000)
			begin 
				data_out<=1'b1;
			end
			else if(clock_count ==20020)
			begin
				direction<=1'b1;
			end
			
			
			if(~start_signal)
			begin
				machine_start<=1;
			
			




endmodule
