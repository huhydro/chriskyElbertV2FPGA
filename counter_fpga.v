`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:35:40 10/01/2015 
// Design Name: 
// Module Name:    counter_fpga 
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
module counter_fpga(
	input[5:0] BTN,
	input clk,
	output[7:0] LED,
	output [7:0] SevenSegment,
	output [2:0] SevenSegment_Enable,
	output IO_P1_1,
	output IO_P1_3,
	inout IO_P1_5
	);
	wire rst_n;
	wire inc_n_btn;
	wire btn2_n;
	wire dht11_dat;

	reg [1:0] state_func;

	wire inc_n_debounced;
	wire btn2_n_debounced;
	wire select_onehot;
	wire rst_debounced;
	wire clk_div_1Hz;
	wire clk_div_1MHZ;
	wire clk_div_1kHZ;
	
	wire [9:0] counter_4bit_out;
	wire [9:0] counter_10bit_out;
	wire dummy;
	
	reg rst_n_dht11;
	wire [9:0]humid;
	wire [9:0]temp;
	wire [3:0]status;
	
	wire [3:0] HUNDREDS;
	wire [3:0] TENS;
	wire [3:0] ONES;
	
	
	wire start_dht11_capture;
	reg auto_capture;
	reg [2:0] auto_capture_counter;
	reg auto_capture_start;
	wire [3:0] data0a;
	wire [3:0] data1a;
	wire [3:0] data2a;
	
	wire [3:0] data0b;
	wire [3:0] data1b;
	wire [3:0] data2b;
	
	reg [3:0] LCD_3;
	reg [3:0] LCD_2;
	reg [3:0] LCD_1;
	
	wire dht11_start;
	
	assign rst_n = BTN[4];
	
	assign inc_n_btn = ~BTN[0];
	assign btn2_n = ~BTN[1];

	
	assign LED[7] = counter_4bit_out[0];
	assign LED[6] = counter_4bit_out[1];
	assign LED[5] = btn2_n_debounced;
	assign LED[4] = inc_n_debounced;
	assign LED[3] = status[0];
	assign LED[2] = status[1];
	assign LED[1] = status[2];
	assign LED[0] = status[3];
	
	assign SevenSegment[0] = ~clk_div_1Hz;
	
	
	assign IO_P1_1 = 1'b0;
	assign IO_P1_3 = 1'b1;
	assign IO_P1_5 = dht11_dat;
	
	assign start_dht11_capture = auto_capture? auto_capture_start:btn2_n_debounced;
	assign  humid[9:8] = 2'b0;
	assign  temp[9:8] = 2'b0;
	
	
	//assign SevenSegment = 	counter_10bit_out[7:0];
	
	always@(posedge clk or negedge rst_debounced)
	begin
		if(~rst_debounced)
		begin
			state_func <=2'b0;
			auto_capture<=1'b0;
			auto_capture_counter<=3'b0;
		end
		else
		begin
			if(select_onehot==1'b1)
				state_func <=state_func +1;
				
			case(counter_4bit_out[1:0])
			2'b0:
			begin
				LCD_1 <= ONES;
				LCD_2 <= TENS;
				LCD_3 <= HUNDREDS;
				auto_capture<=1'b0;
				rst_n_dht11<=rst_n;
			end
			2'b1:
			begin
				
				LCD_1 <= data0a;
				LCD_2 <= data1a;
				LCD_3 <= data2a;
				auto_capture<=1'b0;
				rst_n_dht11<=rst_n;
			end
			2'b10:
			begin
				LCD_1 <= data0b;
				LCD_2 <= data1b;
				LCD_3 <= data2b;
				auto_capture<=1'b0;
				
			end
			2'b11:
			begin
				LCD_1 <= data0a;
				LCD_2 <= data1a;
				LCD_3 <= data2a;
				auto_capture<=1'b1;
			end
		endcase
		end
	end
	
	always@(posedge clk_div_1Hz or negedge rst_n)
	begin
		if(~rst_n)
			auto_capture_counter<=3'b0;
		else
		
			if(auto_capture_counter == 3'b111)
			begin
				auto_capture_start<=1'b1;
				auto_capture_counter<=auto_capture_counter+1;
			end
			else
			begin
				auto_capture_start<=1'b0;
				auto_capture_counter<=auto_capture_counter+1;
			end
			
	end

	
	freqdiv freqdiv1(clk,rst_n,clk_div_1Hz,2'b01);
	freqdiv freqdiv2(clk,rst_n,clk_div_1MHZ,2'b00);
	freqdiv freqdiv3(clk,rst_n,clk_div_1kHZ,2'b10);
	
	
	
	debounce debounce_inc(clk_div_1kHZ,inc_n_btn,inc_n_debounced);
	debounce debounce_start(clk_div_1kHZ,btn2_n,btn2_n_debounced);
	debounce debounce_rst(clk_div_1kHZ,rst_n,rst_debounced);

	new_counter theNewCounter(rst_n,inc_n_debounced,dec_debounced,counter_4bit_out);
	new_counter the10bitCounter(rst_n,clk_div_1Hz,dummy,counter_10bit_out);
	
	mySevenSegment sevenSegementDec(clk,rst_debounced,LCD_1,LCD_2,LCD_3,SevenSegment[7:1],SevenSegment_Enable);
	BINARY_TO_BCD   theBinary2BCD(counter_10bit_out, HUNDREDS,TENS,ONES);
	BINARY_TO_BCD   theBinary2BCDhumid(humid, data2a,data1a,data0a);
	BINARY_TO_BCD   theBinary2BCDtemp(temp, data2b,data1b,data0b);
	
	dht11_driver dht11_driver(clk_div_1MHZ,rst_n_dht11,start_dht11_capture,dht11_dat,humid[7:0],temp[7:0],status);
endmodule

