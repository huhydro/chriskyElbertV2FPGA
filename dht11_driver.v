`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: chrisky hu
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
module dht11_driver(
    input clk1mhz,
    input rst_n,
	 input start_signal,
    inout dht11_dat,
    output reg [7:0] output_temp,
    output reg[7:0] output_humidity,
	 output reg [3:0]status
    );
	 
	 //reg[7:0] output_temp;
    //reg[7:0] output_humidity;
	 
	 integer clock_count;
	 integer data_count;
	 integer global_count;
	 
	 reg direction;
	 wire data_in;
	 reg data_out;
	 reg [39:0] data;
	 assign dht11_dat = direction ? 1'bz:data_out;
	 assign data_in = dht11_dat;
	 
	 reg[3:0] state;
	 
	 //assign output_temp_wire = output_temp;
	 //assign output_humidity_wire = output_humidity;
	 
	 always@(posedge clk1mhz, negedge rst_n)
	 begin
		if (~rst_n)
		begin
			state<=4'b0;
			status <=4'b0;
			data<=40'b0;
			output_temp <= 8'b0;
			output_humidity <=8'b0;
			global_count<=0;
		end
		else
		begin
			status<=state;
			case( state)
			4'b0:
			begin
				clock_count<=0;
				data_count<=0;
				global_count<=0;
				direction <= 1'b0;
				data_out<=1'b1;
				if(start_signal==1'b0)
					state <=4'd1;
			end
			4'b1:
			begin
				if(start_signal==1'b1)
					state<=4'd2;
			end
			4'd2:
			begin
				direction<=1'd0;
				data_out<=1'd0;
				clock_count<=clock_count+1;
				if(clock_count==30000)
				begin
					state <=4'd3;
					clock_count<=0;
				end
			end
			4'd3:
			begin
				data_out<=1'd1;
				clock_count<=clock_count+1;
				if (clock_count == 20)
				begin
					direction<=1'b1;
					data_out<=1'bz;
					state <=4'd4;
					clock_count<=0;
				end
			end
			4'd4:
			begin
				if(data_in == 1'b0)
					state <=4'd5;
			end
			4'd5:
			begin
				if(data_in == 1'b1)
					state <=4'd6;
			end
			4'd6:
			begin
			if(data_in == 1'b0)
					state <=4'd7;
			end
			4'd7:
			begin
				clock_count<=clock_count+1;
				if(data_in == 1'b1)
					begin
						state<=4'd8;
						clock_count<=0;
					end
			end
			4'd8:
			begin
				global_count<=global_count+1;
				clock_count<=clock_count+1;
				output_temp[0]<=data[23];
				output_temp[1]<=data[22];
				output_temp[2]<=data[21];
				output_temp[3]<=data[20];
				output_temp[4]<=data[19];
				output_temp[5]<=data[18];
				output_temp[6]<=data[17];
				output_temp[7]<=data[16];
				
				output_humidity[0]<=data[7];
				output_humidity[1]<=data[6];
				output_humidity[2]<=data[5];
				output_humidity[3]<=data[4];
				output_humidity[4]<=data[3];
				output_humidity[5]<=data[2];
				output_humidity[6]<=data[1];
				output_humidity[7]<=data[0];
				
				if (global_count>10000) //stuck , reset
				begin
					state<=4'd0;
				end
				else
				begin
					if(data_in == 1'b0)
					begin
						data_count <=data_count+1;
						if(clock_count>40)
						begin
							data[data_count] <= 1'b1;
						end
						else
						begin
							data[data_count] <= 1'b0;
						end

						if(data_count == 39)
						begin
							state<=4'd9;
						end
						else
						begin
							state<=4'd7;
						end
						clock_count <=0;
					end
				end
			end
			4'd9:
			begin
				if(start_signal==1'b1)
					state <=4'd10;
			end
			4'd10:
			begin
				if(start_signal==1'b0)
					state <=4'd0;
			
			end
			endcase
		end
	end
endmodule
