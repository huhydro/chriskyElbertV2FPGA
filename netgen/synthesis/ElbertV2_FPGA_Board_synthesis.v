////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: ElbertV2_FPGA_Board_synthesis.v
// /___/   /\     Timestamp: Wed Oct 21 18:50:59 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim ElbertV2_FPGA_Board.ngc ElbertV2_FPGA_Board_synthesis.v 
// Device	: xc3s50a-5-tq144
// Input file	: ElbertV2_FPGA_Board.ngc
// Output file	: D:\Storage\Onedrive\Dev\ISE\firstISE\netgen\synthesis\ElbertV2_FPGA_Board_synthesis.v
// # of Modules	: 1
// Design Name	: ElbertV2_FPGA_Board
// Xilinx        : D:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module ElbertV2_FPGA_Board (
  IO_P1_5, clk, IO_P1_1, IO_P1_3, SevenSegment, SevenSegment_Enable, LED, BTN
);
  inout IO_P1_5;
  input clk;
  output IO_P1_1;
  output IO_P1_3;
  output [7 : 0] SevenSegment;
  output [2 : 0] SevenSegment_Enable;
  output [7 : 0] LED;
  input [5 : 0] BTN;
  wire \BTN<4>_inv ;
  wire BTN_0_IBUF_4;
  wire BTN_1_IBUF_5;
  wire BTN_4_IBUF_6;
  wire IO_P1_1_OBUF_8;
  wire IO_P1_3_OBUF_10;
  wire Mmux_LCD_1_mux000012132;
  wire Mmux_LCD_1_mux00003;
  wire Mmux_LCD_1_mux000031_46;
  wire Mmux_LCD_1_mux00006132;
  wire Mmux_LCD_1_mux00009138;
  wire Mmux_LCD_2_mux000012148_49;
  wire Mmux_LCD_2_mux000012200_50;
  wire Mmux_LCD_2_mux00001246_51;
  wire Mmux_LCD_2_mux00003152;
  wire Mmux_LCD_2_mux0000682;
  wire Mmux_LCD_2_mux00009198;
  wire Mrom_auto_capture_mux0000;
  wire N0;
  wire N1;
  wire N100;
  wire N101;
  wire N102;
  wire N103;
  wire N104;
  wire N105;
  wire N106;
  wire N107;
  wire N108;
  wire N109;
  wire N110;
  wire N111;
  wire N112;
  wire N113;
  wire N114;
  wire N115;
  wire N116;
  wire N117;
  wire N118;
  wire N119;
  wire N120;
  wire N121;
  wire N122;
  wire N123;
  wire N124;
  wire N125;
  wire N126;
  wire N127;
  wire N128;
  wire N129;
  wire N130;
  wire N131;
  wire N132;
  wire N133;
  wire N17;
  wire N18;
  wire N19;
  wire N2;
  wire N20;
  wire N21;
  wire N22;
  wire N23;
  wire N24;
  wire N34;
  wire N36;
  wire N38;
  wire N4;
  wire N43;
  wire N5;
  wire N50;
  wire N52;
  wire N54;
  wire N56;
  wire N58;
  wire N60;
  wire N62;
  wire N64;
  wire N68;
  wire N70;
  wire N72;
  wire N78;
  wire N80;
  wire N82;
  wire N83;
  wire N84;
  wire N85;
  wire N86;
  wire N87;
  wire N88;
  wire N89;
  wire N90;
  wire N91;
  wire N92;
  wire N93;
  wire N94;
  wire N95;
  wire N96;
  wire N97;
  wire N98;
  wire N99;
  wire \Result<0>1 ;
  wire \Result<1>1 ;
  wire SevenSegment_0_OBUF_158;
  wire SevenSegment_1_OBUF_159;
  wire SevenSegment_2_OBUF_160;
  wire SevenSegment_3_OBUF_161;
  wire SevenSegment_4_OBUF_162;
  wire SevenSegment_5_OBUF_163;
  wire SevenSegment_6_OBUF_164;
  wire SevenSegment_7_OBUF_165;
  wire auto_capture_169;
  wire auto_capture_start_170;
  wire auto_capture_start_cmp_eq0000;
  wire clk_BUFGP_173;
  wire \debounce_inc/OUT_175 ;
  wire \debounce_inc/OUT_and0000 ;
  wire \debounce_inc/OUT_and00004_177 ;
  wire \debounce_inc/OUT_and00009_178 ;
  wire \debounce_inc/OUT_or0000_inv ;
  wire \debounce_inc/OUT_or0000_inv12_180 ;
  wire \debounce_inc/OUT_or0000_inv25_181 ;
  wire \debounce_rst/OUT_190 ;
  wire \debounce_rst/OUT_and0000 ;
  wire \debounce_rst/OUT_and00004_192 ;
  wire \debounce_rst/OUT_and00009_193 ;
  wire \debounce_rst/OUT_or0000_inv ;
  wire \debounce_rst/OUT_or0000_inv12_195 ;
  wire \debounce_rst/OUT_or0000_inv25_196 ;
  wire \debounce_start/OUT_205 ;
  wire \debounce_start/OUT_and0000 ;
  wire \debounce_start/OUT_and00004_207 ;
  wire \debounce_start/OUT_and00009_208 ;
  wire \debounce_start/OUT_or0000_inv ;
  wire \debounce_start/OUT_or0000_inv12_210 ;
  wire \debounce_start/OUT_or0000_inv25_211 ;
  wire \dht11_driver/Madd_clock_count_share0000_cy<10>_rt_222 ;
  wire \dht11_driver/Madd_clock_count_share0000_cy<11>_rt_224 ;
  wire \dht11_driver/Madd_clock_count_share0000_cy<12>_rt_226 ;
  wire \dht11_driver/Madd_clock_count_share0000_cy<13>_rt_228 ;
  wire \dht11_driver/Madd_clock_count_share0000_cy<14>_rt_230 ;
  wire \dht11_driver/Madd_clock_count_share0000_cy<15>_rt_232 ;
  wire \dht11_driver/Madd_clock_count_share0000_cy<16>_rt_234 ;
  wire \dht11_driver/Madd_clock_count_share0000_cy<17>_rt_236 ;
  wire \dht11_driver/Madd_clock_count_share0000_cy<18>_rt_238 ;
  wire \dht11_driver/Madd_clock_count_share0000_cy<19>_rt_240 ;
  wire \dht11_driver/Madd_clock_count_share0000_cy<1>_rt_242 ;
  wire \dht11_driver/Madd_clock_count_share0000_cy<20>_rt_244 ;
  wire \dht11_driver/Madd_clock_count_share0000_cy<21>_rt_246 ;
  wire \dht11_driver/Madd_clock_count_share0000_cy<22>_rt_248 ;
  wire \dht11_driver/Madd_clock_count_share0000_cy<23>_rt_250 ;
  wire \dht11_driver/Madd_clock_count_share0000_cy<24>_rt_252 ;
  wire \dht11_driver/Madd_clock_count_share0000_cy<25>_rt_254 ;
  wire \dht11_driver/Madd_clock_count_share0000_cy<26>_rt_256 ;
  wire \dht11_driver/Madd_clock_count_share0000_cy<27>_rt_258 ;
  wire \dht11_driver/Madd_clock_count_share0000_cy<28>_rt_260 ;
  wire \dht11_driver/Madd_clock_count_share0000_cy<29>_rt_262 ;
  wire \dht11_driver/Madd_clock_count_share0000_cy<2>_rt_264 ;
  wire \dht11_driver/Madd_clock_count_share0000_cy<30>_rt_266 ;
  wire \dht11_driver/Madd_clock_count_share0000_cy<3>_rt_268 ;
  wire \dht11_driver/Madd_clock_count_share0000_cy<4>_rt_270 ;
  wire \dht11_driver/Madd_clock_count_share0000_cy<5>_rt_272 ;
  wire \dht11_driver/Madd_clock_count_share0000_cy<6>_rt_274 ;
  wire \dht11_driver/Madd_clock_count_share0000_cy<7>_rt_276 ;
  wire \dht11_driver/Madd_clock_count_share0000_cy<8>_rt_278 ;
  wire \dht11_driver/Madd_clock_count_share0000_cy<9>_rt_280 ;
  wire \dht11_driver/Madd_clock_count_share0000_xor<31>_rt_282 ;
  wire \dht11_driver/Madd_data_count_addsub0000_cy<10>_rt_285 ;
  wire \dht11_driver/Madd_data_count_addsub0000_cy<11>_rt_287 ;
  wire \dht11_driver/Madd_data_count_addsub0000_cy<12>_rt_289 ;
  wire \dht11_driver/Madd_data_count_addsub0000_cy<13>_rt_291 ;
  wire \dht11_driver/Madd_data_count_addsub0000_cy<14>_rt_293 ;
  wire \dht11_driver/Madd_data_count_addsub0000_cy<15>_rt_295 ;
  wire \dht11_driver/Madd_data_count_addsub0000_cy<16>_rt_297 ;
  wire \dht11_driver/Madd_data_count_addsub0000_cy<17>_rt_299 ;
  wire \dht11_driver/Madd_data_count_addsub0000_cy<18>_rt_301 ;
  wire \dht11_driver/Madd_data_count_addsub0000_cy<19>_rt_303 ;
  wire \dht11_driver/Madd_data_count_addsub0000_cy<1>_rt_305 ;
  wire \dht11_driver/Madd_data_count_addsub0000_cy<20>_rt_307 ;
  wire \dht11_driver/Madd_data_count_addsub0000_cy<21>_rt_309 ;
  wire \dht11_driver/Madd_data_count_addsub0000_cy<22>_rt_311 ;
  wire \dht11_driver/Madd_data_count_addsub0000_cy<23>_rt_313 ;
  wire \dht11_driver/Madd_data_count_addsub0000_cy<24>_rt_315 ;
  wire \dht11_driver/Madd_data_count_addsub0000_cy<25>_rt_317 ;
  wire \dht11_driver/Madd_data_count_addsub0000_cy<26>_rt_319 ;
  wire \dht11_driver/Madd_data_count_addsub0000_cy<27>_rt_321 ;
  wire \dht11_driver/Madd_data_count_addsub0000_cy<28>_rt_323 ;
  wire \dht11_driver/Madd_data_count_addsub0000_cy<29>_rt_325 ;
  wire \dht11_driver/Madd_data_count_addsub0000_cy<2>_rt_327 ;
  wire \dht11_driver/Madd_data_count_addsub0000_cy<30>_rt_329 ;
  wire \dht11_driver/Madd_data_count_addsub0000_cy<3>_rt_331 ;
  wire \dht11_driver/Madd_data_count_addsub0000_cy<4>_rt_333 ;
  wire \dht11_driver/Madd_data_count_addsub0000_cy<5>_rt_335 ;
  wire \dht11_driver/Madd_data_count_addsub0000_cy<6>_rt_337 ;
  wire \dht11_driver/Madd_data_count_addsub0000_cy<7>_rt_339 ;
  wire \dht11_driver/Madd_data_count_addsub0000_cy<8>_rt_341 ;
  wire \dht11_driver/Madd_data_count_addsub0000_cy<9>_rt_343 ;
  wire \dht11_driver/Madd_data_count_addsub0000_xor<31>_rt_345 ;
  wire \dht11_driver/Madd_global_count_addsub0000_cy<10>_rt_348 ;
  wire \dht11_driver/Madd_global_count_addsub0000_cy<11>_rt_350 ;
  wire \dht11_driver/Madd_global_count_addsub0000_cy<12>_rt_352 ;
  wire \dht11_driver/Madd_global_count_addsub0000_cy<13>_rt_354 ;
  wire \dht11_driver/Madd_global_count_addsub0000_cy<14>_rt_356 ;
  wire \dht11_driver/Madd_global_count_addsub0000_cy<15>_rt_358 ;
  wire \dht11_driver/Madd_global_count_addsub0000_cy<16>_rt_360 ;
  wire \dht11_driver/Madd_global_count_addsub0000_cy<17>_rt_362 ;
  wire \dht11_driver/Madd_global_count_addsub0000_cy<18>_rt_364 ;
  wire \dht11_driver/Madd_global_count_addsub0000_cy<19>_rt_366 ;
  wire \dht11_driver/Madd_global_count_addsub0000_cy<1>_rt_368 ;
  wire \dht11_driver/Madd_global_count_addsub0000_cy<20>_rt_370 ;
  wire \dht11_driver/Madd_global_count_addsub0000_cy<21>_rt_372 ;
  wire \dht11_driver/Madd_global_count_addsub0000_cy<22>_rt_374 ;
  wire \dht11_driver/Madd_global_count_addsub0000_cy<23>_rt_376 ;
  wire \dht11_driver/Madd_global_count_addsub0000_cy<24>_rt_378 ;
  wire \dht11_driver/Madd_global_count_addsub0000_cy<25>_rt_380 ;
  wire \dht11_driver/Madd_global_count_addsub0000_cy<26>_rt_382 ;
  wire \dht11_driver/Madd_global_count_addsub0000_cy<27>_rt_384 ;
  wire \dht11_driver/Madd_global_count_addsub0000_cy<28>_rt_386 ;
  wire \dht11_driver/Madd_global_count_addsub0000_cy<29>_rt_388 ;
  wire \dht11_driver/Madd_global_count_addsub0000_cy<2>_rt_390 ;
  wire \dht11_driver/Madd_global_count_addsub0000_cy<30>_rt_392 ;
  wire \dht11_driver/Madd_global_count_addsub0000_cy<3>_rt_394 ;
  wire \dht11_driver/Madd_global_count_addsub0000_cy<4>_rt_396 ;
  wire \dht11_driver/Madd_global_count_addsub0000_cy<5>_rt_398 ;
  wire \dht11_driver/Madd_global_count_addsub0000_cy<6>_rt_400 ;
  wire \dht11_driver/Madd_global_count_addsub0000_cy<7>_rt_402 ;
  wire \dht11_driver/Madd_global_count_addsub0000_cy<8>_rt_404 ;
  wire \dht11_driver/Madd_global_count_addsub0000_cy<9>_rt_406 ;
  wire \dht11_driver/Madd_global_count_addsub0000_xor<31>_rt_408 ;
  wire \dht11_driver/Mcompar_data_23_cmp_gt0000_cy<1>_rt_413 ;
  wire \dht11_driver/Mcompar_data_23_cmp_gt0000_cy<3>_rt_416 ;
  wire \dht11_driver/Mcompar_data_23_cmp_gt0000_lut[0] ;
  wire \dht11_driver/Mcompar_data_23_cmp_gt0000_lut[10] ;
  wire \dht11_driver/Mcompar_data_23_cmp_gt0000_lut[11] ;
  wire \dht11_driver/Mcompar_data_23_cmp_gt0000_lut[2] ;
  wire \dht11_driver/Mcompar_data_23_cmp_gt0000_lut[4] ;
  wire \dht11_driver/Mcompar_data_23_cmp_gt0000_lut[5] ;
  wire \dht11_driver/Mcompar_data_23_cmp_gt0000_lut[6] ;
  wire \dht11_driver/Mcompar_data_23_cmp_gt0000_lut[7] ;
  wire \dht11_driver/Mcompar_data_23_cmp_gt0000_lut[8] ;
  wire \dht11_driver/Mcompar_data_23_cmp_gt0000_lut[9] ;
  wire \dht11_driver/Mcompar_state_cmp_gt0000_cy<1>_rt_437 ;
  wire \dht11_driver/Mcompar_state_cmp_gt0000_cy<5>_rt_442 ;
  wire \dht11_driver/Mcompar_state_cmp_gt0000_lut[0] ;
  wire \dht11_driver/Mcompar_state_cmp_gt0000_lut[10] ;
  wire \dht11_driver/Mcompar_state_cmp_gt0000_lut[11] ;
  wire \dht11_driver/Mcompar_state_cmp_gt0000_lut[2] ;
  wire \dht11_driver/Mcompar_state_cmp_gt0000_lut[3] ;
  wire \dht11_driver/Mcompar_state_cmp_gt0000_lut[4] ;
  wire \dht11_driver/Mcompar_state_cmp_gt0000_lut[6] ;
  wire \dht11_driver/Mcompar_state_cmp_gt0000_lut[7] ;
  wire \dht11_driver/Mcompar_state_cmp_gt0000_lut[8] ;
  wire \dht11_driver/Mcompar_state_cmp_gt0000_lut[9] ;
  wire \dht11_driver/Mtridata_data_out_457 ;
  wire \dht11_driver/Mtridata_data_out_and0000 ;
  wire \dht11_driver/Mtridata_data_out_mux0000 ;
  wire \dht11_driver/Mtrien_data_out_460 ;
  wire \dht11_driver/Mtrien_data_out_mux0000 ;
  wire \dht11_driver/clock_count_mux0000<0>113_495 ;
  wire \dht11_driver/clock_count_mux0000<0>127_496 ;
  wire \dht11_driver/clock_count_or0000 ;
  wire \dht11_driver/clock_count_or00001_529 ;
  wire \dht11_driver/data[0] ;
  wire \dht11_driver/data_0_not0001 ;
  wire \dht11_driver/data[1] ;
  wire \dht11_driver/data[16] ;
  wire \dht11_driver/data_16_not0001 ;
  wire \dht11_driver/data[17] ;
  wire \dht11_driver/data_17_not0001 ;
  wire \dht11_driver/data[18] ;
  wire \dht11_driver/data_18_not0001 ;
  wire \dht11_driver/data[19] ;
  wire \dht11_driver/data_19_not0001 ;
  wire \dht11_driver/data_1_not0001 ;
  wire \dht11_driver/data[2] ;
  wire \dht11_driver/data[20] ;
  wire \dht11_driver/data_20_not0001 ;
  wire \dht11_driver/data[21] ;
  wire \dht11_driver/data_21_not0001 ;
  wire \dht11_driver/data[22] ;
  wire \dht11_driver/data_22_not0001 ;
  wire \dht11_driver/data[23] ;
  wire \dht11_driver/data_23_cmp_gt0000 ;
  wire \dht11_driver/data_23_not0001 ;
  wire \dht11_driver/data_2_not0001 ;
  wire \dht11_driver/data[3] ;
  wire \dht11_driver/data_3_not0001 ;
  wire \dht11_driver/data[4] ;
  wire \dht11_driver/data_4_not0001 ;
  wire \dht11_driver/data[5] ;
  wire \dht11_driver/data_5_not0001 ;
  wire \dht11_driver/data[6] ;
  wire \dht11_driver/data_6_not0001 ;
  wire \dht11_driver/data[7] ;
  wire \dht11_driver/data_7_not0001 ;
  wire \dht11_driver/data_out ;
  wire \dht11_driver/direction_692 ;
  wire \dht11_driver/direction_mux0000_693 ;
  wire \dht11_driver/rst_n_inv ;
  wire \dht11_driver/state_FSM_FFd1_807 ;
  wire \dht11_driver/state_FSM_FFd1-In ;
  wire \dht11_driver/state_FSM_FFd10_809 ;
  wire \dht11_driver/state_FSM_FFd10-In ;
  wire \dht11_driver/state_FSM_FFd11_811 ;
  wire \dht11_driver/state_FSM_FFd11-In_812 ;
  wire \dht11_driver/state_FSM_FFd2_813 ;
  wire \dht11_driver/state_FSM_FFd2-In_814 ;
  wire \dht11_driver/state_FSM_FFd3_815 ;
  wire \dht11_driver/state_FSM_FFd3-In ;
  wire \dht11_driver/state_FSM_FFd4_817 ;
  wire \dht11_driver/state_FSM_FFd4-In_818 ;
  wire \dht11_driver/state_FSM_FFd5_819 ;
  wire \dht11_driver/state_FSM_FFd5-In ;
  wire \dht11_driver/state_FSM_FFd6_821 ;
  wire \dht11_driver/state_FSM_FFd6-In ;
  wire \dht11_driver/state_FSM_FFd7_823 ;
  wire \dht11_driver/state_FSM_FFd7-In ;
  wire \dht11_driver/state_FSM_FFd8_825 ;
  wire \dht11_driver/state_FSM_FFd8-In ;
  wire \dht11_driver/state_FSM_FFd9_827 ;
  wire \dht11_driver/state_FSM_FFd9-In ;
  wire \dht11_driver/state_cmp_eq0000 ;
  wire \dht11_driver/state_cmp_eq00004_844 ;
  wire \dht11_driver/state_cmp_eq00009_845 ;
  wire \dht11_driver/state_cmp_eq0001 ;
  wire \dht11_driver/state_cmp_eq00012_847 ;
  wire \dht11_driver/state_cmp_eq000120_848 ;
  wire \dht11_driver/state_cmp_eq0002 ;
  wire \dht11_driver/state_or0000 ;
  wire \dht11_driver/state_or0001 ;
  wire \dht11_driver/state_or0002 ;
  wire \dht11_driver/state_or00021_868 ;
  wire \dht11_driver/state_or0003 ;
  wire \dht11_driver/state_or00031_870 ;
  wire \freqdiv1/Mcount_counter ;
  wire \freqdiv1/Mcount_counter1 ;
  wire \freqdiv1/Mcount_counter10 ;
  wire \freqdiv1/Mcount_counter11 ;
  wire \freqdiv1/Mcount_counter12 ;
  wire \freqdiv1/Mcount_counter13 ;
  wire \freqdiv1/Mcount_counter14 ;
  wire \freqdiv1/Mcount_counter15 ;
  wire \freqdiv1/Mcount_counter16 ;
  wire \freqdiv1/Mcount_counter17 ;
  wire \freqdiv1/Mcount_counter18 ;
  wire \freqdiv1/Mcount_counter19 ;
  wire \freqdiv1/Mcount_counter2 ;
  wire \freqdiv1/Mcount_counter20 ;
  wire \freqdiv1/Mcount_counter21 ;
  wire \freqdiv1/Mcount_counter22 ;
  wire \freqdiv1/Mcount_counter23 ;
  wire \freqdiv1/Mcount_counter3 ;
  wire \freqdiv1/Mcount_counter4 ;
  wire \freqdiv1/Mcount_counter5 ;
  wire \freqdiv1/Mcount_counter6 ;
  wire \freqdiv1/Mcount_counter7 ;
  wire \freqdiv1/Mcount_counter8 ;
  wire \freqdiv1/Mcount_counter9 ;
  wire \freqdiv1/counter_cmp_eq0000 ;
  wire \freqdiv1/counter_cmp_eq0000_inv ;
  wire \freqdiv1/out_clk_reg_983 ;
  wire \freqdiv2/Mcount_counter ;
  wire \freqdiv2/Mcount_counter1 ;
  wire \freqdiv2/Mcount_counter10 ;
  wire \freqdiv2/Mcount_counter11 ;
  wire \freqdiv2/Mcount_counter12 ;
  wire \freqdiv2/Mcount_counter13 ;
  wire \freqdiv2/Mcount_counter14 ;
  wire \freqdiv2/Mcount_counter15 ;
  wire \freqdiv2/Mcount_counter16 ;
  wire \freqdiv2/Mcount_counter17 ;
  wire \freqdiv2/Mcount_counter18 ;
  wire \freqdiv2/Mcount_counter19 ;
  wire \freqdiv2/Mcount_counter2 ;
  wire \freqdiv2/Mcount_counter20 ;
  wire \freqdiv2/Mcount_counter21 ;
  wire \freqdiv2/Mcount_counter22 ;
  wire \freqdiv2/Mcount_counter23 ;
  wire \freqdiv2/Mcount_counter3 ;
  wire \freqdiv2/Mcount_counter4 ;
  wire \freqdiv2/Mcount_counter5 ;
  wire \freqdiv2/Mcount_counter6 ;
  wire \freqdiv2/Mcount_counter7 ;
  wire \freqdiv2/Mcount_counter8 ;
  wire \freqdiv2/Mcount_counter9 ;
  wire \freqdiv2/counter_cmp_eq0000 ;
  wire \freqdiv2/counter_cmp_eq0000_inv ;
  wire \freqdiv2/out_clk_reg_1092 ;
  wire \freqdiv2/out_clk_reg1 ;
  wire \freqdiv2/out_clk_reg_not0001 ;
  wire \freqdiv3/Mcount_counter ;
  wire \freqdiv3/Mcount_counter1 ;
  wire \freqdiv3/Mcount_counter10 ;
  wire \freqdiv3/Mcount_counter11 ;
  wire \freqdiv3/Mcount_counter12 ;
  wire \freqdiv3/Mcount_counter13 ;
  wire \freqdiv3/Mcount_counter14 ;
  wire \freqdiv3/Mcount_counter15 ;
  wire \freqdiv3/Mcount_counter16 ;
  wire \freqdiv3/Mcount_counter17 ;
  wire \freqdiv3/Mcount_counter18 ;
  wire \freqdiv3/Mcount_counter19 ;
  wire \freqdiv3/Mcount_counter2 ;
  wire \freqdiv3/Mcount_counter20 ;
  wire \freqdiv3/Mcount_counter21 ;
  wire \freqdiv3/Mcount_counter22 ;
  wire \freqdiv3/Mcount_counter23 ;
  wire \freqdiv3/Mcount_counter3 ;
  wire \freqdiv3/Mcount_counter4 ;
  wire \freqdiv3/Mcount_counter5 ;
  wire \freqdiv3/Mcount_counter6 ;
  wire \freqdiv3/Mcount_counter7 ;
  wire \freqdiv3/Mcount_counter8 ;
  wire \freqdiv3/Mcount_counter9 ;
  wire \freqdiv3/counter_cmp_eq0000 ;
  wire \freqdiv3/counter_cmp_eq0000_inv ;
  wire \freqdiv3/out_clk_reg_1203 ;
  wire \freqdiv3/out_clk_reg1 ;
  wire \freqdiv3/out_clk_reg_not0001 ;
  wire rst_debounced_inv;
  wire rst_n_dht11_1207;
  wire rst_n_dht11_mux0000;
  wire \sevenSegementDec/Mcount_counter_cy<10>_rt_1211 ;
  wire \sevenSegementDec/Mcount_counter_cy<11>_rt_1213 ;
  wire \sevenSegementDec/Mcount_counter_cy<12>_rt_1215 ;
  wire \sevenSegementDec/Mcount_counter_cy<13>_rt_1217 ;
  wire \sevenSegementDec/Mcount_counter_cy<14>_rt_1219 ;
  wire \sevenSegementDec/Mcount_counter_cy<15>_rt_1221 ;
  wire \sevenSegementDec/Mcount_counter_cy<16>_rt_1223 ;
  wire \sevenSegementDec/Mcount_counter_cy<17>_rt_1225 ;
  wire \sevenSegementDec/Mcount_counter_cy<18>_rt_1227 ;
  wire \sevenSegementDec/Mcount_counter_cy<19>_rt_1229 ;
  wire \sevenSegementDec/Mcount_counter_cy<1>_rt_1231 ;
  wire \sevenSegementDec/Mcount_counter_cy<20>_rt_1233 ;
  wire \sevenSegementDec/Mcount_counter_cy<21>_rt_1235 ;
  wire \sevenSegementDec/Mcount_counter_cy<22>_rt_1237 ;
  wire \sevenSegementDec/Mcount_counter_cy<23>_rt_1239 ;
  wire \sevenSegementDec/Mcount_counter_cy<24>_rt_1241 ;
  wire \sevenSegementDec/Mcount_counter_cy<25>_rt_1243 ;
  wire \sevenSegementDec/Mcount_counter_cy<26>_rt_1245 ;
  wire \sevenSegementDec/Mcount_counter_cy<27>_rt_1247 ;
  wire \sevenSegementDec/Mcount_counter_cy<28>_rt_1249 ;
  wire \sevenSegementDec/Mcount_counter_cy<29>_rt_1251 ;
  wire \sevenSegementDec/Mcount_counter_cy<2>_rt_1253 ;
  wire \sevenSegementDec/Mcount_counter_cy<30>_rt_1255 ;
  wire \sevenSegementDec/Mcount_counter_cy<3>_rt_1257 ;
  wire \sevenSegementDec/Mcount_counter_cy<4>_rt_1259 ;
  wire \sevenSegementDec/Mcount_counter_cy<5>_rt_1261 ;
  wire \sevenSegementDec/Mcount_counter_cy<6>_rt_1263 ;
  wire \sevenSegementDec/Mcount_counter_cy<7>_rt_1265 ;
  wire \sevenSegementDec/Mcount_counter_cy<8>_rt_1267 ;
  wire \sevenSegementDec/Mcount_counter_cy<9>_rt_1269 ;
  wire \sevenSegementDec/Mcount_counter_eqn_0 ;
  wire \sevenSegementDec/Mcount_counter_eqn_1 ;
  wire \sevenSegementDec/Mcount_counter_eqn_10 ;
  wire \sevenSegementDec/Mcount_counter_eqn_11 ;
  wire \sevenSegementDec/Mcount_counter_eqn_12 ;
  wire \sevenSegementDec/Mcount_counter_eqn_13 ;
  wire \sevenSegementDec/Mcount_counter_eqn_14 ;
  wire \sevenSegementDec/Mcount_counter_eqn_15 ;
  wire \sevenSegementDec/Mcount_counter_eqn_16 ;
  wire \sevenSegementDec/Mcount_counter_eqn_17 ;
  wire \sevenSegementDec/Mcount_counter_eqn_18 ;
  wire \sevenSegementDec/Mcount_counter_eqn_19 ;
  wire \sevenSegementDec/Mcount_counter_eqn_2 ;
  wire \sevenSegementDec/Mcount_counter_eqn_20 ;
  wire \sevenSegementDec/Mcount_counter_eqn_21 ;
  wire \sevenSegementDec/Mcount_counter_eqn_22 ;
  wire \sevenSegementDec/Mcount_counter_eqn_23 ;
  wire \sevenSegementDec/Mcount_counter_eqn_24 ;
  wire \sevenSegementDec/Mcount_counter_eqn_25 ;
  wire \sevenSegementDec/Mcount_counter_eqn_26 ;
  wire \sevenSegementDec/Mcount_counter_eqn_27 ;
  wire \sevenSegementDec/Mcount_counter_eqn_28 ;
  wire \sevenSegementDec/Mcount_counter_eqn_29 ;
  wire \sevenSegementDec/Mcount_counter_eqn_3 ;
  wire \sevenSegementDec/Mcount_counter_eqn_30 ;
  wire \sevenSegementDec/Mcount_counter_eqn_31 ;
  wire \sevenSegementDec/Mcount_counter_eqn_4 ;
  wire \sevenSegementDec/Mcount_counter_eqn_5 ;
  wire \sevenSegementDec/Mcount_counter_eqn_6 ;
  wire \sevenSegementDec/Mcount_counter_eqn_7 ;
  wire \sevenSegementDec/Mcount_counter_eqn_8 ;
  wire \sevenSegementDec/Mcount_counter_eqn_9 ;
  wire \sevenSegementDec/Mcount_counter_xor<31>_rt_1303 ;
  wire \sevenSegementDec/inp_and0000 ;
  wire \sevenSegementDec/inp_mux0000<0>17_1374 ;
  wire \sevenSegementDec/inp_mux0000<1>17_1376 ;
  wire \sevenSegementDec/inp_mux0000<2>17_1378 ;
  wire \sevenSegementDec/inp_mux0000<3>17_1380 ;
  wire \sevenSegementDec/output_select_cmp_eq0000 ;
  wire start_dht11_capture;
  wire \the10bitCounter/Mcount_counter_reg_cy<1>_rt_1420 ;
  wire \the10bitCounter/Mcount_counter_reg_cy<2>_rt_1422 ;
  wire \the10bitCounter/Mcount_counter_reg_cy<3>_rt_1424 ;
  wire \the10bitCounter/Mcount_counter_reg_cy<4>_rt_1426 ;
  wire \the10bitCounter/Mcount_counter_reg_cy<5>_rt_1428 ;
  wire \the10bitCounter/Mcount_counter_reg_cy<6>_rt_1430 ;
  wire \the10bitCounter/Mcount_counter_reg_cy<7>_rt_1432 ;
  wire \the10bitCounter/Mcount_counter_reg_cy<8>_rt_1434 ;
  wire \the10bitCounter/Mcount_counter_reg_xor<9>_rt_1436 ;
  wire \theBinary2BCD/Hundreds_0_cmp_ge0000 ;
  wire \theBinary2BCD/Hundreds_0_cmp_ge0002 ;
  wire \theBinary2BCD/Hundreds_0_mux0001 ;
  wire \theBinary2BCD/Hundreds_0_mux000119_1450 ;
  wire \theBinary2BCD/N10 ;
  wire \theBinary2BCD/N121 ;
  wire \theBinary2BCD/N17 ;
  wire \theBinary2BCD/N2 ;
  wire \theBinary2BCD/N21 ;
  wire \theBinary2BCD/N3 ;
  wire \theBinary2BCD/N6 ;
  wire \theBinary2BCD/N8 ;
  wire \theBinary2BCD/N81 ;
  wire \theBinary2BCD/Tens_0_mux0001 ;
  wire \theBinary2BCD/Tens_mux000310_1482 ;
  wire \theBinary2BCD/Tens_mux000326_1483 ;
  wire \theBinary2BCDhumid/N121 ;
  wire \theBinary2BCDhumid/N17 ;
  wire \theBinary2BCDhumid/N2 ;
  wire \theBinary2BCDhumid/N6 ;
  wire \theBinary2BCDhumid/N8 ;
  wire \theBinary2BCDhumid/N81 ;
  wire \theBinary2BCDtemp/N10 ;
  wire \theBinary2BCDtemp/N121 ;
  wire \theBinary2BCDtemp/N17 ;
  wire \theBinary2BCDtemp/N2 ;
  wire \theBinary2BCDtemp/N6 ;
  wire \theBinary2BCDtemp/N8 ;
  wire \theNewCounter/Mcount_counter_reg_xor<1>_rt_1521 ;
  wire [3 : 0] LCD_1;
  wire [3 : 0] LCD_1_mux0000;
  wire [3 : 0] LCD_2;
  wire [3 : 0] LCD_2_mux0000;
  wire [3 : 0] LCD_3;
  wire [3 : 0] LCD_3_mux0000;
  wire [9 : 0] Result;
  wire [0 : 0] data2a;
  wire [7 : 0] \debounce_inc/shift ;
  wire [7 : 0] \debounce_rst/shift ;
  wire [7 : 0] \debounce_start/shift ;
  wire [30 : 0] \dht11_driver/Madd_clock_count_share0000_cy ;
  wire [0 : 0] \dht11_driver/Madd_clock_count_share0000_lut ;
  wire [30 : 0] \dht11_driver/Madd_data_count_addsub0000_cy ;
  wire [0 : 0] \dht11_driver/Madd_data_count_addsub0000_lut ;
  wire [30 : 0] \dht11_driver/Madd_global_count_addsub0000_cy ;
  wire [0 : 0] \dht11_driver/Madd_global_count_addsub0000_lut ;
  wire [11 : 0] \dht11_driver/Mcompar_data_23_cmp_gt0000_cy ;
  wire [11 : 0] \dht11_driver/Mcompar_state_cmp_gt0000_cy ;
  wire [31 : 0] \dht11_driver/clock_count ;
  wire [31 : 0] \dht11_driver/clock_count_mux0000 ;
  wire [31 : 0] \dht11_driver/clock_count_share0000 ;
  wire [31 : 0] \dht11_driver/data_count ;
  wire [31 : 0] \dht11_driver/data_count_addsub0000 ;
  wire [31 : 0] \dht11_driver/data_count_mux0000 ;
  wire [31 : 0] \dht11_driver/global_count ;
  wire [31 : 0] \dht11_driver/global_count_addsub0000 ;
  wire [31 : 0] \dht11_driver/global_count_mux0000 ;
  wire [7 : 0] \dht11_driver/output_humidity ;
  wire [7 : 0] \dht11_driver/output_temp ;
  wire [6 : 0] \dht11_driver/state_cmp_eq00001_wg_cy ;
  wire [6 : 0] \dht11_driver/state_cmp_eq00001_wg_lut ;
  wire [6 : 0] \dht11_driver/state_cmp_eq0002_wg_cy ;
  wire [7 : 0] \dht11_driver/state_cmp_eq0002_wg_lut ;
  wire [3 : 0] \dht11_driver/status ;
  wire [22 : 0] \freqdiv1/Mcount_counter_cy ;
  wire [23 : 0] \freqdiv1/Mcount_counter_lut ;
  wire [23 : 0] \freqdiv1/counter ;
  wire [4 : 0] \freqdiv1/counter_cmp_eq0000_wg_cy ;
  wire [5 : 0] \freqdiv1/counter_cmp_eq0000_wg_lut ;
  wire [22 : 0] \freqdiv2/Mcount_counter_cy ;
  wire [23 : 0] \freqdiv2/Mcount_counter_lut ;
  wire [23 : 0] \freqdiv2/counter ;
  wire [4 : 0] \freqdiv2/counter_cmp_eq0000_wg_cy ;
  wire [5 : 0] \freqdiv2/counter_cmp_eq0000_wg_lut ;
  wire [22 : 0] \freqdiv3/Mcount_counter_cy ;
  wire [23 : 0] \freqdiv3/Mcount_counter_lut ;
  wire [23 : 0] \freqdiv3/counter ;
  wire [4 : 0] \freqdiv3/counter_cmp_eq0000_wg_cy ;
  wire [5 : 0] \freqdiv3/counter_cmp_eq0000_wg_lut ;
  wire [30 : 0] \sevenSegementDec/Mcount_counter_cy ;
  wire [0 : 0] \sevenSegementDec/Mcount_counter_lut ;
  wire [31 : 0] \sevenSegementDec/Result ;
  wire [31 : 0] \sevenSegementDec/counter ;
  wire [3 : 0] \sevenSegementDec/inp ;
  wire [3 : 0] \sevenSegementDec/inp_mux0000 ;
  wire [6 : 0] \sevenSegementDec/out ;
  wire [6 : 0] \sevenSegementDec/out_mux0000 ;
  wire [2 : 0] \sevenSegementDec/output_select ;
  wire [6 : 0] \sevenSegementDec/output_select_cmp_eq0000_wg_cy ;
  wire [7 : 0] \sevenSegementDec/output_select_cmp_eq0000_wg_lut ;
  wire [2 : 0] \sevenSegementDec/output_select_mux0000 ;
  wire [8 : 0] \the10bitCounter/Mcount_counter_reg_cy ;
  wire [0 : 0] \the10bitCounter/Mcount_counter_reg_lut ;
  wire [9 : 0] \the10bitCounter/counter_reg ;
  wire [2 : 2] \theBinary2BCD/Madd__add0000_cy ;
  wire [3 : 2] \theBinary2BCD/Madd__add0002_lut ;
  wire [0 : 0] \theBinary2BCD/Madd__add0003_cy ;
  wire [3 : 2] \theBinary2BCD/Madd__add0004_lut ;
  wire [1 : 0] \theBinary2BCD/Madd__add0005_cy ;
  wire [3 : 2] \theBinary2BCD/Madd__add0006_lut ;
  wire [1 : 0] \theBinary2BCD/Madd__add0007_cy ;
  wire [3 : 2] \theBinary2BCD/Madd__add0007_lut ;
  wire [3 : 2] \theBinary2BCD/Madd__add0008_lut ;
  wire [1 : 0] \theBinary2BCD/Madd__add0010_cy ;
  wire [3 : 3] \theBinary2BCD/Madd__add0010_lut ;
  wire [3 : 2] \theBinary2BCD/Madd__add0011_lut ;
  wire [0 : 0] \theBinary2BCDhumid/Madd__add0005_cy ;
  wire [3 : 2] \theBinary2BCDhumid/Madd__add0006_lut ;
  wire [1 : 0] \theBinary2BCDhumid/Madd__add0007_cy ;
  wire [3 : 2] \theBinary2BCDhumid/Madd__add0008_lut ;
  wire [1 : 0] \theBinary2BCDhumid/Madd__add0010_cy ;
  wire [3 : 3] \theBinary2BCDhumid/Madd__add0010_lut ;
  wire [3 : 2] \theBinary2BCDhumid/Madd__add0011_lut ;
  wire [0 : 0] \theBinary2BCDtemp/Madd__add0005_cy ;
  wire [3 : 2] \theBinary2BCDtemp/Madd__add0006_lut ;
  wire [1 : 0] \theBinary2BCDtemp/Madd__add0007_cy ;
  wire [3 : 2] \theBinary2BCDtemp/Madd__add0008_lut ;
  wire [0 : 0] \theBinary2BCDtemp/Madd__add0010_cy ;
  wire [3 : 3] \theBinary2BCDtemp/Madd__add0010_lut ;
  wire [3 : 2] \theBinary2BCDtemp/Madd__add0011_lut ;
  wire [0 : 0] \theNewCounter/Mcount_counter_reg_cy ;
  wire [0 : 0] \theNewCounter/Mcount_counter_reg_lut ;
  wire [1 : 0] \theNewCounter/counter_reg ;
  GND   XST_GND (
    .G(IO_P1_1_OBUF_8)
  );
  VCC   XST_VCC (
    .P(IO_P1_3_OBUF_10)
  );
  FDE   auto_capture_start (
    .C(\freqdiv1/out_clk_reg_983 ),
    .CE(BTN_4_IBUF_6),
    .D(auto_capture_start_cmp_eq0000),
    .Q(auto_capture_start_170)
  );
  FDE   rst_n_dht11 (
    .C(clk_BUFGP_173),
    .CE(\debounce_rst/OUT_190 ),
    .D(rst_n_dht11_mux0000),
    .Q(rst_n_dht11_1207)
  );
  FDC   auto_capture (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(Mrom_auto_capture_mux0000),
    .Q(auto_capture_169)
  );
  FDE   LCD_3_0 (
    .C(clk_BUFGP_173),
    .CE(\debounce_rst/OUT_190 ),
    .D(LCD_3_mux0000[0]),
    .Q(LCD_3[0])
  );
  FDE   LCD_3_1 (
    .C(clk_BUFGP_173),
    .CE(\debounce_rst/OUT_190 ),
    .D(LCD_3_mux0000[1]),
    .Q(LCD_3[1])
  );
  FDE   LCD_3_2 (
    .C(clk_BUFGP_173),
    .CE(\debounce_rst/OUT_190 ),
    .D(LCD_3_mux0000[2]),
    .Q(LCD_3[2])
  );
  FDE   LCD_3_3 (
    .C(clk_BUFGP_173),
    .CE(\debounce_rst/OUT_190 ),
    .D(LCD_3_mux0000[3]),
    .Q(LCD_3[3])
  );
  FDE   LCD_1_0 (
    .C(clk_BUFGP_173),
    .CE(\debounce_rst/OUT_190 ),
    .D(LCD_1_mux0000[0]),
    .Q(LCD_1[0])
  );
  FDE   LCD_1_1 (
    .C(clk_BUFGP_173),
    .CE(\debounce_rst/OUT_190 ),
    .D(LCD_1_mux0000[1]),
    .Q(LCD_1[1])
  );
  FDE   LCD_1_2 (
    .C(clk_BUFGP_173),
    .CE(\debounce_rst/OUT_190 ),
    .D(LCD_1_mux0000[2]),
    .Q(LCD_1[2])
  );
  FDE   LCD_1_3 (
    .C(clk_BUFGP_173),
    .CE(\debounce_rst/OUT_190 ),
    .D(LCD_1_mux0000[3]),
    .Q(LCD_1[3])
  );
  FDE   LCD_2_0 (
    .C(clk_BUFGP_173),
    .CE(\debounce_rst/OUT_190 ),
    .D(LCD_2_mux0000[0]),
    .Q(LCD_2[0])
  );
  FDE   LCD_2_1 (
    .C(clk_BUFGP_173),
    .CE(\debounce_rst/OUT_190 ),
    .D(LCD_2_mux0000[1]),
    .Q(LCD_2[1])
  );
  FDE   LCD_2_2 (
    .C(clk_BUFGP_173),
    .CE(\debounce_rst/OUT_190 ),
    .D(LCD_2_mux0000[2]),
    .Q(LCD_2[2])
  );
  FDE   LCD_2_3 (
    .C(clk_BUFGP_173),
    .CE(\debounce_rst/OUT_190 ),
    .D(LCD_2_mux0000[3]),
    .Q(LCD_2[3])
  );
  FDCE   \freqdiv3/out_clk_reg  (
    .C(clk_BUFGP_173),
    .CE(\freqdiv3/counter_cmp_eq0000 ),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv3/out_clk_reg_not0001 ),
    .Q(\freqdiv3/out_clk_reg1 )
  );
  FDCE   \freqdiv2/out_clk_reg  (
    .C(clk_BUFGP_173),
    .CE(\freqdiv2/counter_cmp_eq0000 ),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv2/out_clk_reg_not0001 ),
    .Q(\freqdiv2/out_clk_reg1 )
  );
  FDCE   \freqdiv1/out_clk_reg  (
    .C(clk_BUFGP_173),
    .CE(\freqdiv1/counter_cmp_eq0000 ),
    .CLR(\BTN<4>_inv ),
    .D(SevenSegment_0_OBUF_158),
    .Q(\freqdiv1/out_clk_reg_983 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv3/Mcount_counter_lut<0>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv3/counter [0]),
    .I2(\freqdiv3/counter_cmp_eq0000 ),
    .O(\freqdiv3/Mcount_counter_lut [0])
  );
  MUXCY   \freqdiv3/Mcount_counter_cy<0>  (
    .CI(\freqdiv3/counter_cmp_eq0000_inv ),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv3/Mcount_counter_lut [0]),
    .O(\freqdiv3/Mcount_counter_cy [0])
  );
  XORCY   \freqdiv3/Mcount_counter_xor<0>  (
    .CI(\freqdiv3/counter_cmp_eq0000_inv ),
    .LI(\freqdiv3/Mcount_counter_lut [0]),
    .O(\freqdiv3/Mcount_counter )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv3/Mcount_counter_lut<1>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv3/counter [1]),
    .I2(\freqdiv3/counter_cmp_eq0000 ),
    .O(\freqdiv3/Mcount_counter_lut [1])
  );
  MUXCY   \freqdiv3/Mcount_counter_cy<1>  (
    .CI(\freqdiv3/Mcount_counter_cy [0]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv3/Mcount_counter_lut [1]),
    .O(\freqdiv3/Mcount_counter_cy [1])
  );
  XORCY   \freqdiv3/Mcount_counter_xor<1>  (
    .CI(\freqdiv3/Mcount_counter_cy [0]),
    .LI(\freqdiv3/Mcount_counter_lut [1]),
    .O(\freqdiv3/Mcount_counter1 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv3/Mcount_counter_lut<2>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv3/counter [2]),
    .I2(\freqdiv3/counter_cmp_eq0000 ),
    .O(\freqdiv3/Mcount_counter_lut [2])
  );
  MUXCY   \freqdiv3/Mcount_counter_cy<2>  (
    .CI(\freqdiv3/Mcount_counter_cy [1]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv3/Mcount_counter_lut [2]),
    .O(\freqdiv3/Mcount_counter_cy [2])
  );
  XORCY   \freqdiv3/Mcount_counter_xor<2>  (
    .CI(\freqdiv3/Mcount_counter_cy [1]),
    .LI(\freqdiv3/Mcount_counter_lut [2]),
    .O(\freqdiv3/Mcount_counter2 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv3/Mcount_counter_lut<3>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv3/counter [3]),
    .I2(\freqdiv3/counter_cmp_eq0000 ),
    .O(\freqdiv3/Mcount_counter_lut [3])
  );
  MUXCY   \freqdiv3/Mcount_counter_cy<3>  (
    .CI(\freqdiv3/Mcount_counter_cy [2]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv3/Mcount_counter_lut [3]),
    .O(\freqdiv3/Mcount_counter_cy [3])
  );
  XORCY   \freqdiv3/Mcount_counter_xor<3>  (
    .CI(\freqdiv3/Mcount_counter_cy [2]),
    .LI(\freqdiv3/Mcount_counter_lut [3]),
    .O(\freqdiv3/Mcount_counter3 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv3/Mcount_counter_lut<4>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv3/counter [4]),
    .I2(\freqdiv3/counter_cmp_eq0000 ),
    .O(\freqdiv3/Mcount_counter_lut [4])
  );
  MUXCY   \freqdiv3/Mcount_counter_cy<4>  (
    .CI(\freqdiv3/Mcount_counter_cy [3]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv3/Mcount_counter_lut [4]),
    .O(\freqdiv3/Mcount_counter_cy [4])
  );
  XORCY   \freqdiv3/Mcount_counter_xor<4>  (
    .CI(\freqdiv3/Mcount_counter_cy [3]),
    .LI(\freqdiv3/Mcount_counter_lut [4]),
    .O(\freqdiv3/Mcount_counter4 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv3/Mcount_counter_lut<5>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv3/counter [5]),
    .I2(\freqdiv3/counter_cmp_eq0000 ),
    .O(\freqdiv3/Mcount_counter_lut [5])
  );
  MUXCY   \freqdiv3/Mcount_counter_cy<5>  (
    .CI(\freqdiv3/Mcount_counter_cy [4]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv3/Mcount_counter_lut [5]),
    .O(\freqdiv3/Mcount_counter_cy [5])
  );
  XORCY   \freqdiv3/Mcount_counter_xor<5>  (
    .CI(\freqdiv3/Mcount_counter_cy [4]),
    .LI(\freqdiv3/Mcount_counter_lut [5]),
    .O(\freqdiv3/Mcount_counter5 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv3/Mcount_counter_lut<6>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv3/counter [6]),
    .I2(\freqdiv3/counter_cmp_eq0000 ),
    .O(\freqdiv3/Mcount_counter_lut [6])
  );
  MUXCY   \freqdiv3/Mcount_counter_cy<6>  (
    .CI(\freqdiv3/Mcount_counter_cy [5]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv3/Mcount_counter_lut [6]),
    .O(\freqdiv3/Mcount_counter_cy [6])
  );
  XORCY   \freqdiv3/Mcount_counter_xor<6>  (
    .CI(\freqdiv3/Mcount_counter_cy [5]),
    .LI(\freqdiv3/Mcount_counter_lut [6]),
    .O(\freqdiv3/Mcount_counter6 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv3/Mcount_counter_lut<7>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv3/counter [7]),
    .I2(\freqdiv3/counter_cmp_eq0000 ),
    .O(\freqdiv3/Mcount_counter_lut [7])
  );
  MUXCY   \freqdiv3/Mcount_counter_cy<7>  (
    .CI(\freqdiv3/Mcount_counter_cy [6]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv3/Mcount_counter_lut [7]),
    .O(\freqdiv3/Mcount_counter_cy [7])
  );
  XORCY   \freqdiv3/Mcount_counter_xor<7>  (
    .CI(\freqdiv3/Mcount_counter_cy [6]),
    .LI(\freqdiv3/Mcount_counter_lut [7]),
    .O(\freqdiv3/Mcount_counter7 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv3/Mcount_counter_lut<8>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv3/counter [8]),
    .I2(\freqdiv3/counter_cmp_eq0000 ),
    .O(\freqdiv3/Mcount_counter_lut [8])
  );
  MUXCY   \freqdiv3/Mcount_counter_cy<8>  (
    .CI(\freqdiv3/Mcount_counter_cy [7]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv3/Mcount_counter_lut [8]),
    .O(\freqdiv3/Mcount_counter_cy [8])
  );
  XORCY   \freqdiv3/Mcount_counter_xor<8>  (
    .CI(\freqdiv3/Mcount_counter_cy [7]),
    .LI(\freqdiv3/Mcount_counter_lut [8]),
    .O(\freqdiv3/Mcount_counter8 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv3/Mcount_counter_lut<9>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv3/counter [9]),
    .I2(\freqdiv3/counter_cmp_eq0000 ),
    .O(\freqdiv3/Mcount_counter_lut [9])
  );
  MUXCY   \freqdiv3/Mcount_counter_cy<9>  (
    .CI(\freqdiv3/Mcount_counter_cy [8]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv3/Mcount_counter_lut [9]),
    .O(\freqdiv3/Mcount_counter_cy [9])
  );
  XORCY   \freqdiv3/Mcount_counter_xor<9>  (
    .CI(\freqdiv3/Mcount_counter_cy [8]),
    .LI(\freqdiv3/Mcount_counter_lut [9]),
    .O(\freqdiv3/Mcount_counter9 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv3/Mcount_counter_lut<10>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv3/counter [10]),
    .I2(\freqdiv3/counter_cmp_eq0000 ),
    .O(\freqdiv3/Mcount_counter_lut [10])
  );
  MUXCY   \freqdiv3/Mcount_counter_cy<10>  (
    .CI(\freqdiv3/Mcount_counter_cy [9]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv3/Mcount_counter_lut [10]),
    .O(\freqdiv3/Mcount_counter_cy [10])
  );
  XORCY   \freqdiv3/Mcount_counter_xor<10>  (
    .CI(\freqdiv3/Mcount_counter_cy [9]),
    .LI(\freqdiv3/Mcount_counter_lut [10]),
    .O(\freqdiv3/Mcount_counter10 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv3/Mcount_counter_lut<11>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv3/counter [11]),
    .I2(\freqdiv3/counter_cmp_eq0000 ),
    .O(\freqdiv3/Mcount_counter_lut [11])
  );
  MUXCY   \freqdiv3/Mcount_counter_cy<11>  (
    .CI(\freqdiv3/Mcount_counter_cy [10]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv3/Mcount_counter_lut [11]),
    .O(\freqdiv3/Mcount_counter_cy [11])
  );
  XORCY   \freqdiv3/Mcount_counter_xor<11>  (
    .CI(\freqdiv3/Mcount_counter_cy [10]),
    .LI(\freqdiv3/Mcount_counter_lut [11]),
    .O(\freqdiv3/Mcount_counter11 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv3/Mcount_counter_lut<12>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv3/counter [12]),
    .I2(\freqdiv3/counter_cmp_eq0000 ),
    .O(\freqdiv3/Mcount_counter_lut [12])
  );
  MUXCY   \freqdiv3/Mcount_counter_cy<12>  (
    .CI(\freqdiv3/Mcount_counter_cy [11]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv3/Mcount_counter_lut [12]),
    .O(\freqdiv3/Mcount_counter_cy [12])
  );
  XORCY   \freqdiv3/Mcount_counter_xor<12>  (
    .CI(\freqdiv3/Mcount_counter_cy [11]),
    .LI(\freqdiv3/Mcount_counter_lut [12]),
    .O(\freqdiv3/Mcount_counter12 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv3/Mcount_counter_lut<13>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv3/counter [13]),
    .I2(\freqdiv3/counter_cmp_eq0000 ),
    .O(\freqdiv3/Mcount_counter_lut [13])
  );
  MUXCY   \freqdiv3/Mcount_counter_cy<13>  (
    .CI(\freqdiv3/Mcount_counter_cy [12]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv3/Mcount_counter_lut [13]),
    .O(\freqdiv3/Mcount_counter_cy [13])
  );
  XORCY   \freqdiv3/Mcount_counter_xor<13>  (
    .CI(\freqdiv3/Mcount_counter_cy [12]),
    .LI(\freqdiv3/Mcount_counter_lut [13]),
    .O(\freqdiv3/Mcount_counter13 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv3/Mcount_counter_lut<14>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv3/counter [14]),
    .I2(\freqdiv3/counter_cmp_eq0000 ),
    .O(\freqdiv3/Mcount_counter_lut [14])
  );
  MUXCY   \freqdiv3/Mcount_counter_cy<14>  (
    .CI(\freqdiv3/Mcount_counter_cy [13]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv3/Mcount_counter_lut [14]),
    .O(\freqdiv3/Mcount_counter_cy [14])
  );
  XORCY   \freqdiv3/Mcount_counter_xor<14>  (
    .CI(\freqdiv3/Mcount_counter_cy [13]),
    .LI(\freqdiv3/Mcount_counter_lut [14]),
    .O(\freqdiv3/Mcount_counter14 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv3/Mcount_counter_lut<15>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv3/counter [15]),
    .I2(\freqdiv3/counter_cmp_eq0000 ),
    .O(\freqdiv3/Mcount_counter_lut [15])
  );
  MUXCY   \freqdiv3/Mcount_counter_cy<15>  (
    .CI(\freqdiv3/Mcount_counter_cy [14]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv3/Mcount_counter_lut [15]),
    .O(\freqdiv3/Mcount_counter_cy [15])
  );
  XORCY   \freqdiv3/Mcount_counter_xor<15>  (
    .CI(\freqdiv3/Mcount_counter_cy [14]),
    .LI(\freqdiv3/Mcount_counter_lut [15]),
    .O(\freqdiv3/Mcount_counter15 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv3/Mcount_counter_lut<16>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv3/counter [16]),
    .I2(\freqdiv3/counter_cmp_eq0000 ),
    .O(\freqdiv3/Mcount_counter_lut [16])
  );
  MUXCY   \freqdiv3/Mcount_counter_cy<16>  (
    .CI(\freqdiv3/Mcount_counter_cy [15]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv3/Mcount_counter_lut [16]),
    .O(\freqdiv3/Mcount_counter_cy [16])
  );
  XORCY   \freqdiv3/Mcount_counter_xor<16>  (
    .CI(\freqdiv3/Mcount_counter_cy [15]),
    .LI(\freqdiv3/Mcount_counter_lut [16]),
    .O(\freqdiv3/Mcount_counter16 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv3/Mcount_counter_lut<17>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv3/counter [17]),
    .I2(\freqdiv3/counter_cmp_eq0000 ),
    .O(\freqdiv3/Mcount_counter_lut [17])
  );
  MUXCY   \freqdiv3/Mcount_counter_cy<17>  (
    .CI(\freqdiv3/Mcount_counter_cy [16]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv3/Mcount_counter_lut [17]),
    .O(\freqdiv3/Mcount_counter_cy [17])
  );
  XORCY   \freqdiv3/Mcount_counter_xor<17>  (
    .CI(\freqdiv3/Mcount_counter_cy [16]),
    .LI(\freqdiv3/Mcount_counter_lut [17]),
    .O(\freqdiv3/Mcount_counter17 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv3/Mcount_counter_lut<18>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv3/counter [18]),
    .I2(\freqdiv3/counter_cmp_eq0000 ),
    .O(\freqdiv3/Mcount_counter_lut [18])
  );
  MUXCY   \freqdiv3/Mcount_counter_cy<18>  (
    .CI(\freqdiv3/Mcount_counter_cy [17]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv3/Mcount_counter_lut [18]),
    .O(\freqdiv3/Mcount_counter_cy [18])
  );
  XORCY   \freqdiv3/Mcount_counter_xor<18>  (
    .CI(\freqdiv3/Mcount_counter_cy [17]),
    .LI(\freqdiv3/Mcount_counter_lut [18]),
    .O(\freqdiv3/Mcount_counter18 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv3/Mcount_counter_lut<19>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv3/counter [19]),
    .I2(\freqdiv3/counter_cmp_eq0000 ),
    .O(\freqdiv3/Mcount_counter_lut [19])
  );
  MUXCY   \freqdiv3/Mcount_counter_cy<19>  (
    .CI(\freqdiv3/Mcount_counter_cy [18]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv3/Mcount_counter_lut [19]),
    .O(\freqdiv3/Mcount_counter_cy [19])
  );
  XORCY   \freqdiv3/Mcount_counter_xor<19>  (
    .CI(\freqdiv3/Mcount_counter_cy [18]),
    .LI(\freqdiv3/Mcount_counter_lut [19]),
    .O(\freqdiv3/Mcount_counter19 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv3/Mcount_counter_lut<20>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv3/counter [20]),
    .I2(\freqdiv3/counter_cmp_eq0000 ),
    .O(\freqdiv3/Mcount_counter_lut [20])
  );
  MUXCY   \freqdiv3/Mcount_counter_cy<20>  (
    .CI(\freqdiv3/Mcount_counter_cy [19]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv3/Mcount_counter_lut [20]),
    .O(\freqdiv3/Mcount_counter_cy [20])
  );
  XORCY   \freqdiv3/Mcount_counter_xor<20>  (
    .CI(\freqdiv3/Mcount_counter_cy [19]),
    .LI(\freqdiv3/Mcount_counter_lut [20]),
    .O(\freqdiv3/Mcount_counter20 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv3/Mcount_counter_lut<21>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv3/counter [21]),
    .I2(\freqdiv3/counter_cmp_eq0000 ),
    .O(\freqdiv3/Mcount_counter_lut [21])
  );
  MUXCY   \freqdiv3/Mcount_counter_cy<21>  (
    .CI(\freqdiv3/Mcount_counter_cy [20]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv3/Mcount_counter_lut [21]),
    .O(\freqdiv3/Mcount_counter_cy [21])
  );
  XORCY   \freqdiv3/Mcount_counter_xor<21>  (
    .CI(\freqdiv3/Mcount_counter_cy [20]),
    .LI(\freqdiv3/Mcount_counter_lut [21]),
    .O(\freqdiv3/Mcount_counter21 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv3/Mcount_counter_lut<22>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv3/counter [22]),
    .I2(\freqdiv3/counter_cmp_eq0000 ),
    .O(\freqdiv3/Mcount_counter_lut [22])
  );
  MUXCY   \freqdiv3/Mcount_counter_cy<22>  (
    .CI(\freqdiv3/Mcount_counter_cy [21]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv3/Mcount_counter_lut [22]),
    .O(\freqdiv3/Mcount_counter_cy [22])
  );
  XORCY   \freqdiv3/Mcount_counter_xor<22>  (
    .CI(\freqdiv3/Mcount_counter_cy [21]),
    .LI(\freqdiv3/Mcount_counter_lut [22]),
    .O(\freqdiv3/Mcount_counter22 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \freqdiv3/Mcount_counter_lut<23>  (
    .I0(\freqdiv3/counter_cmp_eq0000 ),
    .I1(\freqdiv3/counter [23]),
    .I2(IO_P1_1_OBUF_8),
    .O(\freqdiv3/Mcount_counter_lut [23])
  );
  XORCY   \freqdiv3/Mcount_counter_xor<23>  (
    .CI(\freqdiv3/Mcount_counter_cy [22]),
    .LI(\freqdiv3/Mcount_counter_lut [23]),
    .O(\freqdiv3/Mcount_counter23 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv2/Mcount_counter_lut<0>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv2/counter [0]),
    .I2(\freqdiv2/counter_cmp_eq0000 ),
    .O(\freqdiv2/Mcount_counter_lut [0])
  );
  MUXCY   \freqdiv2/Mcount_counter_cy<0>  (
    .CI(\freqdiv2/counter_cmp_eq0000_inv ),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv2/Mcount_counter_lut [0]),
    .O(\freqdiv2/Mcount_counter_cy [0])
  );
  XORCY   \freqdiv2/Mcount_counter_xor<0>  (
    .CI(\freqdiv2/counter_cmp_eq0000_inv ),
    .LI(\freqdiv2/Mcount_counter_lut [0]),
    .O(\freqdiv2/Mcount_counter )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv2/Mcount_counter_lut<1>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv2/counter [1]),
    .I2(\freqdiv2/counter_cmp_eq0000 ),
    .O(\freqdiv2/Mcount_counter_lut [1])
  );
  MUXCY   \freqdiv2/Mcount_counter_cy<1>  (
    .CI(\freqdiv2/Mcount_counter_cy [0]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv2/Mcount_counter_lut [1]),
    .O(\freqdiv2/Mcount_counter_cy [1])
  );
  XORCY   \freqdiv2/Mcount_counter_xor<1>  (
    .CI(\freqdiv2/Mcount_counter_cy [0]),
    .LI(\freqdiv2/Mcount_counter_lut [1]),
    .O(\freqdiv2/Mcount_counter1 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv2/Mcount_counter_lut<2>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv2/counter [2]),
    .I2(\freqdiv2/counter_cmp_eq0000 ),
    .O(\freqdiv2/Mcount_counter_lut [2])
  );
  MUXCY   \freqdiv2/Mcount_counter_cy<2>  (
    .CI(\freqdiv2/Mcount_counter_cy [1]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv2/Mcount_counter_lut [2]),
    .O(\freqdiv2/Mcount_counter_cy [2])
  );
  XORCY   \freqdiv2/Mcount_counter_xor<2>  (
    .CI(\freqdiv2/Mcount_counter_cy [1]),
    .LI(\freqdiv2/Mcount_counter_lut [2]),
    .O(\freqdiv2/Mcount_counter2 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv2/Mcount_counter_lut<3>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv2/counter [3]),
    .I2(\freqdiv2/counter_cmp_eq0000 ),
    .O(\freqdiv2/Mcount_counter_lut [3])
  );
  MUXCY   \freqdiv2/Mcount_counter_cy<3>  (
    .CI(\freqdiv2/Mcount_counter_cy [2]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv2/Mcount_counter_lut [3]),
    .O(\freqdiv2/Mcount_counter_cy [3])
  );
  XORCY   \freqdiv2/Mcount_counter_xor<3>  (
    .CI(\freqdiv2/Mcount_counter_cy [2]),
    .LI(\freqdiv2/Mcount_counter_lut [3]),
    .O(\freqdiv2/Mcount_counter3 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv2/Mcount_counter_lut<4>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv2/counter [4]),
    .I2(\freqdiv2/counter_cmp_eq0000 ),
    .O(\freqdiv2/Mcount_counter_lut [4])
  );
  MUXCY   \freqdiv2/Mcount_counter_cy<4>  (
    .CI(\freqdiv2/Mcount_counter_cy [3]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv2/Mcount_counter_lut [4]),
    .O(\freqdiv2/Mcount_counter_cy [4])
  );
  XORCY   \freqdiv2/Mcount_counter_xor<4>  (
    .CI(\freqdiv2/Mcount_counter_cy [3]),
    .LI(\freqdiv2/Mcount_counter_lut [4]),
    .O(\freqdiv2/Mcount_counter4 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv2/Mcount_counter_lut<5>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv2/counter [5]),
    .I2(\freqdiv2/counter_cmp_eq0000 ),
    .O(\freqdiv2/Mcount_counter_lut [5])
  );
  MUXCY   \freqdiv2/Mcount_counter_cy<5>  (
    .CI(\freqdiv2/Mcount_counter_cy [4]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv2/Mcount_counter_lut [5]),
    .O(\freqdiv2/Mcount_counter_cy [5])
  );
  XORCY   \freqdiv2/Mcount_counter_xor<5>  (
    .CI(\freqdiv2/Mcount_counter_cy [4]),
    .LI(\freqdiv2/Mcount_counter_lut [5]),
    .O(\freqdiv2/Mcount_counter5 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv2/Mcount_counter_lut<6>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv2/counter [6]),
    .I2(\freqdiv2/counter_cmp_eq0000 ),
    .O(\freqdiv2/Mcount_counter_lut [6])
  );
  MUXCY   \freqdiv2/Mcount_counter_cy<6>  (
    .CI(\freqdiv2/Mcount_counter_cy [5]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv2/Mcount_counter_lut [6]),
    .O(\freqdiv2/Mcount_counter_cy [6])
  );
  XORCY   \freqdiv2/Mcount_counter_xor<6>  (
    .CI(\freqdiv2/Mcount_counter_cy [5]),
    .LI(\freqdiv2/Mcount_counter_lut [6]),
    .O(\freqdiv2/Mcount_counter6 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv2/Mcount_counter_lut<7>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv2/counter [7]),
    .I2(\freqdiv2/counter_cmp_eq0000 ),
    .O(\freqdiv2/Mcount_counter_lut [7])
  );
  MUXCY   \freqdiv2/Mcount_counter_cy<7>  (
    .CI(\freqdiv2/Mcount_counter_cy [6]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv2/Mcount_counter_lut [7]),
    .O(\freqdiv2/Mcount_counter_cy [7])
  );
  XORCY   \freqdiv2/Mcount_counter_xor<7>  (
    .CI(\freqdiv2/Mcount_counter_cy [6]),
    .LI(\freqdiv2/Mcount_counter_lut [7]),
    .O(\freqdiv2/Mcount_counter7 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv2/Mcount_counter_lut<8>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv2/counter [8]),
    .I2(\freqdiv2/counter_cmp_eq0000 ),
    .O(\freqdiv2/Mcount_counter_lut [8])
  );
  MUXCY   \freqdiv2/Mcount_counter_cy<8>  (
    .CI(\freqdiv2/Mcount_counter_cy [7]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv2/Mcount_counter_lut [8]),
    .O(\freqdiv2/Mcount_counter_cy [8])
  );
  XORCY   \freqdiv2/Mcount_counter_xor<8>  (
    .CI(\freqdiv2/Mcount_counter_cy [7]),
    .LI(\freqdiv2/Mcount_counter_lut [8]),
    .O(\freqdiv2/Mcount_counter8 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv2/Mcount_counter_lut<9>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv2/counter [9]),
    .I2(\freqdiv2/counter_cmp_eq0000 ),
    .O(\freqdiv2/Mcount_counter_lut [9])
  );
  MUXCY   \freqdiv2/Mcount_counter_cy<9>  (
    .CI(\freqdiv2/Mcount_counter_cy [8]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv2/Mcount_counter_lut [9]),
    .O(\freqdiv2/Mcount_counter_cy [9])
  );
  XORCY   \freqdiv2/Mcount_counter_xor<9>  (
    .CI(\freqdiv2/Mcount_counter_cy [8]),
    .LI(\freqdiv2/Mcount_counter_lut [9]),
    .O(\freqdiv2/Mcount_counter9 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv2/Mcount_counter_lut<10>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv2/counter [10]),
    .I2(\freqdiv2/counter_cmp_eq0000 ),
    .O(\freqdiv2/Mcount_counter_lut [10])
  );
  MUXCY   \freqdiv2/Mcount_counter_cy<10>  (
    .CI(\freqdiv2/Mcount_counter_cy [9]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv2/Mcount_counter_lut [10]),
    .O(\freqdiv2/Mcount_counter_cy [10])
  );
  XORCY   \freqdiv2/Mcount_counter_xor<10>  (
    .CI(\freqdiv2/Mcount_counter_cy [9]),
    .LI(\freqdiv2/Mcount_counter_lut [10]),
    .O(\freqdiv2/Mcount_counter10 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv2/Mcount_counter_lut<11>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv2/counter [11]),
    .I2(\freqdiv2/counter_cmp_eq0000 ),
    .O(\freqdiv2/Mcount_counter_lut [11])
  );
  MUXCY   \freqdiv2/Mcount_counter_cy<11>  (
    .CI(\freqdiv2/Mcount_counter_cy [10]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv2/Mcount_counter_lut [11]),
    .O(\freqdiv2/Mcount_counter_cy [11])
  );
  XORCY   \freqdiv2/Mcount_counter_xor<11>  (
    .CI(\freqdiv2/Mcount_counter_cy [10]),
    .LI(\freqdiv2/Mcount_counter_lut [11]),
    .O(\freqdiv2/Mcount_counter11 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv2/Mcount_counter_lut<12>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv2/counter [12]),
    .I2(\freqdiv2/counter_cmp_eq0000 ),
    .O(\freqdiv2/Mcount_counter_lut [12])
  );
  MUXCY   \freqdiv2/Mcount_counter_cy<12>  (
    .CI(\freqdiv2/Mcount_counter_cy [11]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv2/Mcount_counter_lut [12]),
    .O(\freqdiv2/Mcount_counter_cy [12])
  );
  XORCY   \freqdiv2/Mcount_counter_xor<12>  (
    .CI(\freqdiv2/Mcount_counter_cy [11]),
    .LI(\freqdiv2/Mcount_counter_lut [12]),
    .O(\freqdiv2/Mcount_counter12 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv2/Mcount_counter_lut<13>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv2/counter [13]),
    .I2(\freqdiv2/counter_cmp_eq0000 ),
    .O(\freqdiv2/Mcount_counter_lut [13])
  );
  MUXCY   \freqdiv2/Mcount_counter_cy<13>  (
    .CI(\freqdiv2/Mcount_counter_cy [12]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv2/Mcount_counter_lut [13]),
    .O(\freqdiv2/Mcount_counter_cy [13])
  );
  XORCY   \freqdiv2/Mcount_counter_xor<13>  (
    .CI(\freqdiv2/Mcount_counter_cy [12]),
    .LI(\freqdiv2/Mcount_counter_lut [13]),
    .O(\freqdiv2/Mcount_counter13 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv2/Mcount_counter_lut<14>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv2/counter [14]),
    .I2(\freqdiv2/counter_cmp_eq0000 ),
    .O(\freqdiv2/Mcount_counter_lut [14])
  );
  MUXCY   \freqdiv2/Mcount_counter_cy<14>  (
    .CI(\freqdiv2/Mcount_counter_cy [13]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv2/Mcount_counter_lut [14]),
    .O(\freqdiv2/Mcount_counter_cy [14])
  );
  XORCY   \freqdiv2/Mcount_counter_xor<14>  (
    .CI(\freqdiv2/Mcount_counter_cy [13]),
    .LI(\freqdiv2/Mcount_counter_lut [14]),
    .O(\freqdiv2/Mcount_counter14 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv2/Mcount_counter_lut<15>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv2/counter [15]),
    .I2(\freqdiv2/counter_cmp_eq0000 ),
    .O(\freqdiv2/Mcount_counter_lut [15])
  );
  MUXCY   \freqdiv2/Mcount_counter_cy<15>  (
    .CI(\freqdiv2/Mcount_counter_cy [14]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv2/Mcount_counter_lut [15]),
    .O(\freqdiv2/Mcount_counter_cy [15])
  );
  XORCY   \freqdiv2/Mcount_counter_xor<15>  (
    .CI(\freqdiv2/Mcount_counter_cy [14]),
    .LI(\freqdiv2/Mcount_counter_lut [15]),
    .O(\freqdiv2/Mcount_counter15 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv2/Mcount_counter_lut<16>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv2/counter [16]),
    .I2(\freqdiv2/counter_cmp_eq0000 ),
    .O(\freqdiv2/Mcount_counter_lut [16])
  );
  MUXCY   \freqdiv2/Mcount_counter_cy<16>  (
    .CI(\freqdiv2/Mcount_counter_cy [15]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv2/Mcount_counter_lut [16]),
    .O(\freqdiv2/Mcount_counter_cy [16])
  );
  XORCY   \freqdiv2/Mcount_counter_xor<16>  (
    .CI(\freqdiv2/Mcount_counter_cy [15]),
    .LI(\freqdiv2/Mcount_counter_lut [16]),
    .O(\freqdiv2/Mcount_counter16 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv2/Mcount_counter_lut<17>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv2/counter [17]),
    .I2(\freqdiv2/counter_cmp_eq0000 ),
    .O(\freqdiv2/Mcount_counter_lut [17])
  );
  MUXCY   \freqdiv2/Mcount_counter_cy<17>  (
    .CI(\freqdiv2/Mcount_counter_cy [16]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv2/Mcount_counter_lut [17]),
    .O(\freqdiv2/Mcount_counter_cy [17])
  );
  XORCY   \freqdiv2/Mcount_counter_xor<17>  (
    .CI(\freqdiv2/Mcount_counter_cy [16]),
    .LI(\freqdiv2/Mcount_counter_lut [17]),
    .O(\freqdiv2/Mcount_counter17 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv2/Mcount_counter_lut<18>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv2/counter [18]),
    .I2(\freqdiv2/counter_cmp_eq0000 ),
    .O(\freqdiv2/Mcount_counter_lut [18])
  );
  MUXCY   \freqdiv2/Mcount_counter_cy<18>  (
    .CI(\freqdiv2/Mcount_counter_cy [17]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv2/Mcount_counter_lut [18]),
    .O(\freqdiv2/Mcount_counter_cy [18])
  );
  XORCY   \freqdiv2/Mcount_counter_xor<18>  (
    .CI(\freqdiv2/Mcount_counter_cy [17]),
    .LI(\freqdiv2/Mcount_counter_lut [18]),
    .O(\freqdiv2/Mcount_counter18 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv2/Mcount_counter_lut<19>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv2/counter [19]),
    .I2(\freqdiv2/counter_cmp_eq0000 ),
    .O(\freqdiv2/Mcount_counter_lut [19])
  );
  MUXCY   \freqdiv2/Mcount_counter_cy<19>  (
    .CI(\freqdiv2/Mcount_counter_cy [18]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv2/Mcount_counter_lut [19]),
    .O(\freqdiv2/Mcount_counter_cy [19])
  );
  XORCY   \freqdiv2/Mcount_counter_xor<19>  (
    .CI(\freqdiv2/Mcount_counter_cy [18]),
    .LI(\freqdiv2/Mcount_counter_lut [19]),
    .O(\freqdiv2/Mcount_counter19 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv2/Mcount_counter_lut<20>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv2/counter [20]),
    .I2(\freqdiv2/counter_cmp_eq0000 ),
    .O(\freqdiv2/Mcount_counter_lut [20])
  );
  MUXCY   \freqdiv2/Mcount_counter_cy<20>  (
    .CI(\freqdiv2/Mcount_counter_cy [19]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv2/Mcount_counter_lut [20]),
    .O(\freqdiv2/Mcount_counter_cy [20])
  );
  XORCY   \freqdiv2/Mcount_counter_xor<20>  (
    .CI(\freqdiv2/Mcount_counter_cy [19]),
    .LI(\freqdiv2/Mcount_counter_lut [20]),
    .O(\freqdiv2/Mcount_counter20 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv2/Mcount_counter_lut<21>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv2/counter [21]),
    .I2(\freqdiv2/counter_cmp_eq0000 ),
    .O(\freqdiv2/Mcount_counter_lut [21])
  );
  MUXCY   \freqdiv2/Mcount_counter_cy<21>  (
    .CI(\freqdiv2/Mcount_counter_cy [20]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv2/Mcount_counter_lut [21]),
    .O(\freqdiv2/Mcount_counter_cy [21])
  );
  XORCY   \freqdiv2/Mcount_counter_xor<21>  (
    .CI(\freqdiv2/Mcount_counter_cy [20]),
    .LI(\freqdiv2/Mcount_counter_lut [21]),
    .O(\freqdiv2/Mcount_counter21 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv2/Mcount_counter_lut<22>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv2/counter [22]),
    .I2(\freqdiv2/counter_cmp_eq0000 ),
    .O(\freqdiv2/Mcount_counter_lut [22])
  );
  MUXCY   \freqdiv2/Mcount_counter_cy<22>  (
    .CI(\freqdiv2/Mcount_counter_cy [21]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv2/Mcount_counter_lut [22]),
    .O(\freqdiv2/Mcount_counter_cy [22])
  );
  XORCY   \freqdiv2/Mcount_counter_xor<22>  (
    .CI(\freqdiv2/Mcount_counter_cy [21]),
    .LI(\freqdiv2/Mcount_counter_lut [22]),
    .O(\freqdiv2/Mcount_counter22 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \freqdiv2/Mcount_counter_lut<23>  (
    .I0(\freqdiv2/counter_cmp_eq0000 ),
    .I1(\freqdiv2/counter [23]),
    .I2(IO_P1_1_OBUF_8),
    .O(\freqdiv2/Mcount_counter_lut [23])
  );
  XORCY   \freqdiv2/Mcount_counter_xor<23>  (
    .CI(\freqdiv2/Mcount_counter_cy [22]),
    .LI(\freqdiv2/Mcount_counter_lut [23]),
    .O(\freqdiv2/Mcount_counter23 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv1/Mcount_counter_lut<0>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv1/counter [0]),
    .I2(\freqdiv1/counter_cmp_eq0000 ),
    .O(\freqdiv1/Mcount_counter_lut [0])
  );
  MUXCY   \freqdiv1/Mcount_counter_cy<0>  (
    .CI(\freqdiv1/counter_cmp_eq0000_inv ),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv1/Mcount_counter_lut [0]),
    .O(\freqdiv1/Mcount_counter_cy [0])
  );
  XORCY   \freqdiv1/Mcount_counter_xor<0>  (
    .CI(\freqdiv1/counter_cmp_eq0000_inv ),
    .LI(\freqdiv1/Mcount_counter_lut [0]),
    .O(\freqdiv1/Mcount_counter )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv1/Mcount_counter_lut<1>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv1/counter [1]),
    .I2(\freqdiv1/counter_cmp_eq0000 ),
    .O(\freqdiv1/Mcount_counter_lut [1])
  );
  MUXCY   \freqdiv1/Mcount_counter_cy<1>  (
    .CI(\freqdiv1/Mcount_counter_cy [0]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv1/Mcount_counter_lut [1]),
    .O(\freqdiv1/Mcount_counter_cy [1])
  );
  XORCY   \freqdiv1/Mcount_counter_xor<1>  (
    .CI(\freqdiv1/Mcount_counter_cy [0]),
    .LI(\freqdiv1/Mcount_counter_lut [1]),
    .O(\freqdiv1/Mcount_counter1 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv1/Mcount_counter_lut<2>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv1/counter [2]),
    .I2(\freqdiv1/counter_cmp_eq0000 ),
    .O(\freqdiv1/Mcount_counter_lut [2])
  );
  MUXCY   \freqdiv1/Mcount_counter_cy<2>  (
    .CI(\freqdiv1/Mcount_counter_cy [1]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv1/Mcount_counter_lut [2]),
    .O(\freqdiv1/Mcount_counter_cy [2])
  );
  XORCY   \freqdiv1/Mcount_counter_xor<2>  (
    .CI(\freqdiv1/Mcount_counter_cy [1]),
    .LI(\freqdiv1/Mcount_counter_lut [2]),
    .O(\freqdiv1/Mcount_counter2 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv1/Mcount_counter_lut<3>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv1/counter [3]),
    .I2(\freqdiv1/counter_cmp_eq0000 ),
    .O(\freqdiv1/Mcount_counter_lut [3])
  );
  MUXCY   \freqdiv1/Mcount_counter_cy<3>  (
    .CI(\freqdiv1/Mcount_counter_cy [2]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv1/Mcount_counter_lut [3]),
    .O(\freqdiv1/Mcount_counter_cy [3])
  );
  XORCY   \freqdiv1/Mcount_counter_xor<3>  (
    .CI(\freqdiv1/Mcount_counter_cy [2]),
    .LI(\freqdiv1/Mcount_counter_lut [3]),
    .O(\freqdiv1/Mcount_counter3 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv1/Mcount_counter_lut<4>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv1/counter [4]),
    .I2(\freqdiv1/counter_cmp_eq0000 ),
    .O(\freqdiv1/Mcount_counter_lut [4])
  );
  MUXCY   \freqdiv1/Mcount_counter_cy<4>  (
    .CI(\freqdiv1/Mcount_counter_cy [3]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv1/Mcount_counter_lut [4]),
    .O(\freqdiv1/Mcount_counter_cy [4])
  );
  XORCY   \freqdiv1/Mcount_counter_xor<4>  (
    .CI(\freqdiv1/Mcount_counter_cy [3]),
    .LI(\freqdiv1/Mcount_counter_lut [4]),
    .O(\freqdiv1/Mcount_counter4 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv1/Mcount_counter_lut<5>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv1/counter [5]),
    .I2(\freqdiv1/counter_cmp_eq0000 ),
    .O(\freqdiv1/Mcount_counter_lut [5])
  );
  MUXCY   \freqdiv1/Mcount_counter_cy<5>  (
    .CI(\freqdiv1/Mcount_counter_cy [4]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv1/Mcount_counter_lut [5]),
    .O(\freqdiv1/Mcount_counter_cy [5])
  );
  XORCY   \freqdiv1/Mcount_counter_xor<5>  (
    .CI(\freqdiv1/Mcount_counter_cy [4]),
    .LI(\freqdiv1/Mcount_counter_lut [5]),
    .O(\freqdiv1/Mcount_counter5 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv1/Mcount_counter_lut<6>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv1/counter [6]),
    .I2(\freqdiv1/counter_cmp_eq0000 ),
    .O(\freqdiv1/Mcount_counter_lut [6])
  );
  MUXCY   \freqdiv1/Mcount_counter_cy<6>  (
    .CI(\freqdiv1/Mcount_counter_cy [5]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv1/Mcount_counter_lut [6]),
    .O(\freqdiv1/Mcount_counter_cy [6])
  );
  XORCY   \freqdiv1/Mcount_counter_xor<6>  (
    .CI(\freqdiv1/Mcount_counter_cy [5]),
    .LI(\freqdiv1/Mcount_counter_lut [6]),
    .O(\freqdiv1/Mcount_counter6 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv1/Mcount_counter_lut<7>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv1/counter [7]),
    .I2(\freqdiv1/counter_cmp_eq0000 ),
    .O(\freqdiv1/Mcount_counter_lut [7])
  );
  MUXCY   \freqdiv1/Mcount_counter_cy<7>  (
    .CI(\freqdiv1/Mcount_counter_cy [6]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv1/Mcount_counter_lut [7]),
    .O(\freqdiv1/Mcount_counter_cy [7])
  );
  XORCY   \freqdiv1/Mcount_counter_xor<7>  (
    .CI(\freqdiv1/Mcount_counter_cy [6]),
    .LI(\freqdiv1/Mcount_counter_lut [7]),
    .O(\freqdiv1/Mcount_counter7 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv1/Mcount_counter_lut<8>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv1/counter [8]),
    .I2(\freqdiv1/counter_cmp_eq0000 ),
    .O(\freqdiv1/Mcount_counter_lut [8])
  );
  MUXCY   \freqdiv1/Mcount_counter_cy<8>  (
    .CI(\freqdiv1/Mcount_counter_cy [7]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv1/Mcount_counter_lut [8]),
    .O(\freqdiv1/Mcount_counter_cy [8])
  );
  XORCY   \freqdiv1/Mcount_counter_xor<8>  (
    .CI(\freqdiv1/Mcount_counter_cy [7]),
    .LI(\freqdiv1/Mcount_counter_lut [8]),
    .O(\freqdiv1/Mcount_counter8 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv1/Mcount_counter_lut<9>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv1/counter [9]),
    .I2(\freqdiv1/counter_cmp_eq0000 ),
    .O(\freqdiv1/Mcount_counter_lut [9])
  );
  MUXCY   \freqdiv1/Mcount_counter_cy<9>  (
    .CI(\freqdiv1/Mcount_counter_cy [8]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv1/Mcount_counter_lut [9]),
    .O(\freqdiv1/Mcount_counter_cy [9])
  );
  XORCY   \freqdiv1/Mcount_counter_xor<9>  (
    .CI(\freqdiv1/Mcount_counter_cy [8]),
    .LI(\freqdiv1/Mcount_counter_lut [9]),
    .O(\freqdiv1/Mcount_counter9 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv1/Mcount_counter_lut<10>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv1/counter [10]),
    .I2(\freqdiv1/counter_cmp_eq0000 ),
    .O(\freqdiv1/Mcount_counter_lut [10])
  );
  MUXCY   \freqdiv1/Mcount_counter_cy<10>  (
    .CI(\freqdiv1/Mcount_counter_cy [9]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv1/Mcount_counter_lut [10]),
    .O(\freqdiv1/Mcount_counter_cy [10])
  );
  XORCY   \freqdiv1/Mcount_counter_xor<10>  (
    .CI(\freqdiv1/Mcount_counter_cy [9]),
    .LI(\freqdiv1/Mcount_counter_lut [10]),
    .O(\freqdiv1/Mcount_counter10 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv1/Mcount_counter_lut<11>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv1/counter [11]),
    .I2(\freqdiv1/counter_cmp_eq0000 ),
    .O(\freqdiv1/Mcount_counter_lut [11])
  );
  MUXCY   \freqdiv1/Mcount_counter_cy<11>  (
    .CI(\freqdiv1/Mcount_counter_cy [10]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv1/Mcount_counter_lut [11]),
    .O(\freqdiv1/Mcount_counter_cy [11])
  );
  XORCY   \freqdiv1/Mcount_counter_xor<11>  (
    .CI(\freqdiv1/Mcount_counter_cy [10]),
    .LI(\freqdiv1/Mcount_counter_lut [11]),
    .O(\freqdiv1/Mcount_counter11 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv1/Mcount_counter_lut<12>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv1/counter [12]),
    .I2(\freqdiv1/counter_cmp_eq0000 ),
    .O(\freqdiv1/Mcount_counter_lut [12])
  );
  MUXCY   \freqdiv1/Mcount_counter_cy<12>  (
    .CI(\freqdiv1/Mcount_counter_cy [11]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv1/Mcount_counter_lut [12]),
    .O(\freqdiv1/Mcount_counter_cy [12])
  );
  XORCY   \freqdiv1/Mcount_counter_xor<12>  (
    .CI(\freqdiv1/Mcount_counter_cy [11]),
    .LI(\freqdiv1/Mcount_counter_lut [12]),
    .O(\freqdiv1/Mcount_counter12 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv1/Mcount_counter_lut<13>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv1/counter [13]),
    .I2(\freqdiv1/counter_cmp_eq0000 ),
    .O(\freqdiv1/Mcount_counter_lut [13])
  );
  MUXCY   \freqdiv1/Mcount_counter_cy<13>  (
    .CI(\freqdiv1/Mcount_counter_cy [12]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv1/Mcount_counter_lut [13]),
    .O(\freqdiv1/Mcount_counter_cy [13])
  );
  XORCY   \freqdiv1/Mcount_counter_xor<13>  (
    .CI(\freqdiv1/Mcount_counter_cy [12]),
    .LI(\freqdiv1/Mcount_counter_lut [13]),
    .O(\freqdiv1/Mcount_counter13 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv1/Mcount_counter_lut<14>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv1/counter [14]),
    .I2(\freqdiv1/counter_cmp_eq0000 ),
    .O(\freqdiv1/Mcount_counter_lut [14])
  );
  MUXCY   \freqdiv1/Mcount_counter_cy<14>  (
    .CI(\freqdiv1/Mcount_counter_cy [13]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv1/Mcount_counter_lut [14]),
    .O(\freqdiv1/Mcount_counter_cy [14])
  );
  XORCY   \freqdiv1/Mcount_counter_xor<14>  (
    .CI(\freqdiv1/Mcount_counter_cy [13]),
    .LI(\freqdiv1/Mcount_counter_lut [14]),
    .O(\freqdiv1/Mcount_counter14 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv1/Mcount_counter_lut<15>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv1/counter [15]),
    .I2(\freqdiv1/counter_cmp_eq0000 ),
    .O(\freqdiv1/Mcount_counter_lut [15])
  );
  MUXCY   \freqdiv1/Mcount_counter_cy<15>  (
    .CI(\freqdiv1/Mcount_counter_cy [14]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv1/Mcount_counter_lut [15]),
    .O(\freqdiv1/Mcount_counter_cy [15])
  );
  XORCY   \freqdiv1/Mcount_counter_xor<15>  (
    .CI(\freqdiv1/Mcount_counter_cy [14]),
    .LI(\freqdiv1/Mcount_counter_lut [15]),
    .O(\freqdiv1/Mcount_counter15 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv1/Mcount_counter_lut<16>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv1/counter [16]),
    .I2(\freqdiv1/counter_cmp_eq0000 ),
    .O(\freqdiv1/Mcount_counter_lut [16])
  );
  MUXCY   \freqdiv1/Mcount_counter_cy<16>  (
    .CI(\freqdiv1/Mcount_counter_cy [15]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv1/Mcount_counter_lut [16]),
    .O(\freqdiv1/Mcount_counter_cy [16])
  );
  XORCY   \freqdiv1/Mcount_counter_xor<16>  (
    .CI(\freqdiv1/Mcount_counter_cy [15]),
    .LI(\freqdiv1/Mcount_counter_lut [16]),
    .O(\freqdiv1/Mcount_counter16 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv1/Mcount_counter_lut<17>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv1/counter [17]),
    .I2(\freqdiv1/counter_cmp_eq0000 ),
    .O(\freqdiv1/Mcount_counter_lut [17])
  );
  MUXCY   \freqdiv1/Mcount_counter_cy<17>  (
    .CI(\freqdiv1/Mcount_counter_cy [16]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv1/Mcount_counter_lut [17]),
    .O(\freqdiv1/Mcount_counter_cy [17])
  );
  XORCY   \freqdiv1/Mcount_counter_xor<17>  (
    .CI(\freqdiv1/Mcount_counter_cy [16]),
    .LI(\freqdiv1/Mcount_counter_lut [17]),
    .O(\freqdiv1/Mcount_counter17 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv1/Mcount_counter_lut<18>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv1/counter [18]),
    .I2(\freqdiv1/counter_cmp_eq0000 ),
    .O(\freqdiv1/Mcount_counter_lut [18])
  );
  MUXCY   \freqdiv1/Mcount_counter_cy<18>  (
    .CI(\freqdiv1/Mcount_counter_cy [17]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv1/Mcount_counter_lut [18]),
    .O(\freqdiv1/Mcount_counter_cy [18])
  );
  XORCY   \freqdiv1/Mcount_counter_xor<18>  (
    .CI(\freqdiv1/Mcount_counter_cy [17]),
    .LI(\freqdiv1/Mcount_counter_lut [18]),
    .O(\freqdiv1/Mcount_counter18 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv1/Mcount_counter_lut<19>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv1/counter [19]),
    .I2(\freqdiv1/counter_cmp_eq0000 ),
    .O(\freqdiv1/Mcount_counter_lut [19])
  );
  MUXCY   \freqdiv1/Mcount_counter_cy<19>  (
    .CI(\freqdiv1/Mcount_counter_cy [18]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv1/Mcount_counter_lut [19]),
    .O(\freqdiv1/Mcount_counter_cy [19])
  );
  XORCY   \freqdiv1/Mcount_counter_xor<19>  (
    .CI(\freqdiv1/Mcount_counter_cy [18]),
    .LI(\freqdiv1/Mcount_counter_lut [19]),
    .O(\freqdiv1/Mcount_counter19 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv1/Mcount_counter_lut<20>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv1/counter [20]),
    .I2(\freqdiv1/counter_cmp_eq0000 ),
    .O(\freqdiv1/Mcount_counter_lut [20])
  );
  MUXCY   \freqdiv1/Mcount_counter_cy<20>  (
    .CI(\freqdiv1/Mcount_counter_cy [19]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv1/Mcount_counter_lut [20]),
    .O(\freqdiv1/Mcount_counter_cy [20])
  );
  XORCY   \freqdiv1/Mcount_counter_xor<20>  (
    .CI(\freqdiv1/Mcount_counter_cy [19]),
    .LI(\freqdiv1/Mcount_counter_lut [20]),
    .O(\freqdiv1/Mcount_counter20 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv1/Mcount_counter_lut<21>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv1/counter [21]),
    .I2(\freqdiv1/counter_cmp_eq0000 ),
    .O(\freqdiv1/Mcount_counter_lut [21])
  );
  MUXCY   \freqdiv1/Mcount_counter_cy<21>  (
    .CI(\freqdiv1/Mcount_counter_cy [20]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv1/Mcount_counter_lut [21]),
    .O(\freqdiv1/Mcount_counter_cy [21])
  );
  XORCY   \freqdiv1/Mcount_counter_xor<21>  (
    .CI(\freqdiv1/Mcount_counter_cy [20]),
    .LI(\freqdiv1/Mcount_counter_lut [21]),
    .O(\freqdiv1/Mcount_counter21 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \freqdiv1/Mcount_counter_lut<22>  (
    .I0(IO_P1_1_OBUF_8),
    .I1(\freqdiv1/counter [22]),
    .I2(\freqdiv1/counter_cmp_eq0000 ),
    .O(\freqdiv1/Mcount_counter_lut [22])
  );
  MUXCY   \freqdiv1/Mcount_counter_cy<22>  (
    .CI(\freqdiv1/Mcount_counter_cy [21]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv1/Mcount_counter_lut [22]),
    .O(\freqdiv1/Mcount_counter_cy [22])
  );
  XORCY   \freqdiv1/Mcount_counter_xor<22>  (
    .CI(\freqdiv1/Mcount_counter_cy [21]),
    .LI(\freqdiv1/Mcount_counter_lut [22]),
    .O(\freqdiv1/Mcount_counter22 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \freqdiv1/Mcount_counter_lut<23>  (
    .I0(\freqdiv1/counter_cmp_eq0000 ),
    .I1(\freqdiv1/counter [23]),
    .I2(IO_P1_1_OBUF_8),
    .O(\freqdiv1/Mcount_counter_lut [23])
  );
  XORCY   \freqdiv1/Mcount_counter_xor<23>  (
    .CI(\freqdiv1/Mcount_counter_cy [22]),
    .LI(\freqdiv1/Mcount_counter_lut [23]),
    .O(\freqdiv1/Mcount_counter23 )
  );
  FDC   \freqdiv1/counter_0  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv1/Mcount_counter ),
    .Q(\freqdiv1/counter [0])
  );
  FDC   \freqdiv1/counter_1  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv1/Mcount_counter1 ),
    .Q(\freqdiv1/counter [1])
  );
  FDC   \freqdiv1/counter_2  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv1/Mcount_counter2 ),
    .Q(\freqdiv1/counter [2])
  );
  FDC   \freqdiv1/counter_3  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv1/Mcount_counter3 ),
    .Q(\freqdiv1/counter [3])
  );
  FDC   \freqdiv1/counter_4  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv1/Mcount_counter4 ),
    .Q(\freqdiv1/counter [4])
  );
  FDC   \freqdiv1/counter_5  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv1/Mcount_counter5 ),
    .Q(\freqdiv1/counter [5])
  );
  FDC   \freqdiv1/counter_6  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv1/Mcount_counter6 ),
    .Q(\freqdiv1/counter [6])
  );
  FDC   \freqdiv1/counter_7  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv1/Mcount_counter7 ),
    .Q(\freqdiv1/counter [7])
  );
  FDC   \freqdiv1/counter_8  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv1/Mcount_counter8 ),
    .Q(\freqdiv1/counter [8])
  );
  FDC   \freqdiv1/counter_9  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv1/Mcount_counter9 ),
    .Q(\freqdiv1/counter [9])
  );
  FDC   \freqdiv1/counter_10  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv1/Mcount_counter10 ),
    .Q(\freqdiv1/counter [10])
  );
  FDC   \freqdiv1/counter_11  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv1/Mcount_counter11 ),
    .Q(\freqdiv1/counter [11])
  );
  FDC   \freqdiv1/counter_12  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv1/Mcount_counter12 ),
    .Q(\freqdiv1/counter [12])
  );
  FDC   \freqdiv1/counter_13  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv1/Mcount_counter13 ),
    .Q(\freqdiv1/counter [13])
  );
  FDC   \freqdiv1/counter_14  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv1/Mcount_counter14 ),
    .Q(\freqdiv1/counter [14])
  );
  FDC   \freqdiv1/counter_15  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv1/Mcount_counter15 ),
    .Q(\freqdiv1/counter [15])
  );
  FDC   \freqdiv1/counter_16  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv1/Mcount_counter16 ),
    .Q(\freqdiv1/counter [16])
  );
  FDC   \freqdiv1/counter_17  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv1/Mcount_counter17 ),
    .Q(\freqdiv1/counter [17])
  );
  FDC   \freqdiv1/counter_18  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv1/Mcount_counter18 ),
    .Q(\freqdiv1/counter [18])
  );
  FDC   \freqdiv1/counter_19  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv1/Mcount_counter19 ),
    .Q(\freqdiv1/counter [19])
  );
  FDC   \freqdiv1/counter_20  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv1/Mcount_counter20 ),
    .Q(\freqdiv1/counter [20])
  );
  FDC   \freqdiv1/counter_21  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv1/Mcount_counter21 ),
    .Q(\freqdiv1/counter [21])
  );
  FDC   \freqdiv1/counter_22  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv1/Mcount_counter22 ),
    .Q(\freqdiv1/counter [22])
  );
  FDC   \freqdiv1/counter_23  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv1/Mcount_counter23 ),
    .Q(\freqdiv1/counter [23])
  );
  FDC   \freqdiv3/counter_0  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv3/Mcount_counter ),
    .Q(\freqdiv3/counter [0])
  );
  FDC   \freqdiv3/counter_1  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv3/Mcount_counter1 ),
    .Q(\freqdiv3/counter [1])
  );
  FDC   \freqdiv3/counter_2  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv3/Mcount_counter2 ),
    .Q(\freqdiv3/counter [2])
  );
  FDC   \freqdiv3/counter_3  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv3/Mcount_counter3 ),
    .Q(\freqdiv3/counter [3])
  );
  FDC   \freqdiv3/counter_4  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv3/Mcount_counter4 ),
    .Q(\freqdiv3/counter [4])
  );
  FDC   \freqdiv3/counter_5  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv3/Mcount_counter5 ),
    .Q(\freqdiv3/counter [5])
  );
  FDC   \freqdiv3/counter_6  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv3/Mcount_counter6 ),
    .Q(\freqdiv3/counter [6])
  );
  FDC   \freqdiv3/counter_7  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv3/Mcount_counter7 ),
    .Q(\freqdiv3/counter [7])
  );
  FDC   \freqdiv3/counter_8  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv3/Mcount_counter8 ),
    .Q(\freqdiv3/counter [8])
  );
  FDC   \freqdiv3/counter_9  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv3/Mcount_counter9 ),
    .Q(\freqdiv3/counter [9])
  );
  FDC   \freqdiv3/counter_10  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv3/Mcount_counter10 ),
    .Q(\freqdiv3/counter [10])
  );
  FDC   \freqdiv3/counter_11  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv3/Mcount_counter11 ),
    .Q(\freqdiv3/counter [11])
  );
  FDC   \freqdiv3/counter_12  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv3/Mcount_counter12 ),
    .Q(\freqdiv3/counter [12])
  );
  FDC   \freqdiv3/counter_13  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv3/Mcount_counter13 ),
    .Q(\freqdiv3/counter [13])
  );
  FDC   \freqdiv3/counter_14  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv3/Mcount_counter14 ),
    .Q(\freqdiv3/counter [14])
  );
  FDC   \freqdiv3/counter_15  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv3/Mcount_counter15 ),
    .Q(\freqdiv3/counter [15])
  );
  FDC   \freqdiv3/counter_16  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv3/Mcount_counter16 ),
    .Q(\freqdiv3/counter [16])
  );
  FDC   \freqdiv3/counter_17  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv3/Mcount_counter17 ),
    .Q(\freqdiv3/counter [17])
  );
  FDC   \freqdiv3/counter_18  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv3/Mcount_counter18 ),
    .Q(\freqdiv3/counter [18])
  );
  FDC   \freqdiv3/counter_19  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv3/Mcount_counter19 ),
    .Q(\freqdiv3/counter [19])
  );
  FDC   \freqdiv3/counter_20  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv3/Mcount_counter20 ),
    .Q(\freqdiv3/counter [20])
  );
  FDC   \freqdiv3/counter_21  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv3/Mcount_counter21 ),
    .Q(\freqdiv3/counter [21])
  );
  FDC   \freqdiv3/counter_22  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv3/Mcount_counter22 ),
    .Q(\freqdiv3/counter [22])
  );
  FDC   \freqdiv3/counter_23  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv3/Mcount_counter23 ),
    .Q(\freqdiv3/counter [23])
  );
  FDC   \freqdiv2/counter_0  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv2/Mcount_counter ),
    .Q(\freqdiv2/counter [0])
  );
  FDC   \freqdiv2/counter_1  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv2/Mcount_counter1 ),
    .Q(\freqdiv2/counter [1])
  );
  FDC   \freqdiv2/counter_2  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv2/Mcount_counter2 ),
    .Q(\freqdiv2/counter [2])
  );
  FDC   \freqdiv2/counter_3  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv2/Mcount_counter3 ),
    .Q(\freqdiv2/counter [3])
  );
  FDC   \freqdiv2/counter_4  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv2/Mcount_counter4 ),
    .Q(\freqdiv2/counter [4])
  );
  FDC   \freqdiv2/counter_5  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv2/Mcount_counter5 ),
    .Q(\freqdiv2/counter [5])
  );
  FDC   \freqdiv2/counter_6  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv2/Mcount_counter6 ),
    .Q(\freqdiv2/counter [6])
  );
  FDC   \freqdiv2/counter_7  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv2/Mcount_counter7 ),
    .Q(\freqdiv2/counter [7])
  );
  FDC   \freqdiv2/counter_8  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv2/Mcount_counter8 ),
    .Q(\freqdiv2/counter [8])
  );
  FDC   \freqdiv2/counter_9  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv2/Mcount_counter9 ),
    .Q(\freqdiv2/counter [9])
  );
  FDC   \freqdiv2/counter_10  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv2/Mcount_counter10 ),
    .Q(\freqdiv2/counter [10])
  );
  FDC   \freqdiv2/counter_11  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv2/Mcount_counter11 ),
    .Q(\freqdiv2/counter [11])
  );
  FDC   \freqdiv2/counter_12  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv2/Mcount_counter12 ),
    .Q(\freqdiv2/counter [12])
  );
  FDC   \freqdiv2/counter_13  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv2/Mcount_counter13 ),
    .Q(\freqdiv2/counter [13])
  );
  FDC   \freqdiv2/counter_14  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv2/Mcount_counter14 ),
    .Q(\freqdiv2/counter [14])
  );
  FDC   \freqdiv2/counter_15  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv2/Mcount_counter15 ),
    .Q(\freqdiv2/counter [15])
  );
  FDC   \freqdiv2/counter_16  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv2/Mcount_counter16 ),
    .Q(\freqdiv2/counter [16])
  );
  FDC   \freqdiv2/counter_17  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv2/Mcount_counter17 ),
    .Q(\freqdiv2/counter [17])
  );
  FDC   \freqdiv2/counter_18  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv2/Mcount_counter18 ),
    .Q(\freqdiv2/counter [18])
  );
  FDC   \freqdiv2/counter_19  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv2/Mcount_counter19 ),
    .Q(\freqdiv2/counter [19])
  );
  FDC   \freqdiv2/counter_20  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv2/Mcount_counter20 ),
    .Q(\freqdiv2/counter [20])
  );
  FDC   \freqdiv2/counter_21  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv2/Mcount_counter21 ),
    .Q(\freqdiv2/counter [21])
  );
  FDC   \freqdiv2/counter_22  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv2/Mcount_counter22 ),
    .Q(\freqdiv2/counter [22])
  );
  FDC   \freqdiv2/counter_23  (
    .C(clk_BUFGP_173),
    .CLR(\BTN<4>_inv ),
    .D(\freqdiv2/Mcount_counter23 ),
    .Q(\freqdiv2/counter [23])
  );
  FDC   \the10bitCounter/counter_reg_0  (
    .C(\freqdiv1/out_clk_reg_983 ),
    .CLR(\BTN<4>_inv ),
    .D(Result[0]),
    .Q(\the10bitCounter/counter_reg [0])
  );
  FDC   \the10bitCounter/counter_reg_1  (
    .C(\freqdiv1/out_clk_reg_983 ),
    .CLR(\BTN<4>_inv ),
    .D(Result[1]),
    .Q(\the10bitCounter/counter_reg [1])
  );
  FDC   \the10bitCounter/counter_reg_2  (
    .C(\freqdiv1/out_clk_reg_983 ),
    .CLR(\BTN<4>_inv ),
    .D(Result[2]),
    .Q(\the10bitCounter/counter_reg [2])
  );
  FDC   \the10bitCounter/counter_reg_3  (
    .C(\freqdiv1/out_clk_reg_983 ),
    .CLR(\BTN<4>_inv ),
    .D(Result[3]),
    .Q(\the10bitCounter/counter_reg [3])
  );
  FDC   \the10bitCounter/counter_reg_4  (
    .C(\freqdiv1/out_clk_reg_983 ),
    .CLR(\BTN<4>_inv ),
    .D(Result[4]),
    .Q(\the10bitCounter/counter_reg [4])
  );
  FDC   \the10bitCounter/counter_reg_5  (
    .C(\freqdiv1/out_clk_reg_983 ),
    .CLR(\BTN<4>_inv ),
    .D(Result[5]),
    .Q(\the10bitCounter/counter_reg [5])
  );
  FDC   \the10bitCounter/counter_reg_6  (
    .C(\freqdiv1/out_clk_reg_983 ),
    .CLR(\BTN<4>_inv ),
    .D(Result[6]),
    .Q(\the10bitCounter/counter_reg [6])
  );
  FDC   \the10bitCounter/counter_reg_7  (
    .C(\freqdiv1/out_clk_reg_983 ),
    .CLR(\BTN<4>_inv ),
    .D(Result[7]),
    .Q(\the10bitCounter/counter_reg [7])
  );
  FDC   \the10bitCounter/counter_reg_8  (
    .C(\freqdiv1/out_clk_reg_983 ),
    .CLR(\BTN<4>_inv ),
    .D(Result[8]),
    .Q(\the10bitCounter/counter_reg [8])
  );
  FDC   \the10bitCounter/counter_reg_9  (
    .C(\freqdiv1/out_clk_reg_983 ),
    .CLR(\BTN<4>_inv ),
    .D(Result[9]),
    .Q(\the10bitCounter/counter_reg [9])
  );
  FDC   \theNewCounter/counter_reg_0  (
    .C(\debounce_inc/OUT_175 ),
    .CLR(\BTN<4>_inv ),
    .D(\Result<0>1 ),
    .Q(\theNewCounter/counter_reg [0])
  );
  FDC   \theNewCounter/counter_reg_1  (
    .C(\debounce_inc/OUT_175 ),
    .CLR(\BTN<4>_inv ),
    .D(\Result<1>1 ),
    .Q(\theNewCounter/counter_reg [1])
  );
  MUXCY   \the10bitCounter/Mcount_counter_reg_cy<0>  (
    .CI(IO_P1_1_OBUF_8),
    .DI(IO_P1_3_OBUF_10),
    .S(\the10bitCounter/Mcount_counter_reg_lut [0]),
    .O(\the10bitCounter/Mcount_counter_reg_cy [0])
  );
  XORCY   \the10bitCounter/Mcount_counter_reg_xor<0>  (
    .CI(IO_P1_1_OBUF_8),
    .LI(\the10bitCounter/Mcount_counter_reg_lut [0]),
    .O(Result[0])
  );
  MUXCY   \the10bitCounter/Mcount_counter_reg_cy<1>  (
    .CI(\the10bitCounter/Mcount_counter_reg_cy [0]),
    .DI(IO_P1_1_OBUF_8),
    .S(\the10bitCounter/Mcount_counter_reg_cy<1>_rt_1420 ),
    .O(\the10bitCounter/Mcount_counter_reg_cy [1])
  );
  XORCY   \the10bitCounter/Mcount_counter_reg_xor<1>  (
    .CI(\the10bitCounter/Mcount_counter_reg_cy [0]),
    .LI(\the10bitCounter/Mcount_counter_reg_cy<1>_rt_1420 ),
    .O(Result[1])
  );
  MUXCY   \the10bitCounter/Mcount_counter_reg_cy<2>  (
    .CI(\the10bitCounter/Mcount_counter_reg_cy [1]),
    .DI(IO_P1_1_OBUF_8),
    .S(\the10bitCounter/Mcount_counter_reg_cy<2>_rt_1422 ),
    .O(\the10bitCounter/Mcount_counter_reg_cy [2])
  );
  XORCY   \the10bitCounter/Mcount_counter_reg_xor<2>  (
    .CI(\the10bitCounter/Mcount_counter_reg_cy [1]),
    .LI(\the10bitCounter/Mcount_counter_reg_cy<2>_rt_1422 ),
    .O(Result[2])
  );
  MUXCY   \the10bitCounter/Mcount_counter_reg_cy<3>  (
    .CI(\the10bitCounter/Mcount_counter_reg_cy [2]),
    .DI(IO_P1_1_OBUF_8),
    .S(\the10bitCounter/Mcount_counter_reg_cy<3>_rt_1424 ),
    .O(\the10bitCounter/Mcount_counter_reg_cy [3])
  );
  XORCY   \the10bitCounter/Mcount_counter_reg_xor<3>  (
    .CI(\the10bitCounter/Mcount_counter_reg_cy [2]),
    .LI(\the10bitCounter/Mcount_counter_reg_cy<3>_rt_1424 ),
    .O(Result[3])
  );
  MUXCY   \the10bitCounter/Mcount_counter_reg_cy<4>  (
    .CI(\the10bitCounter/Mcount_counter_reg_cy [3]),
    .DI(IO_P1_1_OBUF_8),
    .S(\the10bitCounter/Mcount_counter_reg_cy<4>_rt_1426 ),
    .O(\the10bitCounter/Mcount_counter_reg_cy [4])
  );
  XORCY   \the10bitCounter/Mcount_counter_reg_xor<4>  (
    .CI(\the10bitCounter/Mcount_counter_reg_cy [3]),
    .LI(\the10bitCounter/Mcount_counter_reg_cy<4>_rt_1426 ),
    .O(Result[4])
  );
  MUXCY   \the10bitCounter/Mcount_counter_reg_cy<5>  (
    .CI(\the10bitCounter/Mcount_counter_reg_cy [4]),
    .DI(IO_P1_1_OBUF_8),
    .S(\the10bitCounter/Mcount_counter_reg_cy<5>_rt_1428 ),
    .O(\the10bitCounter/Mcount_counter_reg_cy [5])
  );
  XORCY   \the10bitCounter/Mcount_counter_reg_xor<5>  (
    .CI(\the10bitCounter/Mcount_counter_reg_cy [4]),
    .LI(\the10bitCounter/Mcount_counter_reg_cy<5>_rt_1428 ),
    .O(Result[5])
  );
  MUXCY   \the10bitCounter/Mcount_counter_reg_cy<6>  (
    .CI(\the10bitCounter/Mcount_counter_reg_cy [5]),
    .DI(IO_P1_1_OBUF_8),
    .S(\the10bitCounter/Mcount_counter_reg_cy<6>_rt_1430 ),
    .O(\the10bitCounter/Mcount_counter_reg_cy [6])
  );
  XORCY   \the10bitCounter/Mcount_counter_reg_xor<6>  (
    .CI(\the10bitCounter/Mcount_counter_reg_cy [5]),
    .LI(\the10bitCounter/Mcount_counter_reg_cy<6>_rt_1430 ),
    .O(Result[6])
  );
  MUXCY   \the10bitCounter/Mcount_counter_reg_cy<7>  (
    .CI(\the10bitCounter/Mcount_counter_reg_cy [6]),
    .DI(IO_P1_1_OBUF_8),
    .S(\the10bitCounter/Mcount_counter_reg_cy<7>_rt_1432 ),
    .O(\the10bitCounter/Mcount_counter_reg_cy [7])
  );
  XORCY   \the10bitCounter/Mcount_counter_reg_xor<7>  (
    .CI(\the10bitCounter/Mcount_counter_reg_cy [6]),
    .LI(\the10bitCounter/Mcount_counter_reg_cy<7>_rt_1432 ),
    .O(Result[7])
  );
  MUXCY   \the10bitCounter/Mcount_counter_reg_cy<8>  (
    .CI(\the10bitCounter/Mcount_counter_reg_cy [7]),
    .DI(IO_P1_1_OBUF_8),
    .S(\the10bitCounter/Mcount_counter_reg_cy<8>_rt_1434 ),
    .O(\the10bitCounter/Mcount_counter_reg_cy [8])
  );
  XORCY   \the10bitCounter/Mcount_counter_reg_xor<8>  (
    .CI(\the10bitCounter/Mcount_counter_reg_cy [7]),
    .LI(\the10bitCounter/Mcount_counter_reg_cy<8>_rt_1434 ),
    .O(Result[8])
  );
  XORCY   \the10bitCounter/Mcount_counter_reg_xor<9>  (
    .CI(\the10bitCounter/Mcount_counter_reg_cy [8]),
    .LI(\the10bitCounter/Mcount_counter_reg_xor<9>_rt_1436 ),
    .O(Result[9])
  );
  MUXCY   \theNewCounter/Mcount_counter_reg_cy<0>  (
    .CI(IO_P1_1_OBUF_8),
    .DI(IO_P1_3_OBUF_10),
    .S(\theNewCounter/Mcount_counter_reg_lut [0]),
    .O(\theNewCounter/Mcount_counter_reg_cy [0])
  );
  XORCY   \theNewCounter/Mcount_counter_reg_xor<0>  (
    .CI(IO_P1_1_OBUF_8),
    .LI(\theNewCounter/Mcount_counter_reg_lut [0]),
    .O(\Result<0>1 )
  );
  XORCY   \theNewCounter/Mcount_counter_reg_xor<1>  (
    .CI(\theNewCounter/Mcount_counter_reg_cy [0]),
    .LI(\theNewCounter/Mcount_counter_reg_xor<1>_rt_1521 ),
    .O(\Result<1>1 )
  );
  FDP   \dht11_driver/state_FSM_FFd11  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .D(\dht11_driver/state_FSM_FFd11-In_812 ),
    .PRE(\dht11_driver/rst_n_inv ),
    .Q(\dht11_driver/state_FSM_FFd11_811 )
  );
  FDC   \dht11_driver/state_FSM_FFd10  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/state_FSM_FFd10-In ),
    .Q(\dht11_driver/state_FSM_FFd10_809 )
  );
  FDC   \dht11_driver/state_FSM_FFd8  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/state_FSM_FFd8-In ),
    .Q(\dht11_driver/state_FSM_FFd8_825 )
  );
  FDC   \dht11_driver/state_FSM_FFd7  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/state_FSM_FFd7-In ),
    .Q(\dht11_driver/state_FSM_FFd7_823 )
  );
  FDC   \dht11_driver/state_FSM_FFd9  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/state_FSM_FFd9-In ),
    .Q(\dht11_driver/state_FSM_FFd9_827 )
  );
  FDC   \dht11_driver/state_FSM_FFd5  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/state_FSM_FFd5-In ),
    .Q(\dht11_driver/state_FSM_FFd5_819 )
  );
  FDC   \dht11_driver/state_FSM_FFd4  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/state_FSM_FFd4-In_818 ),
    .Q(\dht11_driver/state_FSM_FFd4_817 )
  );
  FDC   \dht11_driver/state_FSM_FFd6  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/state_FSM_FFd6-In ),
    .Q(\dht11_driver/state_FSM_FFd6_821 )
  );
  FDC   \dht11_driver/state_FSM_FFd2  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/state_FSM_FFd2-In_814 ),
    .Q(\dht11_driver/state_FSM_FFd2_813 )
  );
  FDC   \dht11_driver/state_FSM_FFd1  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/state_FSM_FFd1-In ),
    .Q(\dht11_driver/state_FSM_FFd1_807 )
  );
  FDC   \dht11_driver/state_FSM_FFd3  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/state_FSM_FFd3-In ),
    .Q(\dht11_driver/state_FSM_FFd3_815 )
  );
  MUXCY   \dht11_driver/Mcompar_state_cmp_gt0000_cy<11>  (
    .CI(\dht11_driver/Mcompar_state_cmp_gt0000_cy [10]),
    .DI(\dht11_driver/global_count [31]),
    .S(\dht11_driver/Mcompar_state_cmp_gt0000_lut[11] ),
    .O(\dht11_driver/Mcompar_state_cmp_gt0000_cy [11])
  );
  MUXCY   \dht11_driver/Mcompar_state_cmp_gt0000_cy<10>  (
    .CI(\dht11_driver/Mcompar_state_cmp_gt0000_cy [9]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Mcompar_state_cmp_gt0000_lut[10] ),
    .O(\dht11_driver/Mcompar_state_cmp_gt0000_cy [10])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \dht11_driver/Mcompar_state_cmp_gt0000_lut<10>  (
    .I0(\dht11_driver/global_count [30]),
    .I1(\dht11_driver/global_count [31]),
    .O(\dht11_driver/Mcompar_state_cmp_gt0000_lut[10] )
  );
  MUXCY   \dht11_driver/Mcompar_state_cmp_gt0000_cy<9>  (
    .CI(\dht11_driver/Mcompar_state_cmp_gt0000_cy [8]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Mcompar_state_cmp_gt0000_lut[9] ),
    .O(\dht11_driver/Mcompar_state_cmp_gt0000_cy [9])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \dht11_driver/Mcompar_state_cmp_gt0000_lut<9>  (
    .I0(\dht11_driver/global_count [26]),
    .I1(\dht11_driver/global_count [27]),
    .I2(\dht11_driver/global_count [28]),
    .I3(\dht11_driver/global_count [29]),
    .O(\dht11_driver/Mcompar_state_cmp_gt0000_lut[9] )
  );
  MUXCY   \dht11_driver/Mcompar_state_cmp_gt0000_cy<8>  (
    .CI(\dht11_driver/Mcompar_state_cmp_gt0000_cy [7]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Mcompar_state_cmp_gt0000_lut[8] ),
    .O(\dht11_driver/Mcompar_state_cmp_gt0000_cy [8])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \dht11_driver/Mcompar_state_cmp_gt0000_lut<8>  (
    .I0(\dht11_driver/global_count [22]),
    .I1(\dht11_driver/global_count [23]),
    .I2(\dht11_driver/global_count [24]),
    .I3(\dht11_driver/global_count [25]),
    .O(\dht11_driver/Mcompar_state_cmp_gt0000_lut[8] )
  );
  MUXCY   \dht11_driver/Mcompar_state_cmp_gt0000_cy<7>  (
    .CI(\dht11_driver/Mcompar_state_cmp_gt0000_cy [6]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Mcompar_state_cmp_gt0000_lut[7] ),
    .O(\dht11_driver/Mcompar_state_cmp_gt0000_cy [7])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \dht11_driver/Mcompar_state_cmp_gt0000_lut<7>  (
    .I0(\dht11_driver/global_count [18]),
    .I1(\dht11_driver/global_count [19]),
    .I2(\dht11_driver/global_count [20]),
    .I3(\dht11_driver/global_count [21]),
    .O(\dht11_driver/Mcompar_state_cmp_gt0000_lut[7] )
  );
  MUXCY   \dht11_driver/Mcompar_state_cmp_gt0000_cy<6>  (
    .CI(\dht11_driver/Mcompar_state_cmp_gt0000_cy [5]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Mcompar_state_cmp_gt0000_lut[6] ),
    .O(\dht11_driver/Mcompar_state_cmp_gt0000_cy [6])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \dht11_driver/Mcompar_state_cmp_gt0000_lut<6>  (
    .I0(\dht11_driver/global_count [14]),
    .I1(\dht11_driver/global_count [15]),
    .I2(\dht11_driver/global_count [16]),
    .I3(\dht11_driver/global_count [17]),
    .O(\dht11_driver/Mcompar_state_cmp_gt0000_lut[6] )
  );
  MUXCY   \dht11_driver/Mcompar_state_cmp_gt0000_cy<5>  (
    .CI(\dht11_driver/Mcompar_state_cmp_gt0000_cy [4]),
    .DI(IO_P1_3_OBUF_10),
    .S(\dht11_driver/Mcompar_state_cmp_gt0000_cy<5>_rt_442 ),
    .O(\dht11_driver/Mcompar_state_cmp_gt0000_cy [5])
  );
  MUXCY   \dht11_driver/Mcompar_state_cmp_gt0000_cy<4>  (
    .CI(\dht11_driver/Mcompar_state_cmp_gt0000_cy [3]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Mcompar_state_cmp_gt0000_lut[4] ),
    .O(\dht11_driver/Mcompar_state_cmp_gt0000_cy [4])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \dht11_driver/Mcompar_state_cmp_gt0000_lut<4>  (
    .I0(\dht11_driver/global_count [11]),
    .I1(\dht11_driver/global_count [12]),
    .O(\dht11_driver/Mcompar_state_cmp_gt0000_lut[4] )
  );
  MUXCY   \dht11_driver/Mcompar_state_cmp_gt0000_cy<3>  (
    .CI(\dht11_driver/Mcompar_state_cmp_gt0000_cy [2]),
    .DI(IO_P1_3_OBUF_10),
    .S(\dht11_driver/Mcompar_state_cmp_gt0000_lut[3] ),
    .O(\dht11_driver/Mcompar_state_cmp_gt0000_cy [3])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dht11_driver/Mcompar_state_cmp_gt0000_lut<3>  (
    .I0(\dht11_driver/global_count [8]),
    .I1(\dht11_driver/global_count [9]),
    .I2(\dht11_driver/global_count [10]),
    .O(\dht11_driver/Mcompar_state_cmp_gt0000_lut[3] )
  );
  MUXCY   \dht11_driver/Mcompar_state_cmp_gt0000_cy<2>  (
    .CI(\dht11_driver/Mcompar_state_cmp_gt0000_cy [1]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Mcompar_state_cmp_gt0000_lut[2] ),
    .O(\dht11_driver/Mcompar_state_cmp_gt0000_cy [2])
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \dht11_driver/Mcompar_state_cmp_gt0000_lut<2>  (
    .I0(\dht11_driver/global_count [5]),
    .I1(\dht11_driver/global_count [6]),
    .I2(\dht11_driver/global_count [7]),
    .O(\dht11_driver/Mcompar_state_cmp_gt0000_lut[2] )
  );
  MUXCY   \dht11_driver/Mcompar_state_cmp_gt0000_cy<1>  (
    .CI(\dht11_driver/Mcompar_state_cmp_gt0000_cy [0]),
    .DI(IO_P1_3_OBUF_10),
    .S(\dht11_driver/Mcompar_state_cmp_gt0000_cy<1>_rt_437 ),
    .O(\dht11_driver/Mcompar_state_cmp_gt0000_cy [1])
  );
  MUXCY   \dht11_driver/Mcompar_state_cmp_gt0000_cy<0>  (
    .CI(IO_P1_3_OBUF_10),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Mcompar_state_cmp_gt0000_lut[0] ),
    .O(\dht11_driver/Mcompar_state_cmp_gt0000_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \dht11_driver/Mcompar_state_cmp_gt0000_lut<0>  (
    .I0(\dht11_driver/global_count [0]),
    .I1(\dht11_driver/global_count [1]),
    .I2(\dht11_driver/global_count [2]),
    .I3(\dht11_driver/global_count [3]),
    .O(\dht11_driver/Mcompar_state_cmp_gt0000_lut[0] )
  );
  XORCY   \dht11_driver/Madd_data_count_addsub0000_xor<31>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [30]),
    .LI(\dht11_driver/Madd_data_count_addsub0000_xor<31>_rt_345 ),
    .O(\dht11_driver/data_count_addsub0000 [31])
  );
  XORCY   \dht11_driver/Madd_data_count_addsub0000_xor<30>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [29]),
    .LI(\dht11_driver/Madd_data_count_addsub0000_cy<30>_rt_329 ),
    .O(\dht11_driver/data_count_addsub0000 [30])
  );
  MUXCY   \dht11_driver/Madd_data_count_addsub0000_cy<30>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [29]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_data_count_addsub0000_cy<30>_rt_329 ),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy [30])
  );
  XORCY   \dht11_driver/Madd_data_count_addsub0000_xor<29>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [28]),
    .LI(\dht11_driver/Madd_data_count_addsub0000_cy<29>_rt_325 ),
    .O(\dht11_driver/data_count_addsub0000 [29])
  );
  MUXCY   \dht11_driver/Madd_data_count_addsub0000_cy<29>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [28]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_data_count_addsub0000_cy<29>_rt_325 ),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy [29])
  );
  XORCY   \dht11_driver/Madd_data_count_addsub0000_xor<28>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [27]),
    .LI(\dht11_driver/Madd_data_count_addsub0000_cy<28>_rt_323 ),
    .O(\dht11_driver/data_count_addsub0000 [28])
  );
  MUXCY   \dht11_driver/Madd_data_count_addsub0000_cy<28>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [27]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_data_count_addsub0000_cy<28>_rt_323 ),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy [28])
  );
  XORCY   \dht11_driver/Madd_data_count_addsub0000_xor<27>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [26]),
    .LI(\dht11_driver/Madd_data_count_addsub0000_cy<27>_rt_321 ),
    .O(\dht11_driver/data_count_addsub0000 [27])
  );
  MUXCY   \dht11_driver/Madd_data_count_addsub0000_cy<27>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [26]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_data_count_addsub0000_cy<27>_rt_321 ),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy [27])
  );
  XORCY   \dht11_driver/Madd_data_count_addsub0000_xor<26>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [25]),
    .LI(\dht11_driver/Madd_data_count_addsub0000_cy<26>_rt_319 ),
    .O(\dht11_driver/data_count_addsub0000 [26])
  );
  MUXCY   \dht11_driver/Madd_data_count_addsub0000_cy<26>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [25]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_data_count_addsub0000_cy<26>_rt_319 ),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy [26])
  );
  XORCY   \dht11_driver/Madd_data_count_addsub0000_xor<25>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [24]),
    .LI(\dht11_driver/Madd_data_count_addsub0000_cy<25>_rt_317 ),
    .O(\dht11_driver/data_count_addsub0000 [25])
  );
  MUXCY   \dht11_driver/Madd_data_count_addsub0000_cy<25>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [24]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_data_count_addsub0000_cy<25>_rt_317 ),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy [25])
  );
  XORCY   \dht11_driver/Madd_data_count_addsub0000_xor<24>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [23]),
    .LI(\dht11_driver/Madd_data_count_addsub0000_cy<24>_rt_315 ),
    .O(\dht11_driver/data_count_addsub0000 [24])
  );
  MUXCY   \dht11_driver/Madd_data_count_addsub0000_cy<24>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [23]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_data_count_addsub0000_cy<24>_rt_315 ),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy [24])
  );
  XORCY   \dht11_driver/Madd_data_count_addsub0000_xor<23>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [22]),
    .LI(\dht11_driver/Madd_data_count_addsub0000_cy<23>_rt_313 ),
    .O(\dht11_driver/data_count_addsub0000 [23])
  );
  MUXCY   \dht11_driver/Madd_data_count_addsub0000_cy<23>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [22]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_data_count_addsub0000_cy<23>_rt_313 ),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy [23])
  );
  XORCY   \dht11_driver/Madd_data_count_addsub0000_xor<22>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [21]),
    .LI(\dht11_driver/Madd_data_count_addsub0000_cy<22>_rt_311 ),
    .O(\dht11_driver/data_count_addsub0000 [22])
  );
  MUXCY   \dht11_driver/Madd_data_count_addsub0000_cy<22>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [21]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_data_count_addsub0000_cy<22>_rt_311 ),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy [22])
  );
  XORCY   \dht11_driver/Madd_data_count_addsub0000_xor<21>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [20]),
    .LI(\dht11_driver/Madd_data_count_addsub0000_cy<21>_rt_309 ),
    .O(\dht11_driver/data_count_addsub0000 [21])
  );
  MUXCY   \dht11_driver/Madd_data_count_addsub0000_cy<21>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [20]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_data_count_addsub0000_cy<21>_rt_309 ),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy [21])
  );
  XORCY   \dht11_driver/Madd_data_count_addsub0000_xor<20>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [19]),
    .LI(\dht11_driver/Madd_data_count_addsub0000_cy<20>_rt_307 ),
    .O(\dht11_driver/data_count_addsub0000 [20])
  );
  MUXCY   \dht11_driver/Madd_data_count_addsub0000_cy<20>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [19]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_data_count_addsub0000_cy<20>_rt_307 ),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy [20])
  );
  XORCY   \dht11_driver/Madd_data_count_addsub0000_xor<19>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [18]),
    .LI(\dht11_driver/Madd_data_count_addsub0000_cy<19>_rt_303 ),
    .O(\dht11_driver/data_count_addsub0000 [19])
  );
  MUXCY   \dht11_driver/Madd_data_count_addsub0000_cy<19>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [18]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_data_count_addsub0000_cy<19>_rt_303 ),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy [19])
  );
  XORCY   \dht11_driver/Madd_data_count_addsub0000_xor<18>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [17]),
    .LI(\dht11_driver/Madd_data_count_addsub0000_cy<18>_rt_301 ),
    .O(\dht11_driver/data_count_addsub0000 [18])
  );
  MUXCY   \dht11_driver/Madd_data_count_addsub0000_cy<18>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [17]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_data_count_addsub0000_cy<18>_rt_301 ),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy [18])
  );
  XORCY   \dht11_driver/Madd_data_count_addsub0000_xor<17>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [16]),
    .LI(\dht11_driver/Madd_data_count_addsub0000_cy<17>_rt_299 ),
    .O(\dht11_driver/data_count_addsub0000 [17])
  );
  MUXCY   \dht11_driver/Madd_data_count_addsub0000_cy<17>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [16]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_data_count_addsub0000_cy<17>_rt_299 ),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy [17])
  );
  XORCY   \dht11_driver/Madd_data_count_addsub0000_xor<16>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [15]),
    .LI(\dht11_driver/Madd_data_count_addsub0000_cy<16>_rt_297 ),
    .O(\dht11_driver/data_count_addsub0000 [16])
  );
  MUXCY   \dht11_driver/Madd_data_count_addsub0000_cy<16>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [15]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_data_count_addsub0000_cy<16>_rt_297 ),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy [16])
  );
  XORCY   \dht11_driver/Madd_data_count_addsub0000_xor<15>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [14]),
    .LI(\dht11_driver/Madd_data_count_addsub0000_cy<15>_rt_295 ),
    .O(\dht11_driver/data_count_addsub0000 [15])
  );
  MUXCY   \dht11_driver/Madd_data_count_addsub0000_cy<15>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [14]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_data_count_addsub0000_cy<15>_rt_295 ),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy [15])
  );
  XORCY   \dht11_driver/Madd_data_count_addsub0000_xor<14>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [13]),
    .LI(\dht11_driver/Madd_data_count_addsub0000_cy<14>_rt_293 ),
    .O(\dht11_driver/data_count_addsub0000 [14])
  );
  MUXCY   \dht11_driver/Madd_data_count_addsub0000_cy<14>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [13]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_data_count_addsub0000_cy<14>_rt_293 ),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy [14])
  );
  XORCY   \dht11_driver/Madd_data_count_addsub0000_xor<13>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [12]),
    .LI(\dht11_driver/Madd_data_count_addsub0000_cy<13>_rt_291 ),
    .O(\dht11_driver/data_count_addsub0000 [13])
  );
  MUXCY   \dht11_driver/Madd_data_count_addsub0000_cy<13>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [12]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_data_count_addsub0000_cy<13>_rt_291 ),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy [13])
  );
  XORCY   \dht11_driver/Madd_data_count_addsub0000_xor<12>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [11]),
    .LI(\dht11_driver/Madd_data_count_addsub0000_cy<12>_rt_289 ),
    .O(\dht11_driver/data_count_addsub0000 [12])
  );
  MUXCY   \dht11_driver/Madd_data_count_addsub0000_cy<12>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [11]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_data_count_addsub0000_cy<12>_rt_289 ),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy [12])
  );
  XORCY   \dht11_driver/Madd_data_count_addsub0000_xor<11>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [10]),
    .LI(\dht11_driver/Madd_data_count_addsub0000_cy<11>_rt_287 ),
    .O(\dht11_driver/data_count_addsub0000 [11])
  );
  MUXCY   \dht11_driver/Madd_data_count_addsub0000_cy<11>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [10]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_data_count_addsub0000_cy<11>_rt_287 ),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy [11])
  );
  XORCY   \dht11_driver/Madd_data_count_addsub0000_xor<10>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [9]),
    .LI(\dht11_driver/Madd_data_count_addsub0000_cy<10>_rt_285 ),
    .O(\dht11_driver/data_count_addsub0000 [10])
  );
  MUXCY   \dht11_driver/Madd_data_count_addsub0000_cy<10>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [9]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_data_count_addsub0000_cy<10>_rt_285 ),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy [10])
  );
  XORCY   \dht11_driver/Madd_data_count_addsub0000_xor<9>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [8]),
    .LI(\dht11_driver/Madd_data_count_addsub0000_cy<9>_rt_343 ),
    .O(\dht11_driver/data_count_addsub0000 [9])
  );
  MUXCY   \dht11_driver/Madd_data_count_addsub0000_cy<9>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [8]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_data_count_addsub0000_cy<9>_rt_343 ),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy [9])
  );
  XORCY   \dht11_driver/Madd_data_count_addsub0000_xor<8>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [7]),
    .LI(\dht11_driver/Madd_data_count_addsub0000_cy<8>_rt_341 ),
    .O(\dht11_driver/data_count_addsub0000 [8])
  );
  MUXCY   \dht11_driver/Madd_data_count_addsub0000_cy<8>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [7]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_data_count_addsub0000_cy<8>_rt_341 ),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy [8])
  );
  XORCY   \dht11_driver/Madd_data_count_addsub0000_xor<7>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [6]),
    .LI(\dht11_driver/Madd_data_count_addsub0000_cy<7>_rt_339 ),
    .O(\dht11_driver/data_count_addsub0000 [7])
  );
  MUXCY   \dht11_driver/Madd_data_count_addsub0000_cy<7>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [6]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_data_count_addsub0000_cy<7>_rt_339 ),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy [7])
  );
  XORCY   \dht11_driver/Madd_data_count_addsub0000_xor<6>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [5]),
    .LI(\dht11_driver/Madd_data_count_addsub0000_cy<6>_rt_337 ),
    .O(\dht11_driver/data_count_addsub0000 [6])
  );
  MUXCY   \dht11_driver/Madd_data_count_addsub0000_cy<6>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [5]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_data_count_addsub0000_cy<6>_rt_337 ),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy [6])
  );
  XORCY   \dht11_driver/Madd_data_count_addsub0000_xor<5>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [4]),
    .LI(\dht11_driver/Madd_data_count_addsub0000_cy<5>_rt_335 ),
    .O(\dht11_driver/data_count_addsub0000 [5])
  );
  MUXCY   \dht11_driver/Madd_data_count_addsub0000_cy<5>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [4]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_data_count_addsub0000_cy<5>_rt_335 ),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy [5])
  );
  XORCY   \dht11_driver/Madd_data_count_addsub0000_xor<4>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [3]),
    .LI(\dht11_driver/Madd_data_count_addsub0000_cy<4>_rt_333 ),
    .O(\dht11_driver/data_count_addsub0000 [4])
  );
  MUXCY   \dht11_driver/Madd_data_count_addsub0000_cy<4>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [3]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_data_count_addsub0000_cy<4>_rt_333 ),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy [4])
  );
  XORCY   \dht11_driver/Madd_data_count_addsub0000_xor<3>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [2]),
    .LI(\dht11_driver/Madd_data_count_addsub0000_cy<3>_rt_331 ),
    .O(\dht11_driver/data_count_addsub0000 [3])
  );
  MUXCY   \dht11_driver/Madd_data_count_addsub0000_cy<3>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [2]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_data_count_addsub0000_cy<3>_rt_331 ),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy [3])
  );
  XORCY   \dht11_driver/Madd_data_count_addsub0000_xor<2>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [1]),
    .LI(\dht11_driver/Madd_data_count_addsub0000_cy<2>_rt_327 ),
    .O(\dht11_driver/data_count_addsub0000 [2])
  );
  MUXCY   \dht11_driver/Madd_data_count_addsub0000_cy<2>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [1]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_data_count_addsub0000_cy<2>_rt_327 ),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy [2])
  );
  XORCY   \dht11_driver/Madd_data_count_addsub0000_xor<1>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [0]),
    .LI(\dht11_driver/Madd_data_count_addsub0000_cy<1>_rt_305 ),
    .O(\dht11_driver/data_count_addsub0000 [1])
  );
  MUXCY   \dht11_driver/Madd_data_count_addsub0000_cy<1>  (
    .CI(\dht11_driver/Madd_data_count_addsub0000_cy [0]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_data_count_addsub0000_cy<1>_rt_305 ),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy [1])
  );
  XORCY   \dht11_driver/Madd_data_count_addsub0000_xor<0>  (
    .CI(IO_P1_1_OBUF_8),
    .LI(\dht11_driver/Madd_data_count_addsub0000_lut [0]),
    .O(\dht11_driver/data_count_addsub0000 [0])
  );
  MUXCY   \dht11_driver/Madd_data_count_addsub0000_cy<0>  (
    .CI(IO_P1_1_OBUF_8),
    .DI(IO_P1_3_OBUF_10),
    .S(\dht11_driver/Madd_data_count_addsub0000_lut [0]),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy [0])
  );
  MUXCY   \dht11_driver/Mcompar_data_23_cmp_gt0000_cy<11>  (
    .CI(\dht11_driver/Mcompar_data_23_cmp_gt0000_cy [10]),
    .DI(\dht11_driver/clock_count [31]),
    .S(\dht11_driver/Mcompar_data_23_cmp_gt0000_lut[11] ),
    .O(\dht11_driver/Mcompar_data_23_cmp_gt0000_cy [11])
  );
  MUXCY   \dht11_driver/Mcompar_data_23_cmp_gt0000_cy<10>  (
    .CI(\dht11_driver/Mcompar_data_23_cmp_gt0000_cy [9]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Mcompar_data_23_cmp_gt0000_lut[10] ),
    .O(\dht11_driver/Mcompar_data_23_cmp_gt0000_cy [10])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \dht11_driver/Mcompar_data_23_cmp_gt0000_lut<10>  (
    .I0(\dht11_driver/clock_count [30]),
    .I1(\dht11_driver/clock_count [31]),
    .O(\dht11_driver/Mcompar_data_23_cmp_gt0000_lut[10] )
  );
  MUXCY   \dht11_driver/Mcompar_data_23_cmp_gt0000_cy<9>  (
    .CI(\dht11_driver/Mcompar_data_23_cmp_gt0000_cy [8]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Mcompar_data_23_cmp_gt0000_lut[9] ),
    .O(\dht11_driver/Mcompar_data_23_cmp_gt0000_cy [9])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \dht11_driver/Mcompar_data_23_cmp_gt0000_lut<9>  (
    .I0(\dht11_driver/clock_count [26]),
    .I1(\dht11_driver/clock_count [27]),
    .I2(\dht11_driver/clock_count [28]),
    .I3(\dht11_driver/clock_count [29]),
    .O(\dht11_driver/Mcompar_data_23_cmp_gt0000_lut[9] )
  );
  MUXCY   \dht11_driver/Mcompar_data_23_cmp_gt0000_cy<8>  (
    .CI(\dht11_driver/Mcompar_data_23_cmp_gt0000_cy [7]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Mcompar_data_23_cmp_gt0000_lut[8] ),
    .O(\dht11_driver/Mcompar_data_23_cmp_gt0000_cy [8])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \dht11_driver/Mcompar_data_23_cmp_gt0000_lut<8>  (
    .I0(\dht11_driver/clock_count [22]),
    .I1(\dht11_driver/clock_count [23]),
    .I2(\dht11_driver/clock_count [24]),
    .I3(\dht11_driver/clock_count [25]),
    .O(\dht11_driver/Mcompar_data_23_cmp_gt0000_lut[8] )
  );
  MUXCY   \dht11_driver/Mcompar_data_23_cmp_gt0000_cy<7>  (
    .CI(\dht11_driver/Mcompar_data_23_cmp_gt0000_cy [6]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Mcompar_data_23_cmp_gt0000_lut[7] ),
    .O(\dht11_driver/Mcompar_data_23_cmp_gt0000_cy [7])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \dht11_driver/Mcompar_data_23_cmp_gt0000_lut<7>  (
    .I0(\dht11_driver/clock_count [18]),
    .I1(\dht11_driver/clock_count [19]),
    .I2(\dht11_driver/clock_count [20]),
    .I3(\dht11_driver/clock_count [21]),
    .O(\dht11_driver/Mcompar_data_23_cmp_gt0000_lut[7] )
  );
  MUXCY   \dht11_driver/Mcompar_data_23_cmp_gt0000_cy<6>  (
    .CI(\dht11_driver/Mcompar_data_23_cmp_gt0000_cy [5]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Mcompar_data_23_cmp_gt0000_lut[6] ),
    .O(\dht11_driver/Mcompar_data_23_cmp_gt0000_cy [6])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \dht11_driver/Mcompar_data_23_cmp_gt0000_lut<6>  (
    .I0(\dht11_driver/clock_count [14]),
    .I1(\dht11_driver/clock_count [15]),
    .I2(\dht11_driver/clock_count [16]),
    .I3(\dht11_driver/clock_count [17]),
    .O(\dht11_driver/Mcompar_data_23_cmp_gt0000_lut[6] )
  );
  MUXCY   \dht11_driver/Mcompar_data_23_cmp_gt0000_cy<5>  (
    .CI(\dht11_driver/Mcompar_data_23_cmp_gt0000_cy [4]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Mcompar_data_23_cmp_gt0000_lut[5] ),
    .O(\dht11_driver/Mcompar_data_23_cmp_gt0000_cy [5])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \dht11_driver/Mcompar_data_23_cmp_gt0000_lut<5>  (
    .I0(\dht11_driver/clock_count [10]),
    .I1(\dht11_driver/clock_count [11]),
    .I2(\dht11_driver/clock_count [12]),
    .I3(\dht11_driver/clock_count [13]),
    .O(\dht11_driver/Mcompar_data_23_cmp_gt0000_lut[5] )
  );
  MUXCY   \dht11_driver/Mcompar_data_23_cmp_gt0000_cy<4>  (
    .CI(\dht11_driver/Mcompar_data_23_cmp_gt0000_cy [3]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Mcompar_data_23_cmp_gt0000_lut[4] ),
    .O(\dht11_driver/Mcompar_data_23_cmp_gt0000_cy [4])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \dht11_driver/Mcompar_data_23_cmp_gt0000_lut<4>  (
    .I0(\dht11_driver/clock_count [6]),
    .I1(\dht11_driver/clock_count [7]),
    .I2(\dht11_driver/clock_count [8]),
    .I3(\dht11_driver/clock_count [9]),
    .O(\dht11_driver/Mcompar_data_23_cmp_gt0000_lut[4] )
  );
  MUXCY   \dht11_driver/Mcompar_data_23_cmp_gt0000_cy<3>  (
    .CI(\dht11_driver/Mcompar_data_23_cmp_gt0000_cy [2]),
    .DI(IO_P1_3_OBUF_10),
    .S(\dht11_driver/Mcompar_data_23_cmp_gt0000_cy<3>_rt_416 ),
    .O(\dht11_driver/Mcompar_data_23_cmp_gt0000_cy [3])
  );
  MUXCY   \dht11_driver/Mcompar_data_23_cmp_gt0000_cy<2>  (
    .CI(\dht11_driver/Mcompar_data_23_cmp_gt0000_cy [1]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Mcompar_data_23_cmp_gt0000_lut[2] ),
    .O(\dht11_driver/Mcompar_data_23_cmp_gt0000_cy [2])
  );
  MUXCY   \dht11_driver/Mcompar_data_23_cmp_gt0000_cy<1>  (
    .CI(\dht11_driver/Mcompar_data_23_cmp_gt0000_cy [0]),
    .DI(IO_P1_3_OBUF_10),
    .S(\dht11_driver/Mcompar_data_23_cmp_gt0000_cy<1>_rt_413 ),
    .O(\dht11_driver/Mcompar_data_23_cmp_gt0000_cy [1])
  );
  MUXCY   \dht11_driver/Mcompar_data_23_cmp_gt0000_cy<0>  (
    .CI(IO_P1_3_OBUF_10),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Mcompar_data_23_cmp_gt0000_lut[0] ),
    .O(\dht11_driver/Mcompar_data_23_cmp_gt0000_cy [0])
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \dht11_driver/Mcompar_data_23_cmp_gt0000_lut<0>  (
    .I0(\dht11_driver/clock_count [0]),
    .I1(\dht11_driver/clock_count [1]),
    .I2(\dht11_driver/clock_count [2]),
    .O(\dht11_driver/Mcompar_data_23_cmp_gt0000_lut[0] )
  );
  XORCY   \dht11_driver/Madd_clock_count_share0000_xor<31>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [30]),
    .LI(\dht11_driver/Madd_clock_count_share0000_xor<31>_rt_282 ),
    .O(\dht11_driver/clock_count_share0000 [31])
  );
  XORCY   \dht11_driver/Madd_clock_count_share0000_xor<30>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [29]),
    .LI(\dht11_driver/Madd_clock_count_share0000_cy<30>_rt_266 ),
    .O(\dht11_driver/clock_count_share0000 [30])
  );
  MUXCY   \dht11_driver/Madd_clock_count_share0000_cy<30>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [29]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_clock_count_share0000_cy<30>_rt_266 ),
    .O(\dht11_driver/Madd_clock_count_share0000_cy [30])
  );
  XORCY   \dht11_driver/Madd_clock_count_share0000_xor<29>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [28]),
    .LI(\dht11_driver/Madd_clock_count_share0000_cy<29>_rt_262 ),
    .O(\dht11_driver/clock_count_share0000 [29])
  );
  MUXCY   \dht11_driver/Madd_clock_count_share0000_cy<29>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [28]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_clock_count_share0000_cy<29>_rt_262 ),
    .O(\dht11_driver/Madd_clock_count_share0000_cy [29])
  );
  XORCY   \dht11_driver/Madd_clock_count_share0000_xor<28>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [27]),
    .LI(\dht11_driver/Madd_clock_count_share0000_cy<28>_rt_260 ),
    .O(\dht11_driver/clock_count_share0000 [28])
  );
  MUXCY   \dht11_driver/Madd_clock_count_share0000_cy<28>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [27]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_clock_count_share0000_cy<28>_rt_260 ),
    .O(\dht11_driver/Madd_clock_count_share0000_cy [28])
  );
  XORCY   \dht11_driver/Madd_clock_count_share0000_xor<27>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [26]),
    .LI(\dht11_driver/Madd_clock_count_share0000_cy<27>_rt_258 ),
    .O(\dht11_driver/clock_count_share0000 [27])
  );
  MUXCY   \dht11_driver/Madd_clock_count_share0000_cy<27>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [26]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_clock_count_share0000_cy<27>_rt_258 ),
    .O(\dht11_driver/Madd_clock_count_share0000_cy [27])
  );
  XORCY   \dht11_driver/Madd_clock_count_share0000_xor<26>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [25]),
    .LI(\dht11_driver/Madd_clock_count_share0000_cy<26>_rt_256 ),
    .O(\dht11_driver/clock_count_share0000 [26])
  );
  MUXCY   \dht11_driver/Madd_clock_count_share0000_cy<26>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [25]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_clock_count_share0000_cy<26>_rt_256 ),
    .O(\dht11_driver/Madd_clock_count_share0000_cy [26])
  );
  XORCY   \dht11_driver/Madd_clock_count_share0000_xor<25>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [24]),
    .LI(\dht11_driver/Madd_clock_count_share0000_cy<25>_rt_254 ),
    .O(\dht11_driver/clock_count_share0000 [25])
  );
  MUXCY   \dht11_driver/Madd_clock_count_share0000_cy<25>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [24]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_clock_count_share0000_cy<25>_rt_254 ),
    .O(\dht11_driver/Madd_clock_count_share0000_cy [25])
  );
  XORCY   \dht11_driver/Madd_clock_count_share0000_xor<24>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [23]),
    .LI(\dht11_driver/Madd_clock_count_share0000_cy<24>_rt_252 ),
    .O(\dht11_driver/clock_count_share0000 [24])
  );
  MUXCY   \dht11_driver/Madd_clock_count_share0000_cy<24>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [23]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_clock_count_share0000_cy<24>_rt_252 ),
    .O(\dht11_driver/Madd_clock_count_share0000_cy [24])
  );
  XORCY   \dht11_driver/Madd_clock_count_share0000_xor<23>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [22]),
    .LI(\dht11_driver/Madd_clock_count_share0000_cy<23>_rt_250 ),
    .O(\dht11_driver/clock_count_share0000 [23])
  );
  MUXCY   \dht11_driver/Madd_clock_count_share0000_cy<23>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [22]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_clock_count_share0000_cy<23>_rt_250 ),
    .O(\dht11_driver/Madd_clock_count_share0000_cy [23])
  );
  XORCY   \dht11_driver/Madd_clock_count_share0000_xor<22>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [21]),
    .LI(\dht11_driver/Madd_clock_count_share0000_cy<22>_rt_248 ),
    .O(\dht11_driver/clock_count_share0000 [22])
  );
  MUXCY   \dht11_driver/Madd_clock_count_share0000_cy<22>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [21]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_clock_count_share0000_cy<22>_rt_248 ),
    .O(\dht11_driver/Madd_clock_count_share0000_cy [22])
  );
  XORCY   \dht11_driver/Madd_clock_count_share0000_xor<21>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [20]),
    .LI(\dht11_driver/Madd_clock_count_share0000_cy<21>_rt_246 ),
    .O(\dht11_driver/clock_count_share0000 [21])
  );
  MUXCY   \dht11_driver/Madd_clock_count_share0000_cy<21>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [20]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_clock_count_share0000_cy<21>_rt_246 ),
    .O(\dht11_driver/Madd_clock_count_share0000_cy [21])
  );
  XORCY   \dht11_driver/Madd_clock_count_share0000_xor<20>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [19]),
    .LI(\dht11_driver/Madd_clock_count_share0000_cy<20>_rt_244 ),
    .O(\dht11_driver/clock_count_share0000 [20])
  );
  MUXCY   \dht11_driver/Madd_clock_count_share0000_cy<20>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [19]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_clock_count_share0000_cy<20>_rt_244 ),
    .O(\dht11_driver/Madd_clock_count_share0000_cy [20])
  );
  XORCY   \dht11_driver/Madd_clock_count_share0000_xor<19>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [18]),
    .LI(\dht11_driver/Madd_clock_count_share0000_cy<19>_rt_240 ),
    .O(\dht11_driver/clock_count_share0000 [19])
  );
  MUXCY   \dht11_driver/Madd_clock_count_share0000_cy<19>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [18]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_clock_count_share0000_cy<19>_rt_240 ),
    .O(\dht11_driver/Madd_clock_count_share0000_cy [19])
  );
  XORCY   \dht11_driver/Madd_clock_count_share0000_xor<18>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [17]),
    .LI(\dht11_driver/Madd_clock_count_share0000_cy<18>_rt_238 ),
    .O(\dht11_driver/clock_count_share0000 [18])
  );
  MUXCY   \dht11_driver/Madd_clock_count_share0000_cy<18>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [17]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_clock_count_share0000_cy<18>_rt_238 ),
    .O(\dht11_driver/Madd_clock_count_share0000_cy [18])
  );
  XORCY   \dht11_driver/Madd_clock_count_share0000_xor<17>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [16]),
    .LI(\dht11_driver/Madd_clock_count_share0000_cy<17>_rt_236 ),
    .O(\dht11_driver/clock_count_share0000 [17])
  );
  MUXCY   \dht11_driver/Madd_clock_count_share0000_cy<17>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [16]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_clock_count_share0000_cy<17>_rt_236 ),
    .O(\dht11_driver/Madd_clock_count_share0000_cy [17])
  );
  XORCY   \dht11_driver/Madd_clock_count_share0000_xor<16>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [15]),
    .LI(\dht11_driver/Madd_clock_count_share0000_cy<16>_rt_234 ),
    .O(\dht11_driver/clock_count_share0000 [16])
  );
  MUXCY   \dht11_driver/Madd_clock_count_share0000_cy<16>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [15]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_clock_count_share0000_cy<16>_rt_234 ),
    .O(\dht11_driver/Madd_clock_count_share0000_cy [16])
  );
  XORCY   \dht11_driver/Madd_clock_count_share0000_xor<15>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [14]),
    .LI(\dht11_driver/Madd_clock_count_share0000_cy<15>_rt_232 ),
    .O(\dht11_driver/clock_count_share0000 [15])
  );
  MUXCY   \dht11_driver/Madd_clock_count_share0000_cy<15>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [14]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_clock_count_share0000_cy<15>_rt_232 ),
    .O(\dht11_driver/Madd_clock_count_share0000_cy [15])
  );
  XORCY   \dht11_driver/Madd_clock_count_share0000_xor<14>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [13]),
    .LI(\dht11_driver/Madd_clock_count_share0000_cy<14>_rt_230 ),
    .O(\dht11_driver/clock_count_share0000 [14])
  );
  MUXCY   \dht11_driver/Madd_clock_count_share0000_cy<14>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [13]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_clock_count_share0000_cy<14>_rt_230 ),
    .O(\dht11_driver/Madd_clock_count_share0000_cy [14])
  );
  XORCY   \dht11_driver/Madd_clock_count_share0000_xor<13>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [12]),
    .LI(\dht11_driver/Madd_clock_count_share0000_cy<13>_rt_228 ),
    .O(\dht11_driver/clock_count_share0000 [13])
  );
  MUXCY   \dht11_driver/Madd_clock_count_share0000_cy<13>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [12]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_clock_count_share0000_cy<13>_rt_228 ),
    .O(\dht11_driver/Madd_clock_count_share0000_cy [13])
  );
  XORCY   \dht11_driver/Madd_clock_count_share0000_xor<12>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [11]),
    .LI(\dht11_driver/Madd_clock_count_share0000_cy<12>_rt_226 ),
    .O(\dht11_driver/clock_count_share0000 [12])
  );
  MUXCY   \dht11_driver/Madd_clock_count_share0000_cy<12>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [11]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_clock_count_share0000_cy<12>_rt_226 ),
    .O(\dht11_driver/Madd_clock_count_share0000_cy [12])
  );
  XORCY   \dht11_driver/Madd_clock_count_share0000_xor<11>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [10]),
    .LI(\dht11_driver/Madd_clock_count_share0000_cy<11>_rt_224 ),
    .O(\dht11_driver/clock_count_share0000 [11])
  );
  MUXCY   \dht11_driver/Madd_clock_count_share0000_cy<11>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [10]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_clock_count_share0000_cy<11>_rt_224 ),
    .O(\dht11_driver/Madd_clock_count_share0000_cy [11])
  );
  XORCY   \dht11_driver/Madd_clock_count_share0000_xor<10>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [9]),
    .LI(\dht11_driver/Madd_clock_count_share0000_cy<10>_rt_222 ),
    .O(\dht11_driver/clock_count_share0000 [10])
  );
  MUXCY   \dht11_driver/Madd_clock_count_share0000_cy<10>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [9]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_clock_count_share0000_cy<10>_rt_222 ),
    .O(\dht11_driver/Madd_clock_count_share0000_cy [10])
  );
  XORCY   \dht11_driver/Madd_clock_count_share0000_xor<9>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [8]),
    .LI(\dht11_driver/Madd_clock_count_share0000_cy<9>_rt_280 ),
    .O(\dht11_driver/clock_count_share0000 [9])
  );
  MUXCY   \dht11_driver/Madd_clock_count_share0000_cy<9>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [8]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_clock_count_share0000_cy<9>_rt_280 ),
    .O(\dht11_driver/Madd_clock_count_share0000_cy [9])
  );
  XORCY   \dht11_driver/Madd_clock_count_share0000_xor<8>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [7]),
    .LI(\dht11_driver/Madd_clock_count_share0000_cy<8>_rt_278 ),
    .O(\dht11_driver/clock_count_share0000 [8])
  );
  MUXCY   \dht11_driver/Madd_clock_count_share0000_cy<8>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [7]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_clock_count_share0000_cy<8>_rt_278 ),
    .O(\dht11_driver/Madd_clock_count_share0000_cy [8])
  );
  XORCY   \dht11_driver/Madd_clock_count_share0000_xor<7>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [6]),
    .LI(\dht11_driver/Madd_clock_count_share0000_cy<7>_rt_276 ),
    .O(\dht11_driver/clock_count_share0000 [7])
  );
  MUXCY   \dht11_driver/Madd_clock_count_share0000_cy<7>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [6]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_clock_count_share0000_cy<7>_rt_276 ),
    .O(\dht11_driver/Madd_clock_count_share0000_cy [7])
  );
  XORCY   \dht11_driver/Madd_clock_count_share0000_xor<6>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [5]),
    .LI(\dht11_driver/Madd_clock_count_share0000_cy<6>_rt_274 ),
    .O(\dht11_driver/clock_count_share0000 [6])
  );
  MUXCY   \dht11_driver/Madd_clock_count_share0000_cy<6>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [5]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_clock_count_share0000_cy<6>_rt_274 ),
    .O(\dht11_driver/Madd_clock_count_share0000_cy [6])
  );
  XORCY   \dht11_driver/Madd_clock_count_share0000_xor<5>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [4]),
    .LI(\dht11_driver/Madd_clock_count_share0000_cy<5>_rt_272 ),
    .O(\dht11_driver/clock_count_share0000 [5])
  );
  MUXCY   \dht11_driver/Madd_clock_count_share0000_cy<5>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [4]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_clock_count_share0000_cy<5>_rt_272 ),
    .O(\dht11_driver/Madd_clock_count_share0000_cy [5])
  );
  XORCY   \dht11_driver/Madd_clock_count_share0000_xor<4>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [3]),
    .LI(\dht11_driver/Madd_clock_count_share0000_cy<4>_rt_270 ),
    .O(\dht11_driver/clock_count_share0000 [4])
  );
  MUXCY   \dht11_driver/Madd_clock_count_share0000_cy<4>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [3]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_clock_count_share0000_cy<4>_rt_270 ),
    .O(\dht11_driver/Madd_clock_count_share0000_cy [4])
  );
  XORCY   \dht11_driver/Madd_clock_count_share0000_xor<3>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [2]),
    .LI(\dht11_driver/Madd_clock_count_share0000_cy<3>_rt_268 ),
    .O(\dht11_driver/clock_count_share0000 [3])
  );
  MUXCY   \dht11_driver/Madd_clock_count_share0000_cy<3>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [2]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_clock_count_share0000_cy<3>_rt_268 ),
    .O(\dht11_driver/Madd_clock_count_share0000_cy [3])
  );
  XORCY   \dht11_driver/Madd_clock_count_share0000_xor<2>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [1]),
    .LI(\dht11_driver/Madd_clock_count_share0000_cy<2>_rt_264 ),
    .O(\dht11_driver/clock_count_share0000 [2])
  );
  MUXCY   \dht11_driver/Madd_clock_count_share0000_cy<2>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [1]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_clock_count_share0000_cy<2>_rt_264 ),
    .O(\dht11_driver/Madd_clock_count_share0000_cy [2])
  );
  XORCY   \dht11_driver/Madd_clock_count_share0000_xor<1>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [0]),
    .LI(\dht11_driver/Madd_clock_count_share0000_cy<1>_rt_242 ),
    .O(\dht11_driver/clock_count_share0000 [1])
  );
  MUXCY   \dht11_driver/Madd_clock_count_share0000_cy<1>  (
    .CI(\dht11_driver/Madd_clock_count_share0000_cy [0]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_clock_count_share0000_cy<1>_rt_242 ),
    .O(\dht11_driver/Madd_clock_count_share0000_cy [1])
  );
  XORCY   \dht11_driver/Madd_clock_count_share0000_xor<0>  (
    .CI(IO_P1_1_OBUF_8),
    .LI(\dht11_driver/Madd_clock_count_share0000_lut [0]),
    .O(\dht11_driver/clock_count_share0000 [0])
  );
  MUXCY   \dht11_driver/Madd_clock_count_share0000_cy<0>  (
    .CI(IO_P1_1_OBUF_8),
    .DI(IO_P1_3_OBUF_10),
    .S(\dht11_driver/Madd_clock_count_share0000_lut [0]),
    .O(\dht11_driver/Madd_clock_count_share0000_cy [0])
  );
  XORCY   \dht11_driver/Madd_global_count_addsub0000_xor<31>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [30]),
    .LI(\dht11_driver/Madd_global_count_addsub0000_xor<31>_rt_408 ),
    .O(\dht11_driver/global_count_addsub0000 [31])
  );
  XORCY   \dht11_driver/Madd_global_count_addsub0000_xor<30>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [29]),
    .LI(\dht11_driver/Madd_global_count_addsub0000_cy<30>_rt_392 ),
    .O(\dht11_driver/global_count_addsub0000 [30])
  );
  MUXCY   \dht11_driver/Madd_global_count_addsub0000_cy<30>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [29]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_global_count_addsub0000_cy<30>_rt_392 ),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy [30])
  );
  XORCY   \dht11_driver/Madd_global_count_addsub0000_xor<29>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [28]),
    .LI(\dht11_driver/Madd_global_count_addsub0000_cy<29>_rt_388 ),
    .O(\dht11_driver/global_count_addsub0000 [29])
  );
  MUXCY   \dht11_driver/Madd_global_count_addsub0000_cy<29>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [28]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_global_count_addsub0000_cy<29>_rt_388 ),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy [29])
  );
  XORCY   \dht11_driver/Madd_global_count_addsub0000_xor<28>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [27]),
    .LI(\dht11_driver/Madd_global_count_addsub0000_cy<28>_rt_386 ),
    .O(\dht11_driver/global_count_addsub0000 [28])
  );
  MUXCY   \dht11_driver/Madd_global_count_addsub0000_cy<28>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [27]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_global_count_addsub0000_cy<28>_rt_386 ),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy [28])
  );
  XORCY   \dht11_driver/Madd_global_count_addsub0000_xor<27>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [26]),
    .LI(\dht11_driver/Madd_global_count_addsub0000_cy<27>_rt_384 ),
    .O(\dht11_driver/global_count_addsub0000 [27])
  );
  MUXCY   \dht11_driver/Madd_global_count_addsub0000_cy<27>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [26]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_global_count_addsub0000_cy<27>_rt_384 ),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy [27])
  );
  XORCY   \dht11_driver/Madd_global_count_addsub0000_xor<26>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [25]),
    .LI(\dht11_driver/Madd_global_count_addsub0000_cy<26>_rt_382 ),
    .O(\dht11_driver/global_count_addsub0000 [26])
  );
  MUXCY   \dht11_driver/Madd_global_count_addsub0000_cy<26>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [25]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_global_count_addsub0000_cy<26>_rt_382 ),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy [26])
  );
  XORCY   \dht11_driver/Madd_global_count_addsub0000_xor<25>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [24]),
    .LI(\dht11_driver/Madd_global_count_addsub0000_cy<25>_rt_380 ),
    .O(\dht11_driver/global_count_addsub0000 [25])
  );
  MUXCY   \dht11_driver/Madd_global_count_addsub0000_cy<25>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [24]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_global_count_addsub0000_cy<25>_rt_380 ),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy [25])
  );
  XORCY   \dht11_driver/Madd_global_count_addsub0000_xor<24>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [23]),
    .LI(\dht11_driver/Madd_global_count_addsub0000_cy<24>_rt_378 ),
    .O(\dht11_driver/global_count_addsub0000 [24])
  );
  MUXCY   \dht11_driver/Madd_global_count_addsub0000_cy<24>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [23]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_global_count_addsub0000_cy<24>_rt_378 ),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy [24])
  );
  XORCY   \dht11_driver/Madd_global_count_addsub0000_xor<23>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [22]),
    .LI(\dht11_driver/Madd_global_count_addsub0000_cy<23>_rt_376 ),
    .O(\dht11_driver/global_count_addsub0000 [23])
  );
  MUXCY   \dht11_driver/Madd_global_count_addsub0000_cy<23>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [22]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_global_count_addsub0000_cy<23>_rt_376 ),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy [23])
  );
  XORCY   \dht11_driver/Madd_global_count_addsub0000_xor<22>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [21]),
    .LI(\dht11_driver/Madd_global_count_addsub0000_cy<22>_rt_374 ),
    .O(\dht11_driver/global_count_addsub0000 [22])
  );
  MUXCY   \dht11_driver/Madd_global_count_addsub0000_cy<22>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [21]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_global_count_addsub0000_cy<22>_rt_374 ),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy [22])
  );
  XORCY   \dht11_driver/Madd_global_count_addsub0000_xor<21>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [20]),
    .LI(\dht11_driver/Madd_global_count_addsub0000_cy<21>_rt_372 ),
    .O(\dht11_driver/global_count_addsub0000 [21])
  );
  MUXCY   \dht11_driver/Madd_global_count_addsub0000_cy<21>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [20]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_global_count_addsub0000_cy<21>_rt_372 ),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy [21])
  );
  XORCY   \dht11_driver/Madd_global_count_addsub0000_xor<20>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [19]),
    .LI(\dht11_driver/Madd_global_count_addsub0000_cy<20>_rt_370 ),
    .O(\dht11_driver/global_count_addsub0000 [20])
  );
  MUXCY   \dht11_driver/Madd_global_count_addsub0000_cy<20>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [19]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_global_count_addsub0000_cy<20>_rt_370 ),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy [20])
  );
  XORCY   \dht11_driver/Madd_global_count_addsub0000_xor<19>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [18]),
    .LI(\dht11_driver/Madd_global_count_addsub0000_cy<19>_rt_366 ),
    .O(\dht11_driver/global_count_addsub0000 [19])
  );
  MUXCY   \dht11_driver/Madd_global_count_addsub0000_cy<19>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [18]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_global_count_addsub0000_cy<19>_rt_366 ),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy [19])
  );
  XORCY   \dht11_driver/Madd_global_count_addsub0000_xor<18>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [17]),
    .LI(\dht11_driver/Madd_global_count_addsub0000_cy<18>_rt_364 ),
    .O(\dht11_driver/global_count_addsub0000 [18])
  );
  MUXCY   \dht11_driver/Madd_global_count_addsub0000_cy<18>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [17]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_global_count_addsub0000_cy<18>_rt_364 ),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy [18])
  );
  XORCY   \dht11_driver/Madd_global_count_addsub0000_xor<17>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [16]),
    .LI(\dht11_driver/Madd_global_count_addsub0000_cy<17>_rt_362 ),
    .O(\dht11_driver/global_count_addsub0000 [17])
  );
  MUXCY   \dht11_driver/Madd_global_count_addsub0000_cy<17>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [16]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_global_count_addsub0000_cy<17>_rt_362 ),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy [17])
  );
  XORCY   \dht11_driver/Madd_global_count_addsub0000_xor<16>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [15]),
    .LI(\dht11_driver/Madd_global_count_addsub0000_cy<16>_rt_360 ),
    .O(\dht11_driver/global_count_addsub0000 [16])
  );
  MUXCY   \dht11_driver/Madd_global_count_addsub0000_cy<16>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [15]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_global_count_addsub0000_cy<16>_rt_360 ),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy [16])
  );
  XORCY   \dht11_driver/Madd_global_count_addsub0000_xor<15>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [14]),
    .LI(\dht11_driver/Madd_global_count_addsub0000_cy<15>_rt_358 ),
    .O(\dht11_driver/global_count_addsub0000 [15])
  );
  MUXCY   \dht11_driver/Madd_global_count_addsub0000_cy<15>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [14]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_global_count_addsub0000_cy<15>_rt_358 ),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy [15])
  );
  XORCY   \dht11_driver/Madd_global_count_addsub0000_xor<14>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [13]),
    .LI(\dht11_driver/Madd_global_count_addsub0000_cy<14>_rt_356 ),
    .O(\dht11_driver/global_count_addsub0000 [14])
  );
  MUXCY   \dht11_driver/Madd_global_count_addsub0000_cy<14>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [13]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_global_count_addsub0000_cy<14>_rt_356 ),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy [14])
  );
  XORCY   \dht11_driver/Madd_global_count_addsub0000_xor<13>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [12]),
    .LI(\dht11_driver/Madd_global_count_addsub0000_cy<13>_rt_354 ),
    .O(\dht11_driver/global_count_addsub0000 [13])
  );
  MUXCY   \dht11_driver/Madd_global_count_addsub0000_cy<13>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [12]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_global_count_addsub0000_cy<13>_rt_354 ),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy [13])
  );
  XORCY   \dht11_driver/Madd_global_count_addsub0000_xor<12>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [11]),
    .LI(\dht11_driver/Madd_global_count_addsub0000_cy<12>_rt_352 ),
    .O(\dht11_driver/global_count_addsub0000 [12])
  );
  MUXCY   \dht11_driver/Madd_global_count_addsub0000_cy<12>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [11]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_global_count_addsub0000_cy<12>_rt_352 ),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy [12])
  );
  XORCY   \dht11_driver/Madd_global_count_addsub0000_xor<11>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [10]),
    .LI(\dht11_driver/Madd_global_count_addsub0000_cy<11>_rt_350 ),
    .O(\dht11_driver/global_count_addsub0000 [11])
  );
  MUXCY   \dht11_driver/Madd_global_count_addsub0000_cy<11>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [10]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_global_count_addsub0000_cy<11>_rt_350 ),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy [11])
  );
  XORCY   \dht11_driver/Madd_global_count_addsub0000_xor<10>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [9]),
    .LI(\dht11_driver/Madd_global_count_addsub0000_cy<10>_rt_348 ),
    .O(\dht11_driver/global_count_addsub0000 [10])
  );
  MUXCY   \dht11_driver/Madd_global_count_addsub0000_cy<10>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [9]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_global_count_addsub0000_cy<10>_rt_348 ),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy [10])
  );
  XORCY   \dht11_driver/Madd_global_count_addsub0000_xor<9>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [8]),
    .LI(\dht11_driver/Madd_global_count_addsub0000_cy<9>_rt_406 ),
    .O(\dht11_driver/global_count_addsub0000 [9])
  );
  MUXCY   \dht11_driver/Madd_global_count_addsub0000_cy<9>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [8]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_global_count_addsub0000_cy<9>_rt_406 ),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy [9])
  );
  XORCY   \dht11_driver/Madd_global_count_addsub0000_xor<8>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [7]),
    .LI(\dht11_driver/Madd_global_count_addsub0000_cy<8>_rt_404 ),
    .O(\dht11_driver/global_count_addsub0000 [8])
  );
  MUXCY   \dht11_driver/Madd_global_count_addsub0000_cy<8>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [7]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_global_count_addsub0000_cy<8>_rt_404 ),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy [8])
  );
  XORCY   \dht11_driver/Madd_global_count_addsub0000_xor<7>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [6]),
    .LI(\dht11_driver/Madd_global_count_addsub0000_cy<7>_rt_402 ),
    .O(\dht11_driver/global_count_addsub0000 [7])
  );
  MUXCY   \dht11_driver/Madd_global_count_addsub0000_cy<7>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [6]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_global_count_addsub0000_cy<7>_rt_402 ),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy [7])
  );
  XORCY   \dht11_driver/Madd_global_count_addsub0000_xor<6>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [5]),
    .LI(\dht11_driver/Madd_global_count_addsub0000_cy<6>_rt_400 ),
    .O(\dht11_driver/global_count_addsub0000 [6])
  );
  MUXCY   \dht11_driver/Madd_global_count_addsub0000_cy<6>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [5]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_global_count_addsub0000_cy<6>_rt_400 ),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy [6])
  );
  XORCY   \dht11_driver/Madd_global_count_addsub0000_xor<5>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [4]),
    .LI(\dht11_driver/Madd_global_count_addsub0000_cy<5>_rt_398 ),
    .O(\dht11_driver/global_count_addsub0000 [5])
  );
  MUXCY   \dht11_driver/Madd_global_count_addsub0000_cy<5>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [4]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_global_count_addsub0000_cy<5>_rt_398 ),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy [5])
  );
  XORCY   \dht11_driver/Madd_global_count_addsub0000_xor<4>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [3]),
    .LI(\dht11_driver/Madd_global_count_addsub0000_cy<4>_rt_396 ),
    .O(\dht11_driver/global_count_addsub0000 [4])
  );
  MUXCY   \dht11_driver/Madd_global_count_addsub0000_cy<4>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [3]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_global_count_addsub0000_cy<4>_rt_396 ),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy [4])
  );
  XORCY   \dht11_driver/Madd_global_count_addsub0000_xor<3>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [2]),
    .LI(\dht11_driver/Madd_global_count_addsub0000_cy<3>_rt_394 ),
    .O(\dht11_driver/global_count_addsub0000 [3])
  );
  MUXCY   \dht11_driver/Madd_global_count_addsub0000_cy<3>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [2]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_global_count_addsub0000_cy<3>_rt_394 ),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy [3])
  );
  XORCY   \dht11_driver/Madd_global_count_addsub0000_xor<2>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [1]),
    .LI(\dht11_driver/Madd_global_count_addsub0000_cy<2>_rt_390 ),
    .O(\dht11_driver/global_count_addsub0000 [2])
  );
  MUXCY   \dht11_driver/Madd_global_count_addsub0000_cy<2>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [1]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_global_count_addsub0000_cy<2>_rt_390 ),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy [2])
  );
  XORCY   \dht11_driver/Madd_global_count_addsub0000_xor<1>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [0]),
    .LI(\dht11_driver/Madd_global_count_addsub0000_cy<1>_rt_368 ),
    .O(\dht11_driver/global_count_addsub0000 [1])
  );
  MUXCY   \dht11_driver/Madd_global_count_addsub0000_cy<1>  (
    .CI(\dht11_driver/Madd_global_count_addsub0000_cy [0]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/Madd_global_count_addsub0000_cy<1>_rt_368 ),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy [1])
  );
  XORCY   \dht11_driver/Madd_global_count_addsub0000_xor<0>  (
    .CI(IO_P1_1_OBUF_8),
    .LI(\dht11_driver/Madd_global_count_addsub0000_lut [0]),
    .O(\dht11_driver/global_count_addsub0000 [0])
  );
  MUXCY   \dht11_driver/Madd_global_count_addsub0000_cy<0>  (
    .CI(IO_P1_1_OBUF_8),
    .DI(IO_P1_3_OBUF_10),
    .S(\dht11_driver/Madd_global_count_addsub0000_lut [0]),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy [0])
  );
  FDCE   \dht11_driver/output_humidity_0  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(\dht11_driver/state_FSM_FFd3_815 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/data[7] ),
    .Q(\dht11_driver/output_humidity [0])
  );
  FDCE   \dht11_driver/output_humidity_2  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(\dht11_driver/state_FSM_FFd3_815 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/data[5] ),
    .Q(\dht11_driver/output_humidity [2])
  );
  FDCE   \dht11_driver/output_humidity_3  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(\dht11_driver/state_FSM_FFd3_815 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/data[4] ),
    .Q(\dht11_driver/output_humidity [3])
  );
  FDCE   \dht11_driver/output_humidity_1  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(\dht11_driver/state_FSM_FFd3_815 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/data[6] ),
    .Q(\dht11_driver/output_humidity [1])
  );
  FDCE   \dht11_driver/output_humidity_5  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(\dht11_driver/state_FSM_FFd3_815 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/data[2] ),
    .Q(\dht11_driver/output_humidity [5])
  );
  FDCE   \dht11_driver/output_humidity_6  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(\dht11_driver/state_FSM_FFd3_815 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/data[1] ),
    .Q(\dht11_driver/output_humidity [6])
  );
  FDCE   \dht11_driver/output_humidity_4  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(\dht11_driver/state_FSM_FFd3_815 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/data[3] ),
    .Q(\dht11_driver/output_humidity [4])
  );
  FDCE   \dht11_driver/output_temp_0  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(\dht11_driver/state_FSM_FFd3_815 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/data[23] ),
    .Q(\dht11_driver/output_temp [0])
  );
  FDCE   \dht11_driver/output_temp_1  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(\dht11_driver/state_FSM_FFd3_815 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/data[22] ),
    .Q(\dht11_driver/output_temp [1])
  );
  FDCE   \dht11_driver/output_humidity_7  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(\dht11_driver/state_FSM_FFd3_815 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/data[0] ),
    .Q(\dht11_driver/output_humidity [7])
  );
  FDCE   \dht11_driver/output_temp_3  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(\dht11_driver/state_FSM_FFd3_815 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/data[20] ),
    .Q(\dht11_driver/output_temp [3])
  );
  FDCE   \dht11_driver/output_temp_4  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(\dht11_driver/state_FSM_FFd3_815 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/data[19] ),
    .Q(\dht11_driver/output_temp [4])
  );
  FDCE   \dht11_driver/output_temp_2  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(\dht11_driver/state_FSM_FFd3_815 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/data[21] ),
    .Q(\dht11_driver/output_temp [2])
  );
  FDCE   \dht11_driver/output_temp_6  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(\dht11_driver/state_FSM_FFd3_815 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/data[17] ),
    .Q(\dht11_driver/output_temp [6])
  );
  FDCE   \dht11_driver/output_temp_7  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(\dht11_driver/state_FSM_FFd3_815 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/data[16] ),
    .Q(\dht11_driver/output_temp [7])
  );
  FDCE   \dht11_driver/output_temp_5  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(\dht11_driver/state_FSM_FFd3_815 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/data[18] ),
    .Q(\dht11_driver/output_temp [5])
  );
  FDCE   \dht11_driver/data_1  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(\dht11_driver/data_1_not0001 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/data_23_cmp_gt0000 ),
    .Q(\dht11_driver/data[1] )
  );
  FDCE   \dht11_driver/data_2  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(\dht11_driver/data_2_not0001 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/data_23_cmp_gt0000 ),
    .Q(\dht11_driver/data[2] )
  );
  FDCE   \dht11_driver/data_0  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(\dht11_driver/data_0_not0001 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/data_23_cmp_gt0000 ),
    .Q(\dht11_driver/data[0] )
  );
  FDCE   \dht11_driver/data_4  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(\dht11_driver/data_4_not0001 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/data_23_cmp_gt0000 ),
    .Q(\dht11_driver/data[4] )
  );
  FDCE   \dht11_driver/data_5  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(\dht11_driver/data_5_not0001 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/data_23_cmp_gt0000 ),
    .Q(\dht11_driver/data[5] )
  );
  FDCE   \dht11_driver/data_3  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(\dht11_driver/data_3_not0001 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/data_23_cmp_gt0000 ),
    .Q(\dht11_driver/data[3] )
  );
  FDCE   \dht11_driver/data_7  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(\dht11_driver/data_7_not0001 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/data_23_cmp_gt0000 ),
    .Q(\dht11_driver/data[7] )
  );
  FDCE   \dht11_driver/data_16  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(\dht11_driver/data_16_not0001 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/data_23_cmp_gt0000 ),
    .Q(\dht11_driver/data[16] )
  );
  FDCE   \dht11_driver/data_6  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(\dht11_driver/data_6_not0001 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/data_23_cmp_gt0000 ),
    .Q(\dht11_driver/data[6] )
  );
  FDCE   \dht11_driver/data_18  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(\dht11_driver/data_18_not0001 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/data_23_cmp_gt0000 ),
    .Q(\dht11_driver/data[18] )
  );
  FDCE   \dht11_driver/data_19  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(\dht11_driver/data_19_not0001 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/data_23_cmp_gt0000 ),
    .Q(\dht11_driver/data[19] )
  );
  FDCE   \dht11_driver/data_17  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(\dht11_driver/data_17_not0001 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/data_23_cmp_gt0000 ),
    .Q(\dht11_driver/data[17] )
  );
  FDCE   \dht11_driver/data_21  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(\dht11_driver/data_21_not0001 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/data_23_cmp_gt0000 ),
    .Q(\dht11_driver/data[21] )
  );
  FDCE   \dht11_driver/data_22  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(\dht11_driver/data_22_not0001 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/data_23_cmp_gt0000 ),
    .Q(\dht11_driver/data[22] )
  );
  FDCE   \dht11_driver/data_20  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(\dht11_driver/data_20_not0001 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/data_23_cmp_gt0000 ),
    .Q(\dht11_driver/data[20] )
  );
  FDCE   \dht11_driver/data_23  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(\dht11_driver/data_23_not0001 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/data_23_cmp_gt0000 ),
    .Q(\dht11_driver/data[23] )
  );
  FDE   \dht11_driver/Mtrien_data_out  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(\dht11_driver/Mtridata_data_out_and0000 ),
    .D(\dht11_driver/Mtrien_data_out_mux0000 ),
    .Q(\dht11_driver/Mtrien_data_out_460 )
  );
  FDE   \dht11_driver/direction  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/direction_mux0000_693 ),
    .Q(\dht11_driver/direction_692 )
  );
  FDE   \dht11_driver/data_count_31  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/data_count_mux0000 [0]),
    .Q(\dht11_driver/data_count [31])
  );
  FDE   \dht11_driver/data_count_30  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/data_count_mux0000 [1]),
    .Q(\dht11_driver/data_count [30])
  );
  FDE   \dht11_driver/data_count_29  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/data_count_mux0000 [2]),
    .Q(\dht11_driver/data_count [29])
  );
  FDE   \dht11_driver/data_count_28  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/data_count_mux0000 [3]),
    .Q(\dht11_driver/data_count [28])
  );
  FDE   \dht11_driver/data_count_27  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/data_count_mux0000 [4]),
    .Q(\dht11_driver/data_count [27])
  );
  FDE   \dht11_driver/data_count_26  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/data_count_mux0000 [5]),
    .Q(\dht11_driver/data_count [26])
  );
  FDE   \dht11_driver/data_count_25  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/data_count_mux0000 [6]),
    .Q(\dht11_driver/data_count [25])
  );
  FDE   \dht11_driver/data_count_24  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/data_count_mux0000 [7]),
    .Q(\dht11_driver/data_count [24])
  );
  FDE   \dht11_driver/data_count_23  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/data_count_mux0000 [8]),
    .Q(\dht11_driver/data_count [23])
  );
  FDE   \dht11_driver/data_count_22  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/data_count_mux0000 [9]),
    .Q(\dht11_driver/data_count [22])
  );
  FDE   \dht11_driver/data_count_21  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/data_count_mux0000 [10]),
    .Q(\dht11_driver/data_count [21])
  );
  FDE   \dht11_driver/data_count_20  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/data_count_mux0000 [11]),
    .Q(\dht11_driver/data_count [20])
  );
  FDE   \dht11_driver/data_count_19  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/data_count_mux0000 [12]),
    .Q(\dht11_driver/data_count [19])
  );
  FDE   \dht11_driver/data_count_18  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/data_count_mux0000 [13]),
    .Q(\dht11_driver/data_count [18])
  );
  FDE   \dht11_driver/data_count_17  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/data_count_mux0000 [14]),
    .Q(\dht11_driver/data_count [17])
  );
  FDE   \dht11_driver/data_count_16  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/data_count_mux0000 [15]),
    .Q(\dht11_driver/data_count [16])
  );
  FDE   \dht11_driver/data_count_15  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/data_count_mux0000 [16]),
    .Q(\dht11_driver/data_count [15])
  );
  FDE   \dht11_driver/data_count_14  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/data_count_mux0000 [17]),
    .Q(\dht11_driver/data_count [14])
  );
  FDE   \dht11_driver/data_count_13  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/data_count_mux0000 [18]),
    .Q(\dht11_driver/data_count [13])
  );
  FDE   \dht11_driver/data_count_12  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/data_count_mux0000 [19]),
    .Q(\dht11_driver/data_count [12])
  );
  FDE   \dht11_driver/data_count_11  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/data_count_mux0000 [20]),
    .Q(\dht11_driver/data_count [11])
  );
  FDE   \dht11_driver/data_count_10  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/data_count_mux0000 [21]),
    .Q(\dht11_driver/data_count [10])
  );
  FDE   \dht11_driver/data_count_9  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/data_count_mux0000 [22]),
    .Q(\dht11_driver/data_count [9])
  );
  FDE   \dht11_driver/data_count_8  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/data_count_mux0000 [23]),
    .Q(\dht11_driver/data_count [8])
  );
  FDE   \dht11_driver/data_count_7  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/data_count_mux0000 [24]),
    .Q(\dht11_driver/data_count [7])
  );
  FDE   \dht11_driver/data_count_6  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/data_count_mux0000 [25]),
    .Q(\dht11_driver/data_count [6])
  );
  FDE   \dht11_driver/data_count_5  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/data_count_mux0000 [26]),
    .Q(\dht11_driver/data_count [5])
  );
  FDE   \dht11_driver/data_count_4  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/data_count_mux0000 [27]),
    .Q(\dht11_driver/data_count [4])
  );
  FDE   \dht11_driver/data_count_3  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/data_count_mux0000 [28]),
    .Q(\dht11_driver/data_count [3])
  );
  FDE   \dht11_driver/data_count_2  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/data_count_mux0000 [29]),
    .Q(\dht11_driver/data_count [2])
  );
  FDE   \dht11_driver/data_count_1  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/data_count_mux0000 [30]),
    .Q(\dht11_driver/data_count [1])
  );
  FDE   \dht11_driver/data_count_0  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/data_count_mux0000 [31]),
    .Q(\dht11_driver/data_count [0])
  );
  FDE   \dht11_driver/Mtridata_data_out  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(\dht11_driver/Mtridata_data_out_and0000 ),
    .D(\dht11_driver/Mtridata_data_out_mux0000 ),
    .Q(\dht11_driver/Mtridata_data_out_457 )
  );
  FDC   \dht11_driver/global_count_31  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/global_count_mux0000 [0]),
    .Q(\dht11_driver/global_count [31])
  );
  FDC   \dht11_driver/global_count_30  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/global_count_mux0000 [1]),
    .Q(\dht11_driver/global_count [30])
  );
  FDC   \dht11_driver/global_count_29  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/global_count_mux0000 [2]),
    .Q(\dht11_driver/global_count [29])
  );
  FDC   \dht11_driver/global_count_28  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/global_count_mux0000 [3]),
    .Q(\dht11_driver/global_count [28])
  );
  FDC   \dht11_driver/global_count_27  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/global_count_mux0000 [4]),
    .Q(\dht11_driver/global_count [27])
  );
  FDC   \dht11_driver/global_count_26  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/global_count_mux0000 [5]),
    .Q(\dht11_driver/global_count [26])
  );
  FDC   \dht11_driver/global_count_25  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/global_count_mux0000 [6]),
    .Q(\dht11_driver/global_count [25])
  );
  FDC   \dht11_driver/global_count_24  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/global_count_mux0000 [7]),
    .Q(\dht11_driver/global_count [24])
  );
  FDC   \dht11_driver/global_count_23  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/global_count_mux0000 [8]),
    .Q(\dht11_driver/global_count [23])
  );
  FDC   \dht11_driver/global_count_22  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/global_count_mux0000 [9]),
    .Q(\dht11_driver/global_count [22])
  );
  FDC   \dht11_driver/global_count_21  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/global_count_mux0000 [10]),
    .Q(\dht11_driver/global_count [21])
  );
  FDC   \dht11_driver/global_count_20  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/global_count_mux0000 [11]),
    .Q(\dht11_driver/global_count [20])
  );
  FDC   \dht11_driver/global_count_19  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/global_count_mux0000 [12]),
    .Q(\dht11_driver/global_count [19])
  );
  FDC   \dht11_driver/global_count_18  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/global_count_mux0000 [13]),
    .Q(\dht11_driver/global_count [18])
  );
  FDC   \dht11_driver/global_count_17  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/global_count_mux0000 [14]),
    .Q(\dht11_driver/global_count [17])
  );
  FDC   \dht11_driver/global_count_16  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/global_count_mux0000 [15]),
    .Q(\dht11_driver/global_count [16])
  );
  FDC   \dht11_driver/global_count_15  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/global_count_mux0000 [16]),
    .Q(\dht11_driver/global_count [15])
  );
  FDC   \dht11_driver/global_count_14  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/global_count_mux0000 [17]),
    .Q(\dht11_driver/global_count [14])
  );
  FDC   \dht11_driver/global_count_13  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/global_count_mux0000 [18]),
    .Q(\dht11_driver/global_count [13])
  );
  FDC   \dht11_driver/global_count_12  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/global_count_mux0000 [19]),
    .Q(\dht11_driver/global_count [12])
  );
  FDC   \dht11_driver/global_count_11  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/global_count_mux0000 [20]),
    .Q(\dht11_driver/global_count [11])
  );
  FDC   \dht11_driver/global_count_10  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/global_count_mux0000 [21]),
    .Q(\dht11_driver/global_count [10])
  );
  FDC   \dht11_driver/global_count_9  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/global_count_mux0000 [22]),
    .Q(\dht11_driver/global_count [9])
  );
  FDC   \dht11_driver/global_count_8  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/global_count_mux0000 [23]),
    .Q(\dht11_driver/global_count [8])
  );
  FDC   \dht11_driver/global_count_7  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/global_count_mux0000 [24]),
    .Q(\dht11_driver/global_count [7])
  );
  FDC   \dht11_driver/global_count_6  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/global_count_mux0000 [25]),
    .Q(\dht11_driver/global_count [6])
  );
  FDC   \dht11_driver/global_count_5  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/global_count_mux0000 [26]),
    .Q(\dht11_driver/global_count [5])
  );
  FDC   \dht11_driver/global_count_4  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/global_count_mux0000 [27]),
    .Q(\dht11_driver/global_count [4])
  );
  FDC   \dht11_driver/global_count_3  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/global_count_mux0000 [28]),
    .Q(\dht11_driver/global_count [3])
  );
  FDC   \dht11_driver/global_count_2  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/global_count_mux0000 [29]),
    .Q(\dht11_driver/global_count [2])
  );
  FDC   \dht11_driver/global_count_1  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/global_count_mux0000 [30]),
    .Q(\dht11_driver/global_count [1])
  );
  FDC   \dht11_driver/global_count_0  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/global_count_mux0000 [31]),
    .Q(\dht11_driver/global_count [0])
  );
  FDE   \dht11_driver/clock_count_31  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/clock_count_mux0000 [0]),
    .Q(\dht11_driver/clock_count [31])
  );
  FDE   \dht11_driver/clock_count_30  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/clock_count_mux0000 [1]),
    .Q(\dht11_driver/clock_count [30])
  );
  FDE   \dht11_driver/clock_count_29  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/clock_count_mux0000 [2]),
    .Q(\dht11_driver/clock_count [29])
  );
  FDE   \dht11_driver/clock_count_28  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/clock_count_mux0000 [3]),
    .Q(\dht11_driver/clock_count [28])
  );
  FDE   \dht11_driver/clock_count_27  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/clock_count_mux0000 [4]),
    .Q(\dht11_driver/clock_count [27])
  );
  FDE   \dht11_driver/clock_count_26  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/clock_count_mux0000 [5]),
    .Q(\dht11_driver/clock_count [26])
  );
  FDE   \dht11_driver/clock_count_25  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/clock_count_mux0000 [6]),
    .Q(\dht11_driver/clock_count [25])
  );
  FDE   \dht11_driver/clock_count_24  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/clock_count_mux0000 [7]),
    .Q(\dht11_driver/clock_count [24])
  );
  FDE   \dht11_driver/clock_count_23  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/clock_count_mux0000 [8]),
    .Q(\dht11_driver/clock_count [23])
  );
  FDE   \dht11_driver/clock_count_22  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/clock_count_mux0000 [9]),
    .Q(\dht11_driver/clock_count [22])
  );
  FDE   \dht11_driver/clock_count_21  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/clock_count_mux0000 [10]),
    .Q(\dht11_driver/clock_count [21])
  );
  FDE   \dht11_driver/clock_count_20  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/clock_count_mux0000 [11]),
    .Q(\dht11_driver/clock_count [20])
  );
  FDE   \dht11_driver/clock_count_19  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/clock_count_mux0000 [12]),
    .Q(\dht11_driver/clock_count [19])
  );
  FDE   \dht11_driver/clock_count_18  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/clock_count_mux0000 [13]),
    .Q(\dht11_driver/clock_count [18])
  );
  FDE   \dht11_driver/clock_count_17  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/clock_count_mux0000 [14]),
    .Q(\dht11_driver/clock_count [17])
  );
  FDE   \dht11_driver/clock_count_16  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/clock_count_mux0000 [15]),
    .Q(\dht11_driver/clock_count [16])
  );
  FDE   \dht11_driver/clock_count_15  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/clock_count_mux0000 [16]),
    .Q(\dht11_driver/clock_count [15])
  );
  FDE   \dht11_driver/clock_count_14  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/clock_count_mux0000 [17]),
    .Q(\dht11_driver/clock_count [14])
  );
  FDE   \dht11_driver/clock_count_13  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/clock_count_mux0000 [18]),
    .Q(\dht11_driver/clock_count [13])
  );
  FDE   \dht11_driver/clock_count_12  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/clock_count_mux0000 [19]),
    .Q(\dht11_driver/clock_count [12])
  );
  FDE   \dht11_driver/clock_count_11  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/clock_count_mux0000 [20]),
    .Q(\dht11_driver/clock_count [11])
  );
  FDE   \dht11_driver/clock_count_10  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/clock_count_mux0000 [21]),
    .Q(\dht11_driver/clock_count [10])
  );
  FDE   \dht11_driver/clock_count_9  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/clock_count_mux0000 [22]),
    .Q(\dht11_driver/clock_count [9])
  );
  FDE   \dht11_driver/clock_count_8  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/clock_count_mux0000 [23]),
    .Q(\dht11_driver/clock_count [8])
  );
  FDE   \dht11_driver/clock_count_7  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/clock_count_mux0000 [24]),
    .Q(\dht11_driver/clock_count [7])
  );
  FDE   \dht11_driver/clock_count_6  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/clock_count_mux0000 [25]),
    .Q(\dht11_driver/clock_count [6])
  );
  FDE   \dht11_driver/clock_count_5  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/clock_count_mux0000 [26]),
    .Q(\dht11_driver/clock_count [5])
  );
  FDE   \dht11_driver/clock_count_4  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/clock_count_mux0000 [27]),
    .Q(\dht11_driver/clock_count [4])
  );
  FDE   \dht11_driver/clock_count_3  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/clock_count_mux0000 [28]),
    .Q(\dht11_driver/clock_count [3])
  );
  FDE   \dht11_driver/clock_count_2  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/clock_count_mux0000 [29]),
    .Q(\dht11_driver/clock_count [2])
  );
  FDE   \dht11_driver/clock_count_1  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/clock_count_mux0000 [30]),
    .Q(\dht11_driver/clock_count [1])
  );
  FDE   \dht11_driver/clock_count_0  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CE(rst_n_dht11_1207),
    .D(\dht11_driver/clock_count_mux0000 [31]),
    .Q(\dht11_driver/clock_count [0])
  );
  FDC   \dht11_driver/status_3  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/state_or0000 ),
    .Q(\dht11_driver/status [3])
  );
  FDC   \dht11_driver/status_2  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/state_or0001 ),
    .Q(\dht11_driver/status [2])
  );
  FDC   \dht11_driver/status_1  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/state_or0002 ),
    .Q(\dht11_driver/status [1])
  );
  FDC   \dht11_driver/status_0  (
    .C(\freqdiv2/out_clk_reg_1092 ),
    .CLR(\dht11_driver/rst_n_inv ),
    .D(\dht11_driver/state_or0003 ),
    .Q(\dht11_driver/status [0])
  );
  FDRE   \debounce_rst/OUT  (
    .C(\freqdiv3/out_clk_reg_1203 ),
    .CE(\debounce_rst/OUT_and0000 ),
    .D(IO_P1_3_OBUF_10),
    .R(\debounce_rst/OUT_or0000_inv ),
    .Q(\debounce_rst/OUT_190 )
  );
  FD   \debounce_rst/shift_7  (
    .C(\freqdiv3/out_clk_reg_1203 ),
    .D(\debounce_rst/shift [6]),
    .Q(\debounce_rst/shift [7])
  );
  FD   \debounce_rst/shift_6  (
    .C(\freqdiv3/out_clk_reg_1203 ),
    .D(\debounce_rst/shift [5]),
    .Q(\debounce_rst/shift [6])
  );
  FD   \debounce_rst/shift_5  (
    .C(\freqdiv3/out_clk_reg_1203 ),
    .D(\debounce_rst/shift [4]),
    .Q(\debounce_rst/shift [5])
  );
  FD   \debounce_rst/shift_4  (
    .C(\freqdiv3/out_clk_reg_1203 ),
    .D(\debounce_rst/shift [3]),
    .Q(\debounce_rst/shift [4])
  );
  FD   \debounce_rst/shift_3  (
    .C(\freqdiv3/out_clk_reg_1203 ),
    .D(\debounce_rst/shift [2]),
    .Q(\debounce_rst/shift [3])
  );
  FD   \debounce_rst/shift_2  (
    .C(\freqdiv3/out_clk_reg_1203 ),
    .D(\debounce_rst/shift [1]),
    .Q(\debounce_rst/shift [2])
  );
  FD   \debounce_rst/shift_1  (
    .C(\freqdiv3/out_clk_reg_1203 ),
    .D(\debounce_rst/shift [0]),
    .Q(\debounce_rst/shift [1])
  );
  FD   \debounce_rst/shift_0  (
    .C(\freqdiv3/out_clk_reg_1203 ),
    .D(BTN_4_IBUF_6),
    .Q(\debounce_rst/shift [0])
  );
  FDRE   \debounce_start/OUT  (
    .C(\freqdiv3/out_clk_reg_1203 ),
    .CE(\debounce_start/OUT_and0000 ),
    .D(IO_P1_3_OBUF_10),
    .R(\debounce_start/OUT_or0000_inv ),
    .Q(\debounce_start/OUT_205 )
  );
  FD   \debounce_start/shift_7  (
    .C(\freqdiv3/out_clk_reg_1203 ),
    .D(\debounce_start/shift [6]),
    .Q(\debounce_start/shift [7])
  );
  FD   \debounce_start/shift_6  (
    .C(\freqdiv3/out_clk_reg_1203 ),
    .D(\debounce_start/shift [5]),
    .Q(\debounce_start/shift [6])
  );
  FD   \debounce_start/shift_5  (
    .C(\freqdiv3/out_clk_reg_1203 ),
    .D(\debounce_start/shift [4]),
    .Q(\debounce_start/shift [5])
  );
  FD   \debounce_start/shift_4  (
    .C(\freqdiv3/out_clk_reg_1203 ),
    .D(\debounce_start/shift [3]),
    .Q(\debounce_start/shift [4])
  );
  FD   \debounce_start/shift_3  (
    .C(\freqdiv3/out_clk_reg_1203 ),
    .D(\debounce_start/shift [2]),
    .Q(\debounce_start/shift [3])
  );
  FD   \debounce_start/shift_2  (
    .C(\freqdiv3/out_clk_reg_1203 ),
    .D(\debounce_start/shift [1]),
    .Q(\debounce_start/shift [2])
  );
  FD   \debounce_start/shift_1  (
    .C(\freqdiv3/out_clk_reg_1203 ),
    .D(\debounce_start/shift [0]),
    .Q(\debounce_start/shift [1])
  );
  FDRE   \debounce_inc/OUT  (
    .C(\freqdiv3/out_clk_reg_1203 ),
    .CE(\debounce_inc/OUT_and0000 ),
    .D(IO_P1_3_OBUF_10),
    .R(\debounce_inc/OUT_or0000_inv ),
    .Q(\debounce_inc/OUT_175 )
  );
  FD   \debounce_inc/shift_7  (
    .C(\freqdiv3/out_clk_reg_1203 ),
    .D(\debounce_inc/shift [6]),
    .Q(\debounce_inc/shift [7])
  );
  FD   \debounce_inc/shift_6  (
    .C(\freqdiv3/out_clk_reg_1203 ),
    .D(\debounce_inc/shift [5]),
    .Q(\debounce_inc/shift [6])
  );
  FD   \debounce_inc/shift_5  (
    .C(\freqdiv3/out_clk_reg_1203 ),
    .D(\debounce_inc/shift [4]),
    .Q(\debounce_inc/shift [5])
  );
  FD   \debounce_inc/shift_4  (
    .C(\freqdiv3/out_clk_reg_1203 ),
    .D(\debounce_inc/shift [3]),
    .Q(\debounce_inc/shift [4])
  );
  FD   \debounce_inc/shift_3  (
    .C(\freqdiv3/out_clk_reg_1203 ),
    .D(\debounce_inc/shift [2]),
    .Q(\debounce_inc/shift [3])
  );
  FD   \debounce_inc/shift_2  (
    .C(\freqdiv3/out_clk_reg_1203 ),
    .D(\debounce_inc/shift [1]),
    .Q(\debounce_inc/shift [2])
  );
  FD   \debounce_inc/shift_1  (
    .C(\freqdiv3/out_clk_reg_1203 ),
    .D(\debounce_inc/shift [0]),
    .Q(\debounce_inc/shift [1])
  );
  XORCY   \sevenSegementDec/Mcount_counter_xor<31>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [30]),
    .LI(\sevenSegementDec/Mcount_counter_xor<31>_rt_1303 ),
    .O(\sevenSegementDec/Result [31])
  );
  XORCY   \sevenSegementDec/Mcount_counter_xor<30>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [29]),
    .LI(\sevenSegementDec/Mcount_counter_cy<30>_rt_1255 ),
    .O(\sevenSegementDec/Result [30])
  );
  MUXCY   \sevenSegementDec/Mcount_counter_cy<30>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [29]),
    .DI(IO_P1_1_OBUF_8),
    .S(\sevenSegementDec/Mcount_counter_cy<30>_rt_1255 ),
    .O(\sevenSegementDec/Mcount_counter_cy [30])
  );
  XORCY   \sevenSegementDec/Mcount_counter_xor<29>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [28]),
    .LI(\sevenSegementDec/Mcount_counter_cy<29>_rt_1251 ),
    .O(\sevenSegementDec/Result [29])
  );
  MUXCY   \sevenSegementDec/Mcount_counter_cy<29>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [28]),
    .DI(IO_P1_1_OBUF_8),
    .S(\sevenSegementDec/Mcount_counter_cy<29>_rt_1251 ),
    .O(\sevenSegementDec/Mcount_counter_cy [29])
  );
  XORCY   \sevenSegementDec/Mcount_counter_xor<28>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [27]),
    .LI(\sevenSegementDec/Mcount_counter_cy<28>_rt_1249 ),
    .O(\sevenSegementDec/Result [28])
  );
  MUXCY   \sevenSegementDec/Mcount_counter_cy<28>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [27]),
    .DI(IO_P1_1_OBUF_8),
    .S(\sevenSegementDec/Mcount_counter_cy<28>_rt_1249 ),
    .O(\sevenSegementDec/Mcount_counter_cy [28])
  );
  XORCY   \sevenSegementDec/Mcount_counter_xor<27>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [26]),
    .LI(\sevenSegementDec/Mcount_counter_cy<27>_rt_1247 ),
    .O(\sevenSegementDec/Result [27])
  );
  MUXCY   \sevenSegementDec/Mcount_counter_cy<27>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [26]),
    .DI(IO_P1_1_OBUF_8),
    .S(\sevenSegementDec/Mcount_counter_cy<27>_rt_1247 ),
    .O(\sevenSegementDec/Mcount_counter_cy [27])
  );
  XORCY   \sevenSegementDec/Mcount_counter_xor<26>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [25]),
    .LI(\sevenSegementDec/Mcount_counter_cy<26>_rt_1245 ),
    .O(\sevenSegementDec/Result [26])
  );
  MUXCY   \sevenSegementDec/Mcount_counter_cy<26>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [25]),
    .DI(IO_P1_1_OBUF_8),
    .S(\sevenSegementDec/Mcount_counter_cy<26>_rt_1245 ),
    .O(\sevenSegementDec/Mcount_counter_cy [26])
  );
  XORCY   \sevenSegementDec/Mcount_counter_xor<25>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [24]),
    .LI(\sevenSegementDec/Mcount_counter_cy<25>_rt_1243 ),
    .O(\sevenSegementDec/Result [25])
  );
  MUXCY   \sevenSegementDec/Mcount_counter_cy<25>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [24]),
    .DI(IO_P1_1_OBUF_8),
    .S(\sevenSegementDec/Mcount_counter_cy<25>_rt_1243 ),
    .O(\sevenSegementDec/Mcount_counter_cy [25])
  );
  XORCY   \sevenSegementDec/Mcount_counter_xor<24>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [23]),
    .LI(\sevenSegementDec/Mcount_counter_cy<24>_rt_1241 ),
    .O(\sevenSegementDec/Result [24])
  );
  MUXCY   \sevenSegementDec/Mcount_counter_cy<24>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [23]),
    .DI(IO_P1_1_OBUF_8),
    .S(\sevenSegementDec/Mcount_counter_cy<24>_rt_1241 ),
    .O(\sevenSegementDec/Mcount_counter_cy [24])
  );
  XORCY   \sevenSegementDec/Mcount_counter_xor<23>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [22]),
    .LI(\sevenSegementDec/Mcount_counter_cy<23>_rt_1239 ),
    .O(\sevenSegementDec/Result [23])
  );
  MUXCY   \sevenSegementDec/Mcount_counter_cy<23>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [22]),
    .DI(IO_P1_1_OBUF_8),
    .S(\sevenSegementDec/Mcount_counter_cy<23>_rt_1239 ),
    .O(\sevenSegementDec/Mcount_counter_cy [23])
  );
  XORCY   \sevenSegementDec/Mcount_counter_xor<22>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [21]),
    .LI(\sevenSegementDec/Mcount_counter_cy<22>_rt_1237 ),
    .O(\sevenSegementDec/Result [22])
  );
  MUXCY   \sevenSegementDec/Mcount_counter_cy<22>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [21]),
    .DI(IO_P1_1_OBUF_8),
    .S(\sevenSegementDec/Mcount_counter_cy<22>_rt_1237 ),
    .O(\sevenSegementDec/Mcount_counter_cy [22])
  );
  XORCY   \sevenSegementDec/Mcount_counter_xor<21>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [20]),
    .LI(\sevenSegementDec/Mcount_counter_cy<21>_rt_1235 ),
    .O(\sevenSegementDec/Result [21])
  );
  MUXCY   \sevenSegementDec/Mcount_counter_cy<21>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [20]),
    .DI(IO_P1_1_OBUF_8),
    .S(\sevenSegementDec/Mcount_counter_cy<21>_rt_1235 ),
    .O(\sevenSegementDec/Mcount_counter_cy [21])
  );
  XORCY   \sevenSegementDec/Mcount_counter_xor<20>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [19]),
    .LI(\sevenSegementDec/Mcount_counter_cy<20>_rt_1233 ),
    .O(\sevenSegementDec/Result [20])
  );
  MUXCY   \sevenSegementDec/Mcount_counter_cy<20>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [19]),
    .DI(IO_P1_1_OBUF_8),
    .S(\sevenSegementDec/Mcount_counter_cy<20>_rt_1233 ),
    .O(\sevenSegementDec/Mcount_counter_cy [20])
  );
  XORCY   \sevenSegementDec/Mcount_counter_xor<19>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [18]),
    .LI(\sevenSegementDec/Mcount_counter_cy<19>_rt_1229 ),
    .O(\sevenSegementDec/Result [19])
  );
  MUXCY   \sevenSegementDec/Mcount_counter_cy<19>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [18]),
    .DI(IO_P1_1_OBUF_8),
    .S(\sevenSegementDec/Mcount_counter_cy<19>_rt_1229 ),
    .O(\sevenSegementDec/Mcount_counter_cy [19])
  );
  XORCY   \sevenSegementDec/Mcount_counter_xor<18>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [17]),
    .LI(\sevenSegementDec/Mcount_counter_cy<18>_rt_1227 ),
    .O(\sevenSegementDec/Result [18])
  );
  MUXCY   \sevenSegementDec/Mcount_counter_cy<18>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [17]),
    .DI(IO_P1_1_OBUF_8),
    .S(\sevenSegementDec/Mcount_counter_cy<18>_rt_1227 ),
    .O(\sevenSegementDec/Mcount_counter_cy [18])
  );
  XORCY   \sevenSegementDec/Mcount_counter_xor<17>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [16]),
    .LI(\sevenSegementDec/Mcount_counter_cy<17>_rt_1225 ),
    .O(\sevenSegementDec/Result [17])
  );
  MUXCY   \sevenSegementDec/Mcount_counter_cy<17>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [16]),
    .DI(IO_P1_1_OBUF_8),
    .S(\sevenSegementDec/Mcount_counter_cy<17>_rt_1225 ),
    .O(\sevenSegementDec/Mcount_counter_cy [17])
  );
  XORCY   \sevenSegementDec/Mcount_counter_xor<16>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [15]),
    .LI(\sevenSegementDec/Mcount_counter_cy<16>_rt_1223 ),
    .O(\sevenSegementDec/Result [16])
  );
  MUXCY   \sevenSegementDec/Mcount_counter_cy<16>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [15]),
    .DI(IO_P1_1_OBUF_8),
    .S(\sevenSegementDec/Mcount_counter_cy<16>_rt_1223 ),
    .O(\sevenSegementDec/Mcount_counter_cy [16])
  );
  XORCY   \sevenSegementDec/Mcount_counter_xor<15>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [14]),
    .LI(\sevenSegementDec/Mcount_counter_cy<15>_rt_1221 ),
    .O(\sevenSegementDec/Result [15])
  );
  MUXCY   \sevenSegementDec/Mcount_counter_cy<15>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [14]),
    .DI(IO_P1_1_OBUF_8),
    .S(\sevenSegementDec/Mcount_counter_cy<15>_rt_1221 ),
    .O(\sevenSegementDec/Mcount_counter_cy [15])
  );
  XORCY   \sevenSegementDec/Mcount_counter_xor<14>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [13]),
    .LI(\sevenSegementDec/Mcount_counter_cy<14>_rt_1219 ),
    .O(\sevenSegementDec/Result [14])
  );
  MUXCY   \sevenSegementDec/Mcount_counter_cy<14>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [13]),
    .DI(IO_P1_1_OBUF_8),
    .S(\sevenSegementDec/Mcount_counter_cy<14>_rt_1219 ),
    .O(\sevenSegementDec/Mcount_counter_cy [14])
  );
  XORCY   \sevenSegementDec/Mcount_counter_xor<13>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [12]),
    .LI(\sevenSegementDec/Mcount_counter_cy<13>_rt_1217 ),
    .O(\sevenSegementDec/Result [13])
  );
  MUXCY   \sevenSegementDec/Mcount_counter_cy<13>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [12]),
    .DI(IO_P1_1_OBUF_8),
    .S(\sevenSegementDec/Mcount_counter_cy<13>_rt_1217 ),
    .O(\sevenSegementDec/Mcount_counter_cy [13])
  );
  XORCY   \sevenSegementDec/Mcount_counter_xor<12>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [11]),
    .LI(\sevenSegementDec/Mcount_counter_cy<12>_rt_1215 ),
    .O(\sevenSegementDec/Result [12])
  );
  MUXCY   \sevenSegementDec/Mcount_counter_cy<12>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [11]),
    .DI(IO_P1_1_OBUF_8),
    .S(\sevenSegementDec/Mcount_counter_cy<12>_rt_1215 ),
    .O(\sevenSegementDec/Mcount_counter_cy [12])
  );
  XORCY   \sevenSegementDec/Mcount_counter_xor<11>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [10]),
    .LI(\sevenSegementDec/Mcount_counter_cy<11>_rt_1213 ),
    .O(\sevenSegementDec/Result [11])
  );
  MUXCY   \sevenSegementDec/Mcount_counter_cy<11>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [10]),
    .DI(IO_P1_1_OBUF_8),
    .S(\sevenSegementDec/Mcount_counter_cy<11>_rt_1213 ),
    .O(\sevenSegementDec/Mcount_counter_cy [11])
  );
  XORCY   \sevenSegementDec/Mcount_counter_xor<10>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [9]),
    .LI(\sevenSegementDec/Mcount_counter_cy<10>_rt_1211 ),
    .O(\sevenSegementDec/Result [10])
  );
  MUXCY   \sevenSegementDec/Mcount_counter_cy<10>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [9]),
    .DI(IO_P1_1_OBUF_8),
    .S(\sevenSegementDec/Mcount_counter_cy<10>_rt_1211 ),
    .O(\sevenSegementDec/Mcount_counter_cy [10])
  );
  XORCY   \sevenSegementDec/Mcount_counter_xor<9>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [8]),
    .LI(\sevenSegementDec/Mcount_counter_cy<9>_rt_1269 ),
    .O(\sevenSegementDec/Result [9])
  );
  MUXCY   \sevenSegementDec/Mcount_counter_cy<9>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [8]),
    .DI(IO_P1_1_OBUF_8),
    .S(\sevenSegementDec/Mcount_counter_cy<9>_rt_1269 ),
    .O(\sevenSegementDec/Mcount_counter_cy [9])
  );
  XORCY   \sevenSegementDec/Mcount_counter_xor<8>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [7]),
    .LI(\sevenSegementDec/Mcount_counter_cy<8>_rt_1267 ),
    .O(\sevenSegementDec/Result [8])
  );
  MUXCY   \sevenSegementDec/Mcount_counter_cy<8>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [7]),
    .DI(IO_P1_1_OBUF_8),
    .S(\sevenSegementDec/Mcount_counter_cy<8>_rt_1267 ),
    .O(\sevenSegementDec/Mcount_counter_cy [8])
  );
  XORCY   \sevenSegementDec/Mcount_counter_xor<7>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [6]),
    .LI(\sevenSegementDec/Mcount_counter_cy<7>_rt_1265 ),
    .O(\sevenSegementDec/Result [7])
  );
  MUXCY   \sevenSegementDec/Mcount_counter_cy<7>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [6]),
    .DI(IO_P1_1_OBUF_8),
    .S(\sevenSegementDec/Mcount_counter_cy<7>_rt_1265 ),
    .O(\sevenSegementDec/Mcount_counter_cy [7])
  );
  XORCY   \sevenSegementDec/Mcount_counter_xor<6>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [5]),
    .LI(\sevenSegementDec/Mcount_counter_cy<6>_rt_1263 ),
    .O(\sevenSegementDec/Result [6])
  );
  MUXCY   \sevenSegementDec/Mcount_counter_cy<6>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [5]),
    .DI(IO_P1_1_OBUF_8),
    .S(\sevenSegementDec/Mcount_counter_cy<6>_rt_1263 ),
    .O(\sevenSegementDec/Mcount_counter_cy [6])
  );
  XORCY   \sevenSegementDec/Mcount_counter_xor<5>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [4]),
    .LI(\sevenSegementDec/Mcount_counter_cy<5>_rt_1261 ),
    .O(\sevenSegementDec/Result [5])
  );
  MUXCY   \sevenSegementDec/Mcount_counter_cy<5>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [4]),
    .DI(IO_P1_1_OBUF_8),
    .S(\sevenSegementDec/Mcount_counter_cy<5>_rt_1261 ),
    .O(\sevenSegementDec/Mcount_counter_cy [5])
  );
  XORCY   \sevenSegementDec/Mcount_counter_xor<4>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [3]),
    .LI(\sevenSegementDec/Mcount_counter_cy<4>_rt_1259 ),
    .O(\sevenSegementDec/Result [4])
  );
  MUXCY   \sevenSegementDec/Mcount_counter_cy<4>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [3]),
    .DI(IO_P1_1_OBUF_8),
    .S(\sevenSegementDec/Mcount_counter_cy<4>_rt_1259 ),
    .O(\sevenSegementDec/Mcount_counter_cy [4])
  );
  XORCY   \sevenSegementDec/Mcount_counter_xor<3>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [2]),
    .LI(\sevenSegementDec/Mcount_counter_cy<3>_rt_1257 ),
    .O(\sevenSegementDec/Result [3])
  );
  MUXCY   \sevenSegementDec/Mcount_counter_cy<3>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [2]),
    .DI(IO_P1_1_OBUF_8),
    .S(\sevenSegementDec/Mcount_counter_cy<3>_rt_1257 ),
    .O(\sevenSegementDec/Mcount_counter_cy [3])
  );
  XORCY   \sevenSegementDec/Mcount_counter_xor<2>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [1]),
    .LI(\sevenSegementDec/Mcount_counter_cy<2>_rt_1253 ),
    .O(\sevenSegementDec/Result [2])
  );
  MUXCY   \sevenSegementDec/Mcount_counter_cy<2>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [1]),
    .DI(IO_P1_1_OBUF_8),
    .S(\sevenSegementDec/Mcount_counter_cy<2>_rt_1253 ),
    .O(\sevenSegementDec/Mcount_counter_cy [2])
  );
  XORCY   \sevenSegementDec/Mcount_counter_xor<1>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [0]),
    .LI(\sevenSegementDec/Mcount_counter_cy<1>_rt_1231 ),
    .O(\sevenSegementDec/Result [1])
  );
  MUXCY   \sevenSegementDec/Mcount_counter_cy<1>  (
    .CI(\sevenSegementDec/Mcount_counter_cy [0]),
    .DI(IO_P1_1_OBUF_8),
    .S(\sevenSegementDec/Mcount_counter_cy<1>_rt_1231 ),
    .O(\sevenSegementDec/Mcount_counter_cy [1])
  );
  XORCY   \sevenSegementDec/Mcount_counter_xor<0>  (
    .CI(IO_P1_1_OBUF_8),
    .LI(\sevenSegementDec/Mcount_counter_lut [0]),
    .O(\sevenSegementDec/Result [0])
  );
  MUXCY   \sevenSegementDec/Mcount_counter_cy<0>  (
    .CI(IO_P1_1_OBUF_8),
    .DI(IO_P1_3_OBUF_10),
    .S(\sevenSegementDec/Mcount_counter_lut [0]),
    .O(\sevenSegementDec/Mcount_counter_cy [0])
  );
  FDC   \sevenSegementDec/counter_31  (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/Mcount_counter_eqn_31 ),
    .Q(\sevenSegementDec/counter [31])
  );
  FDC   \sevenSegementDec/counter_30  (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/Mcount_counter_eqn_30 ),
    .Q(\sevenSegementDec/counter [30])
  );
  FDC   \sevenSegementDec/counter_29  (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/Mcount_counter_eqn_29 ),
    .Q(\sevenSegementDec/counter [29])
  );
  FDC   \sevenSegementDec/counter_28  (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/Mcount_counter_eqn_28 ),
    .Q(\sevenSegementDec/counter [28])
  );
  FDC   \sevenSegementDec/counter_27  (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/Mcount_counter_eqn_27 ),
    .Q(\sevenSegementDec/counter [27])
  );
  FDC   \sevenSegementDec/counter_26  (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/Mcount_counter_eqn_26 ),
    .Q(\sevenSegementDec/counter [26])
  );
  FDC   \sevenSegementDec/counter_25  (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/Mcount_counter_eqn_25 ),
    .Q(\sevenSegementDec/counter [25])
  );
  FDC   \sevenSegementDec/counter_24  (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/Mcount_counter_eqn_24 ),
    .Q(\sevenSegementDec/counter [24])
  );
  FDC   \sevenSegementDec/counter_23  (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/Mcount_counter_eqn_23 ),
    .Q(\sevenSegementDec/counter [23])
  );
  FDC   \sevenSegementDec/counter_22  (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/Mcount_counter_eqn_22 ),
    .Q(\sevenSegementDec/counter [22])
  );
  FDC   \sevenSegementDec/counter_21  (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/Mcount_counter_eqn_21 ),
    .Q(\sevenSegementDec/counter [21])
  );
  FDC   \sevenSegementDec/counter_20  (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/Mcount_counter_eqn_20 ),
    .Q(\sevenSegementDec/counter [20])
  );
  FDC   \sevenSegementDec/counter_19  (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/Mcount_counter_eqn_19 ),
    .Q(\sevenSegementDec/counter [19])
  );
  FDC   \sevenSegementDec/counter_18  (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/Mcount_counter_eqn_18 ),
    .Q(\sevenSegementDec/counter [18])
  );
  FDC   \sevenSegementDec/counter_17  (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/Mcount_counter_eqn_17 ),
    .Q(\sevenSegementDec/counter [17])
  );
  FDC   \sevenSegementDec/counter_16  (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/Mcount_counter_eqn_16 ),
    .Q(\sevenSegementDec/counter [16])
  );
  FDC   \sevenSegementDec/counter_15  (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/Mcount_counter_eqn_15 ),
    .Q(\sevenSegementDec/counter [15])
  );
  FDC   \sevenSegementDec/counter_14  (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/Mcount_counter_eqn_14 ),
    .Q(\sevenSegementDec/counter [14])
  );
  FDC   \sevenSegementDec/counter_13  (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/Mcount_counter_eqn_13 ),
    .Q(\sevenSegementDec/counter [13])
  );
  FDC   \sevenSegementDec/counter_12  (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/Mcount_counter_eqn_12 ),
    .Q(\sevenSegementDec/counter [12])
  );
  FDC   \sevenSegementDec/counter_11  (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/Mcount_counter_eqn_11 ),
    .Q(\sevenSegementDec/counter [11])
  );
  FDC   \sevenSegementDec/counter_10  (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/Mcount_counter_eqn_10 ),
    .Q(\sevenSegementDec/counter [10])
  );
  FDC   \sevenSegementDec/counter_9  (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/Mcount_counter_eqn_9 ),
    .Q(\sevenSegementDec/counter [9])
  );
  FDC   \sevenSegementDec/counter_8  (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/Mcount_counter_eqn_8 ),
    .Q(\sevenSegementDec/counter [8])
  );
  FDC   \sevenSegementDec/counter_7  (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/Mcount_counter_eqn_7 ),
    .Q(\sevenSegementDec/counter [7])
  );
  FDC   \sevenSegementDec/counter_6  (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/Mcount_counter_eqn_6 ),
    .Q(\sevenSegementDec/counter [6])
  );
  FDC   \sevenSegementDec/counter_5  (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/Mcount_counter_eqn_5 ),
    .Q(\sevenSegementDec/counter [5])
  );
  FDC   \sevenSegementDec/counter_4  (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/Mcount_counter_eqn_4 ),
    .Q(\sevenSegementDec/counter [4])
  );
  FDC   \sevenSegementDec/counter_3  (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/Mcount_counter_eqn_3 ),
    .Q(\sevenSegementDec/counter [3])
  );
  FDC   \sevenSegementDec/counter_2  (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/Mcount_counter_eqn_2 ),
    .Q(\sevenSegementDec/counter [2])
  );
  FDC   \sevenSegementDec/counter_1  (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/Mcount_counter_eqn_1 ),
    .Q(\sevenSegementDec/counter [1])
  );
  FDC   \sevenSegementDec/counter_0  (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/Mcount_counter_eqn_0 ),
    .Q(\sevenSegementDec/counter [0])
  );
  FDPE   \sevenSegementDec/output_select_2  (
    .C(clk_BUFGP_173),
    .CE(\sevenSegementDec/output_select_cmp_eq0000 ),
    .D(\sevenSegementDec/output_select_mux0000 [0]),
    .PRE(rst_debounced_inv),
    .Q(\sevenSegementDec/output_select [2])
  );
  FDCE   \sevenSegementDec/output_select_0  (
    .C(clk_BUFGP_173),
    .CE(\sevenSegementDec/output_select_cmp_eq0000 ),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/output_select_mux0000 [2]),
    .Q(\sevenSegementDec/output_select [0])
  );
  FDPE   \sevenSegementDec/output_select_1  (
    .C(clk_BUFGP_173),
    .CE(\sevenSegementDec/output_select_cmp_eq0000 ),
    .D(\sevenSegementDec/output_select_mux0000 [1]),
    .PRE(rst_debounced_inv),
    .Q(\sevenSegementDec/output_select [1])
  );
  FDE   \sevenSegementDec/inp_3  (
    .C(clk_BUFGP_173),
    .CE(\sevenSegementDec/inp_and0000 ),
    .D(\sevenSegementDec/inp_mux0000 [3]),
    .Q(\sevenSegementDec/inp [3])
  );
  FDE   \sevenSegementDec/inp_2  (
    .C(clk_BUFGP_173),
    .CE(\sevenSegementDec/inp_and0000 ),
    .D(\sevenSegementDec/inp_mux0000 [2]),
    .Q(\sevenSegementDec/inp [2])
  );
  FDE   \sevenSegementDec/inp_1  (
    .C(clk_BUFGP_173),
    .CE(\sevenSegementDec/inp_and0000 ),
    .D(\sevenSegementDec/inp_mux0000 [1]),
    .Q(\sevenSegementDec/inp [1])
  );
  FDE   \sevenSegementDec/inp_0  (
    .C(clk_BUFGP_173),
    .CE(\sevenSegementDec/inp_and0000 ),
    .D(\sevenSegementDec/inp_mux0000 [0]),
    .Q(\sevenSegementDec/inp [0])
  );
  FDC   \sevenSegementDec/out_6  (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/out_mux0000 [0]),
    .Q(\sevenSegementDec/out [6])
  );
  FDC   \sevenSegementDec/out_5  (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/out_mux0000 [1]),
    .Q(\sevenSegementDec/out [5])
  );
  FDC   \sevenSegementDec/out_4  (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/out_mux0000 [2]),
    .Q(\sevenSegementDec/out [4])
  );
  FDC   \sevenSegementDec/out_3  (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/out_mux0000 [3]),
    .Q(\sevenSegementDec/out [3])
  );
  FDC   \sevenSegementDec/out_2  (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/out_mux0000 [4]),
    .Q(\sevenSegementDec/out [2])
  );
  FDC   \sevenSegementDec/out_1  (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/out_mux0000 [5]),
    .Q(\sevenSegementDec/out [1])
  );
  FDC   \sevenSegementDec/out_0  (
    .C(clk_BUFGP_173),
    .CLR(rst_debounced_inv),
    .D(\sevenSegementDec/out_mux0000 [6]),
    .Q(\sevenSegementDec/out [0])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \dht11_driver/state_cmp_eq0002_wg_lut<0>  (
    .I0(\dht11_driver/data_count [16]),
    .I1(\dht11_driver/data_count [17]),
    .O(\dht11_driver/state_cmp_eq0002_wg_lut [0])
  );
  MUXCY   \dht11_driver/state_cmp_eq0002_wg_cy<0>  (
    .CI(IO_P1_3_OBUF_10),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/state_cmp_eq0002_wg_lut [0]),
    .O(\dht11_driver/state_cmp_eq0002_wg_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \dht11_driver/state_cmp_eq0002_wg_lut<1>  (
    .I0(\dht11_driver/data_count [18]),
    .I1(\dht11_driver/data_count [19]),
    .I2(\dht11_driver/data_count [1]),
    .I3(\dht11_driver/data_count [15]),
    .O(\dht11_driver/state_cmp_eq0002_wg_lut [1])
  );
  MUXCY   \dht11_driver/state_cmp_eq0002_wg_cy<1>  (
    .CI(\dht11_driver/state_cmp_eq0002_wg_cy [0]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/state_cmp_eq0002_wg_lut [1]),
    .O(\dht11_driver/state_cmp_eq0002_wg_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \dht11_driver/state_cmp_eq0002_wg_lut<2>  (
    .I0(\dht11_driver/data_count [20]),
    .I1(\dht11_driver/data_count [23]),
    .I2(\dht11_driver/data_count [14]),
    .I3(\dht11_driver/data_count [21]),
    .O(\dht11_driver/state_cmp_eq0002_wg_lut [2])
  );
  MUXCY   \dht11_driver/state_cmp_eq0002_wg_cy<2>  (
    .CI(\dht11_driver/state_cmp_eq0002_wg_cy [1]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/state_cmp_eq0002_wg_lut [2]),
    .O(\dht11_driver/state_cmp_eq0002_wg_cy [2])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \dht11_driver/state_cmp_eq0002_wg_lut<3>  (
    .I0(\dht11_driver/data_count [22]),
    .I1(\dht11_driver/data_count [24]),
    .I2(\dht11_driver/data_count [13]),
    .I3(\dht11_driver/data_count [25]),
    .O(\dht11_driver/state_cmp_eq0002_wg_lut [3])
  );
  MUXCY   \dht11_driver/state_cmp_eq0002_wg_cy<3>  (
    .CI(\dht11_driver/state_cmp_eq0002_wg_cy [2]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/state_cmp_eq0002_wg_lut [3]),
    .O(\dht11_driver/state_cmp_eq0002_wg_cy [3])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \dht11_driver/state_cmp_eq0002_wg_lut<4>  (
    .I0(\dht11_driver/data_count [26]),
    .I1(\dht11_driver/data_count [27]),
    .I2(\dht11_driver/data_count [12]),
    .I3(\dht11_driver/data_count [28]),
    .O(\dht11_driver/state_cmp_eq0002_wg_lut [4])
  );
  MUXCY   \dht11_driver/state_cmp_eq0002_wg_cy<4>  (
    .CI(\dht11_driver/state_cmp_eq0002_wg_cy [3]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/state_cmp_eq0002_wg_lut [4]),
    .O(\dht11_driver/state_cmp_eq0002_wg_cy [4])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \dht11_driver/state_cmp_eq0002_wg_lut<5>  (
    .I0(\dht11_driver/data_count [29]),
    .I1(\dht11_driver/data_count [30]),
    .I2(\dht11_driver/data_count [11]),
    .I3(\dht11_driver/data_count [31]),
    .O(\dht11_driver/state_cmp_eq0002_wg_lut [5])
  );
  MUXCY   \dht11_driver/state_cmp_eq0002_wg_cy<5>  (
    .CI(\dht11_driver/state_cmp_eq0002_wg_cy [4]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/state_cmp_eq0002_wg_lut [5]),
    .O(\dht11_driver/state_cmp_eq0002_wg_cy [5])
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \dht11_driver/state_cmp_eq0002_wg_lut<6>  (
    .I0(\dht11_driver/data_count [3]),
    .I1(\dht11_driver/data_count [10]),
    .I2(\dht11_driver/data_count [5]),
    .I3(\dht11_driver/data_count [6]),
    .O(\dht11_driver/state_cmp_eq0002_wg_lut [6])
  );
  MUXCY   \dht11_driver/state_cmp_eq0002_wg_cy<6>  (
    .CI(\dht11_driver/state_cmp_eq0002_wg_cy [5]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/state_cmp_eq0002_wg_lut [6]),
    .O(\dht11_driver/state_cmp_eq0002_wg_cy [6])
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \dht11_driver/state_cmp_eq0002_wg_lut<7>  (
    .I0(\dht11_driver/data_count [9]),
    .I1(\dht11_driver/data_count [8]),
    .I2(\dht11_driver/data_count [7]),
    .I3(N17),
    .O(\dht11_driver/state_cmp_eq0002_wg_lut [7])
  );
  MUXCY   \dht11_driver/state_cmp_eq0002_wg_cy<7>  (
    .CI(\dht11_driver/state_cmp_eq0002_wg_cy [6]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/state_cmp_eq0002_wg_lut [7]),
    .O(\dht11_driver/state_cmp_eq0002 )
  );
  MUXCY   \dht11_driver/state_cmp_eq00001_wg_cy<0>  (
    .CI(IO_P1_3_OBUF_10),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/state_cmp_eq00001_wg_lut [0]),
    .O(\dht11_driver/state_cmp_eq00001_wg_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \dht11_driver/state_cmp_eq00001_wg_lut<1>  (
    .I0(\dht11_driver/clock_count [15]),
    .I1(\dht11_driver/clock_count [11]),
    .I2(\dht11_driver/clock_count [7]),
    .I3(\dht11_driver/clock_count [16]),
    .O(\dht11_driver/state_cmp_eq00001_wg_lut [1])
  );
  MUXCY   \dht11_driver/state_cmp_eq00001_wg_cy<1>  (
    .CI(\dht11_driver/state_cmp_eq00001_wg_cy [0]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/state_cmp_eq00001_wg_lut [1]),
    .O(\dht11_driver/state_cmp_eq00001_wg_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \dht11_driver/state_cmp_eq00001_wg_lut<2>  (
    .I0(\dht11_driver/clock_count [18]),
    .I1(\dht11_driver/clock_count [17]),
    .I2(\dht11_driver/clock_count [9]),
    .I3(\dht11_driver/clock_count [19]),
    .O(\dht11_driver/state_cmp_eq00001_wg_lut [2])
  );
  MUXCY   \dht11_driver/state_cmp_eq00001_wg_cy<2>  (
    .CI(\dht11_driver/state_cmp_eq00001_wg_cy [1]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/state_cmp_eq00001_wg_lut [2]),
    .O(\dht11_driver/state_cmp_eq00001_wg_cy [2])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \dht11_driver/state_cmp_eq00001_wg_lut<3>  (
    .I0(\dht11_driver/clock_count [21]),
    .I1(\dht11_driver/clock_count [20]),
    .I2(\dht11_driver/clock_count [3]),
    .I3(\dht11_driver/clock_count [22]),
    .O(\dht11_driver/state_cmp_eq00001_wg_lut [3])
  );
  MUXCY   \dht11_driver/state_cmp_eq00001_wg_cy<3>  (
    .CI(\dht11_driver/state_cmp_eq00001_wg_cy [2]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/state_cmp_eq00001_wg_lut [3]),
    .O(\dht11_driver/state_cmp_eq00001_wg_cy [3])
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \dht11_driver/state_cmp_eq00001_wg_lut<4>  (
    .I0(\dht11_driver/clock_count [24]),
    .I1(\dht11_driver/clock_count [23]),
    .I2(\dht11_driver/clock_count [4]),
    .I3(\dht11_driver/clock_count [25]),
    .O(\dht11_driver/state_cmp_eq00001_wg_lut [4])
  );
  MUXCY   \dht11_driver/state_cmp_eq00001_wg_cy<4>  (
    .CI(\dht11_driver/state_cmp_eq00001_wg_cy [3]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/state_cmp_eq00001_wg_lut [4]),
    .O(\dht11_driver/state_cmp_eq00001_wg_cy [4])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \dht11_driver/state_cmp_eq00001_wg_lut<5>  (
    .I0(\dht11_driver/clock_count [27]),
    .I1(\dht11_driver/clock_count [26]),
    .I2(\dht11_driver/clock_count [1]),
    .I3(\dht11_driver/clock_count [28]),
    .O(\dht11_driver/state_cmp_eq00001_wg_lut [5])
  );
  MUXCY   \dht11_driver/state_cmp_eq00001_wg_cy<5>  (
    .CI(\dht11_driver/state_cmp_eq00001_wg_cy [4]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/state_cmp_eq00001_wg_lut [5]),
    .O(\dht11_driver/state_cmp_eq00001_wg_cy [5])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \dht11_driver/state_cmp_eq00001_wg_lut<6>  (
    .I0(\dht11_driver/clock_count [0]),
    .I1(\dht11_driver/clock_count [29]),
    .I2(\dht11_driver/clock_count [31]),
    .I3(\dht11_driver/clock_count [30]),
    .O(\dht11_driver/state_cmp_eq00001_wg_lut [6])
  );
  MUXCY   \dht11_driver/state_cmp_eq00001_wg_cy<6>  (
    .CI(\dht11_driver/state_cmp_eq00001_wg_cy [5]),
    .DI(IO_P1_1_OBUF_8),
    .S(\dht11_driver/state_cmp_eq00001_wg_lut [6]),
    .O(\dht11_driver/state_cmp_eq00001_wg_cy [6])
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \freqdiv3/counter_cmp_eq0000_wg_lut<0>  (
    .I0(\freqdiv3/counter [8]),
    .I1(\freqdiv3/counter [6]),
    .I2(\freqdiv3/counter [4]),
    .I3(\freqdiv3/counter [7]),
    .O(\freqdiv3/counter_cmp_eq0000_wg_lut [0])
  );
  MUXCY   \freqdiv3/counter_cmp_eq0000_wg_cy<0>  (
    .CI(IO_P1_3_OBUF_10),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv3/counter_cmp_eq0000_wg_lut [0]),
    .O(\freqdiv3/counter_cmp_eq0000_wg_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \freqdiv3/counter_cmp_eq0000_wg_lut<1>  (
    .I0(\freqdiv3/counter [11]),
    .I1(\freqdiv3/counter [9]),
    .I2(\freqdiv3/counter [3]),
    .I3(\freqdiv3/counter [10]),
    .O(\freqdiv3/counter_cmp_eq0000_wg_lut [1])
  );
  MUXCY   \freqdiv3/counter_cmp_eq0000_wg_cy<1>  (
    .CI(\freqdiv3/counter_cmp_eq0000_wg_cy [0]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv3/counter_cmp_eq0000_wg_lut [1]),
    .O(\freqdiv3/counter_cmp_eq0000_wg_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \freqdiv3/counter_cmp_eq0000_wg_lut<2>  (
    .I0(\freqdiv3/counter [5]),
    .I1(\freqdiv3/counter [12]),
    .I2(\freqdiv3/counter [14]),
    .I3(\freqdiv3/counter [13]),
    .O(\freqdiv3/counter_cmp_eq0000_wg_lut [2])
  );
  MUXCY   \freqdiv3/counter_cmp_eq0000_wg_cy<2>  (
    .CI(\freqdiv3/counter_cmp_eq0000_wg_cy [1]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv3/counter_cmp_eq0000_wg_lut [2]),
    .O(\freqdiv3/counter_cmp_eq0000_wg_cy [2])
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \freqdiv3/counter_cmp_eq0000_wg_lut<3>  (
    .I0(\freqdiv3/counter [17]),
    .I1(\freqdiv3/counter [15]),
    .I2(\freqdiv3/counter [1]),
    .I3(\freqdiv3/counter [16]),
    .O(\freqdiv3/counter_cmp_eq0000_wg_lut [3])
  );
  MUXCY   \freqdiv3/counter_cmp_eq0000_wg_cy<3>  (
    .CI(\freqdiv3/counter_cmp_eq0000_wg_cy [2]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv3/counter_cmp_eq0000_wg_lut [3]),
    .O(\freqdiv3/counter_cmp_eq0000_wg_cy [3])
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \freqdiv3/counter_cmp_eq0000_wg_lut<4>  (
    .I0(\freqdiv3/counter [20]),
    .I1(\freqdiv3/counter [18]),
    .I2(\freqdiv3/counter [0]),
    .I3(\freqdiv3/counter [19]),
    .O(\freqdiv3/counter_cmp_eq0000_wg_lut [4])
  );
  MUXCY   \freqdiv3/counter_cmp_eq0000_wg_cy<4>  (
    .CI(\freqdiv3/counter_cmp_eq0000_wg_cy [3]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv3/counter_cmp_eq0000_wg_lut [4]),
    .O(\freqdiv3/counter_cmp_eq0000_wg_cy [4])
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \freqdiv3/counter_cmp_eq0000_wg_lut<5>  (
    .I0(\freqdiv3/counter [23]),
    .I1(\freqdiv3/counter [21]),
    .I2(\freqdiv3/counter [2]),
    .I3(\freqdiv3/counter [22]),
    .O(\freqdiv3/counter_cmp_eq0000_wg_lut [5])
  );
  MUXCY   \freqdiv3/counter_cmp_eq0000_wg_cy<5>  (
    .CI(\freqdiv3/counter_cmp_eq0000_wg_cy [4]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv3/counter_cmp_eq0000_wg_lut [5]),
    .O(\freqdiv3/counter_cmp_eq0000 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \freqdiv2/counter_cmp_eq0000_wg_lut<0>  (
    .I0(\freqdiv2/counter [8]),
    .I1(\freqdiv2/counter [6]),
    .I2(\freqdiv2/counter [4]),
    .I3(\freqdiv2/counter [7]),
    .O(\freqdiv2/counter_cmp_eq0000_wg_lut [0])
  );
  MUXCY   \freqdiv2/counter_cmp_eq0000_wg_cy<0>  (
    .CI(IO_P1_3_OBUF_10),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv2/counter_cmp_eq0000_wg_lut [0]),
    .O(\freqdiv2/counter_cmp_eq0000_wg_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \freqdiv2/counter_cmp_eq0000_wg_lut<1>  (
    .I0(\freqdiv2/counter [11]),
    .I1(\freqdiv2/counter [9]),
    .I2(\freqdiv2/counter [3]),
    .I3(\freqdiv2/counter [10]),
    .O(\freqdiv2/counter_cmp_eq0000_wg_lut [1])
  );
  MUXCY   \freqdiv2/counter_cmp_eq0000_wg_cy<1>  (
    .CI(\freqdiv2/counter_cmp_eq0000_wg_cy [0]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv2/counter_cmp_eq0000_wg_lut [1]),
    .O(\freqdiv2/counter_cmp_eq0000_wg_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \freqdiv2/counter_cmp_eq0000_wg_lut<2>  (
    .I0(\freqdiv2/counter [14]),
    .I1(\freqdiv2/counter [12]),
    .I2(\freqdiv2/counter [5]),
    .I3(\freqdiv2/counter [13]),
    .O(\freqdiv2/counter_cmp_eq0000_wg_lut [2])
  );
  MUXCY   \freqdiv2/counter_cmp_eq0000_wg_cy<2>  (
    .CI(\freqdiv2/counter_cmp_eq0000_wg_cy [1]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv2/counter_cmp_eq0000_wg_lut [2]),
    .O(\freqdiv2/counter_cmp_eq0000_wg_cy [2])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \freqdiv2/counter_cmp_eq0000_wg_lut<3>  (
    .I0(\freqdiv2/counter [17]),
    .I1(\freqdiv2/counter [15]),
    .I2(\freqdiv2/counter [1]),
    .I3(\freqdiv2/counter [16]),
    .O(\freqdiv2/counter_cmp_eq0000_wg_lut [3])
  );
  MUXCY   \freqdiv2/counter_cmp_eq0000_wg_cy<3>  (
    .CI(\freqdiv2/counter_cmp_eq0000_wg_cy [2]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv2/counter_cmp_eq0000_wg_lut [3]),
    .O(\freqdiv2/counter_cmp_eq0000_wg_cy [3])
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \freqdiv2/counter_cmp_eq0000_wg_lut<4>  (
    .I0(\freqdiv2/counter [20]),
    .I1(\freqdiv2/counter [18]),
    .I2(\freqdiv2/counter [0]),
    .I3(\freqdiv2/counter [19]),
    .O(\freqdiv2/counter_cmp_eq0000_wg_lut [4])
  );
  MUXCY   \freqdiv2/counter_cmp_eq0000_wg_cy<4>  (
    .CI(\freqdiv2/counter_cmp_eq0000_wg_cy [3]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv2/counter_cmp_eq0000_wg_lut [4]),
    .O(\freqdiv2/counter_cmp_eq0000_wg_cy [4])
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \freqdiv2/counter_cmp_eq0000_wg_lut<5>  (
    .I0(\freqdiv2/counter [23]),
    .I1(\freqdiv2/counter [21]),
    .I2(\freqdiv2/counter [2]),
    .I3(\freqdiv2/counter [22]),
    .O(\freqdiv2/counter_cmp_eq0000_wg_lut [5])
  );
  MUXCY   \freqdiv2/counter_cmp_eq0000_wg_cy<5>  (
    .CI(\freqdiv2/counter_cmp_eq0000_wg_cy [4]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv2/counter_cmp_eq0000_wg_lut [5]),
    .O(\freqdiv2/counter_cmp_eq0000 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \freqdiv1/counter_cmp_eq0000_wg_lut<0>  (
    .I0(\freqdiv1/counter [7]),
    .I1(\freqdiv1/counter [6]),
    .I2(\freqdiv1/counter [4]),
    .I3(\freqdiv1/counter [8]),
    .O(\freqdiv1/counter_cmp_eq0000_wg_lut [0])
  );
  MUXCY   \freqdiv1/counter_cmp_eq0000_wg_cy<0>  (
    .CI(IO_P1_3_OBUF_10),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv1/counter_cmp_eq0000_wg_lut [0]),
    .O(\freqdiv1/counter_cmp_eq0000_wg_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \freqdiv1/counter_cmp_eq0000_wg_lut<1>  (
    .I0(\freqdiv1/counter [9]),
    .I1(\freqdiv1/counter [11]),
    .I2(\freqdiv1/counter [3]),
    .I3(\freqdiv1/counter [10]),
    .O(\freqdiv1/counter_cmp_eq0000_wg_lut [1])
  );
  MUXCY   \freqdiv1/counter_cmp_eq0000_wg_cy<1>  (
    .CI(\freqdiv1/counter_cmp_eq0000_wg_cy [0]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv1/counter_cmp_eq0000_wg_lut [1]),
    .O(\freqdiv1/counter_cmp_eq0000_wg_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \freqdiv1/counter_cmp_eq0000_wg_lut<2>  (
    .I0(\freqdiv1/counter [14]),
    .I1(\freqdiv1/counter [12]),
    .I2(\freqdiv1/counter [5]),
    .I3(\freqdiv1/counter [13]),
    .O(\freqdiv1/counter_cmp_eq0000_wg_lut [2])
  );
  MUXCY   \freqdiv1/counter_cmp_eq0000_wg_cy<2>  (
    .CI(\freqdiv1/counter_cmp_eq0000_wg_cy [1]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv1/counter_cmp_eq0000_wg_lut [2]),
    .O(\freqdiv1/counter_cmp_eq0000_wg_cy [2])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \freqdiv1/counter_cmp_eq0000_wg_lut<3>  (
    .I0(\freqdiv1/counter [17]),
    .I1(\freqdiv1/counter [15]),
    .I2(\freqdiv1/counter [1]),
    .I3(\freqdiv1/counter [16]),
    .O(\freqdiv1/counter_cmp_eq0000_wg_lut [3])
  );
  MUXCY   \freqdiv1/counter_cmp_eq0000_wg_cy<3>  (
    .CI(\freqdiv1/counter_cmp_eq0000_wg_cy [2]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv1/counter_cmp_eq0000_wg_lut [3]),
    .O(\freqdiv1/counter_cmp_eq0000_wg_cy [3])
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \freqdiv1/counter_cmp_eq0000_wg_lut<4>  (
    .I0(\freqdiv1/counter [18]),
    .I1(\freqdiv1/counter [20]),
    .I2(\freqdiv1/counter [0]),
    .I3(\freqdiv1/counter [19]),
    .O(\freqdiv1/counter_cmp_eq0000_wg_lut [4])
  );
  MUXCY   \freqdiv1/counter_cmp_eq0000_wg_cy<4>  (
    .CI(\freqdiv1/counter_cmp_eq0000_wg_cy [3]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv1/counter_cmp_eq0000_wg_lut [4]),
    .O(\freqdiv1/counter_cmp_eq0000_wg_cy [4])
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \freqdiv1/counter_cmp_eq0000_wg_lut<5>  (
    .I0(\freqdiv1/counter [2]),
    .I1(\freqdiv1/counter [22]),
    .I2(\freqdiv1/counter [23]),
    .I3(\freqdiv1/counter [21]),
    .O(\freqdiv1/counter_cmp_eq0000_wg_lut [5])
  );
  MUXCY   \freqdiv1/counter_cmp_eq0000_wg_cy<5>  (
    .CI(\freqdiv1/counter_cmp_eq0000_wg_cy [4]),
    .DI(IO_P1_1_OBUF_8),
    .S(\freqdiv1/counter_cmp_eq0000_wg_lut [5]),
    .O(\freqdiv1/counter_cmp_eq0000 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \sevenSegementDec/output_select_cmp_eq0000_wg_lut<0>  (
    .I0(\sevenSegementDec/counter [10]),
    .I1(\sevenSegementDec/counter [9]),
    .I2(\sevenSegementDec/counter [7]),
    .I3(\sevenSegementDec/counter [8]),
    .O(\sevenSegementDec/output_select_cmp_eq0000_wg_lut [0])
  );
  MUXCY   \sevenSegementDec/output_select_cmp_eq0000_wg_cy<0>  (
    .CI(IO_P1_3_OBUF_10),
    .DI(IO_P1_1_OBUF_8),
    .S(\sevenSegementDec/output_select_cmp_eq0000_wg_lut [0]),
    .O(\sevenSegementDec/output_select_cmp_eq0000_wg_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \sevenSegementDec/output_select_cmp_eq0000_wg_lut<1>  (
    .I0(\sevenSegementDec/counter [11]),
    .I1(\sevenSegementDec/counter [12]),
    .I2(\sevenSegementDec/counter [6]),
    .I3(\sevenSegementDec/counter [13]),
    .O(\sevenSegementDec/output_select_cmp_eq0000_wg_lut [1])
  );
  MUXCY   \sevenSegementDec/output_select_cmp_eq0000_wg_cy<1>  (
    .CI(\sevenSegementDec/output_select_cmp_eq0000_wg_cy [0]),
    .DI(IO_P1_1_OBUF_8),
    .S(\sevenSegementDec/output_select_cmp_eq0000_wg_lut [1]),
    .O(\sevenSegementDec/output_select_cmp_eq0000_wg_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \sevenSegementDec/output_select_cmp_eq0000_wg_lut<2>  (
    .I0(\sevenSegementDec/counter [14]),
    .I1(\sevenSegementDec/counter [15]),
    .I2(\sevenSegementDec/counter [5]),
    .I3(\sevenSegementDec/counter [16]),
    .O(\sevenSegementDec/output_select_cmp_eq0000_wg_lut [2])
  );
  MUXCY   \sevenSegementDec/output_select_cmp_eq0000_wg_cy<2>  (
    .CI(\sevenSegementDec/output_select_cmp_eq0000_wg_cy [1]),
    .DI(IO_P1_1_OBUF_8),
    .S(\sevenSegementDec/output_select_cmp_eq0000_wg_lut [2]),
    .O(\sevenSegementDec/output_select_cmp_eq0000_wg_cy [2])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \sevenSegementDec/output_select_cmp_eq0000_wg_lut<3>  (
    .I0(\sevenSegementDec/counter [17]),
    .I1(\sevenSegementDec/counter [18]),
    .I2(\sevenSegementDec/counter [4]),
    .I3(\sevenSegementDec/counter [19]),
    .O(\sevenSegementDec/output_select_cmp_eq0000_wg_lut [3])
  );
  MUXCY   \sevenSegementDec/output_select_cmp_eq0000_wg_cy<3>  (
    .CI(\sevenSegementDec/output_select_cmp_eq0000_wg_cy [2]),
    .DI(IO_P1_1_OBUF_8),
    .S(\sevenSegementDec/output_select_cmp_eq0000_wg_lut [3]),
    .O(\sevenSegementDec/output_select_cmp_eq0000_wg_cy [3])
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \sevenSegementDec/output_select_cmp_eq0000_wg_lut<4>  (
    .I0(\sevenSegementDec/counter [20]),
    .I1(\sevenSegementDec/counter [21]),
    .I2(\sevenSegementDec/counter [3]),
    .I3(\sevenSegementDec/counter [22]),
    .O(\sevenSegementDec/output_select_cmp_eq0000_wg_lut [4])
  );
  MUXCY   \sevenSegementDec/output_select_cmp_eq0000_wg_cy<4>  (
    .CI(\sevenSegementDec/output_select_cmp_eq0000_wg_cy [3]),
    .DI(IO_P1_1_OBUF_8),
    .S(\sevenSegementDec/output_select_cmp_eq0000_wg_lut [4]),
    .O(\sevenSegementDec/output_select_cmp_eq0000_wg_cy [4])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \sevenSegementDec/output_select_cmp_eq0000_wg_lut<5>  (
    .I0(\sevenSegementDec/counter [23]),
    .I1(\sevenSegementDec/counter [24]),
    .I2(\sevenSegementDec/counter [2]),
    .I3(\sevenSegementDec/counter [25]),
    .O(\sevenSegementDec/output_select_cmp_eq0000_wg_lut [5])
  );
  MUXCY   \sevenSegementDec/output_select_cmp_eq0000_wg_cy<5>  (
    .CI(\sevenSegementDec/output_select_cmp_eq0000_wg_cy [4]),
    .DI(IO_P1_1_OBUF_8),
    .S(\sevenSegementDec/output_select_cmp_eq0000_wg_lut [5]),
    .O(\sevenSegementDec/output_select_cmp_eq0000_wg_cy [5])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \sevenSegementDec/output_select_cmp_eq0000_wg_lut<6>  (
    .I0(\sevenSegementDec/counter [26]),
    .I1(\sevenSegementDec/counter [27]),
    .I2(\sevenSegementDec/counter [1]),
    .I3(\sevenSegementDec/counter [28]),
    .O(\sevenSegementDec/output_select_cmp_eq0000_wg_lut [6])
  );
  MUXCY   \sevenSegementDec/output_select_cmp_eq0000_wg_cy<6>  (
    .CI(\sevenSegementDec/output_select_cmp_eq0000_wg_cy [5]),
    .DI(IO_P1_1_OBUF_8),
    .S(\sevenSegementDec/output_select_cmp_eq0000_wg_lut [6]),
    .O(\sevenSegementDec/output_select_cmp_eq0000_wg_cy [6])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \sevenSegementDec/output_select_cmp_eq0000_wg_lut<7>  (
    .I0(\sevenSegementDec/counter [29]),
    .I1(\sevenSegementDec/counter [30]),
    .I2(\sevenSegementDec/counter [0]),
    .I3(\sevenSegementDec/counter [31]),
    .O(\sevenSegementDec/output_select_cmp_eq0000_wg_lut [7])
  );
  MUXCY   \sevenSegementDec/output_select_cmp_eq0000_wg_cy<7>  (
    .CI(\sevenSegementDec/output_select_cmp_eq0000_wg_cy [6]),
    .DI(IO_P1_1_OBUF_8),
    .S(\sevenSegementDec/output_select_cmp_eq0000_wg_lut [7]),
    .O(\sevenSegementDec/output_select_cmp_eq0000 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \theBinary2BCDtemp/Madd__add0007_cy<1>11  (
    .I0(\theBinary2BCDtemp/Madd__add0007_cy [0]),
    .I1(\theBinary2BCDtemp/Madd__add0005_cy [0]),
    .O(\theBinary2BCDtemp/Madd__add0007_cy [1])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \theBinary2BCDhumid/Madd__add0007_cy<1>11  (
    .I0(\theBinary2BCDhumid/Madd__add0007_cy [0]),
    .I1(\theBinary2BCDhumid/Madd__add0005_cy [0]),
    .O(\theBinary2BCDhumid/Madd__add0007_cy [1])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \theBinary2BCD/Tens_mux000721  (
    .I0(\theBinary2BCD/Hundreds_0_cmp_ge0002 ),
    .I1(\theBinary2BCD/Madd__add0007_cy [0]),
    .O(\theBinary2BCD/N81 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Mrom_auto_capture_mux000011 (
    .I0(\theNewCounter/counter_reg [0]),
    .I1(\theNewCounter/counter_reg [1]),
    .O(Mrom_auto_capture_mux0000)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \theBinary2BCD/Tens_0_mux00022  (
    .I0(\theBinary2BCD/Madd__add0002_lut [3]),
    .I1(\theBinary2BCD/N121 ),
    .O(\theBinary2BCD/Madd__add0003_cy [0])
  );
  LUT3 #(
    .INIT ( 8'hAE ))
  \theBinary2BCDtemp/Tens_mux001021  (
    .I0(\theBinary2BCDtemp/Madd__add0010_cy [0]),
    .I1(\theBinary2BCDtemp/N17 ),
    .I2(\theBinary2BCDtemp/Madd__add0010_lut [3]),
    .O(\theBinary2BCDtemp/N10 )
  );
  LUT3 #(
    .INIT ( 8'h57 ))
  \theBinary2BCDtemp/Tens_0_mux000211  (
    .I0(\dht11_driver/output_humidity [7]),
    .I1(\dht11_driver/output_humidity [5]),
    .I2(\dht11_driver/output_humidity [6]),
    .O(\theBinary2BCDtemp/N121 )
  );
  LUT3 #(
    .INIT ( 8'h57 ))
  \theBinary2BCDhumid/Tens_0_mux000211  (
    .I0(\dht11_driver/output_temp [7]),
    .I1(\dht11_driver/output_temp [5]),
    .I2(\dht11_driver/output_temp [6]),
    .O(\theBinary2BCDhumid/N121 )
  );
  LUT3 #(
    .INIT ( 8'hAE ))
  \theBinary2BCD/Tens_mux001021  (
    .I0(\theBinary2BCD/Madd__add0010_cy [0]),
    .I1(\theBinary2BCD/N17 ),
    .I2(\theBinary2BCD/Madd__add0010_lut [3]),
    .O(\theBinary2BCD/N10 )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \theBinary2BCD/Madd__add0000_cy<2>1  (
    .I0(\the10bitCounter/counter_reg [9]),
    .I1(\the10bitCounter/counter_reg [8]),
    .I2(\the10bitCounter/counter_reg [7]),
    .O(\theBinary2BCD/Madd__add0000_cy [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  start_dht11_capture1 (
    .I0(auto_capture_169),
    .I1(\debounce_start/OUT_205 ),
    .I2(auto_capture_start_170),
    .O(start_dht11_capture)
  );
  LUT3 #(
    .INIT ( 8'hF6 ))
  \theBinary2BCD/Madd__add0007_cy<1>11  (
    .I0(\theBinary2BCD/Hundreds_0_mux0001 ),
    .I1(\theBinary2BCD/Madd__add0005_cy [0]),
    .I2(\theBinary2BCD/Madd__add0007_cy [0]),
    .O(\theBinary2BCD/Madd__add0007_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  Mmux_LCD_3_mux000091 (
    .I0(\theBinary2BCD/N21 ),
    .I1(\theBinary2BCD/Hundreds_0_mux0001 ),
    .I2(\theNewCounter/counter_reg [0]),
    .I3(\theNewCounter/counter_reg [1]),
    .O(LCD_3_mux0000[2])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Mmux_LCD_3_mux0000121 (
    .I0(\theNewCounter/counter_reg [0]),
    .I1(\theNewCounter/counter_reg [1]),
    .I2(\theBinary2BCD/N21 ),
    .I3(\theBinary2BCD/Hundreds_0_mux0001 ),
    .O(LCD_3_mux0000[3])
  );
  LUT4 #(
    .INIT ( 16'h41FF ))
  \theBinary2BCD/Tens_0_mux000211  (
    .I0(\the10bitCounter/counter_reg [5]),
    .I1(\theBinary2BCD/Tens_0_mux0001 ),
    .I2(\the10bitCounter/counter_reg [6]),
    .I3(\theBinary2BCD/Madd__add0002_lut [2]),
    .O(\theBinary2BCD/N121 )
  );
  LUT4 #(
    .INIT ( 16'h3626 ))
  \theBinary2BCDtemp/Ones_mux001911  (
    .I0(\theBinary2BCDtemp/Madd__add0008_lut [3]),
    .I1(\dht11_driver/output_humidity [2]),
    .I2(\theBinary2BCDtemp/Madd__add0008_lut [2]),
    .I3(\theBinary2BCDtemp/N6 ),
    .O(\theBinary2BCDtemp/N8 )
  );
  LUT4 #(
    .INIT ( 16'h3626 ))
  \theBinary2BCDtemp/Ones_mux001611  (
    .I0(\theBinary2BCDtemp/Madd__add0006_lut [3]),
    .I1(\dht11_driver/output_humidity [3]),
    .I2(\theBinary2BCDtemp/Madd__add0006_lut [2]),
    .I3(\theBinary2BCDtemp/N2 ),
    .O(\theBinary2BCDtemp/N6 )
  );
  LUT4 #(
    .INIT ( 16'h989A ))
  \theBinary2BCDtemp/Ones_mux00161  (
    .I0(\theBinary2BCDtemp/N6 ),
    .I1(\dht11_driver/output_humidity [2]),
    .I2(\theBinary2BCDtemp/Madd__add0008_lut [3]),
    .I3(\theBinary2BCDtemp/Madd__add0008_lut [2]),
    .O(\theBinary2BCDtemp/Madd__add0011_lut [2])
  );
  LUT4 #(
    .INIT ( 16'h5062 ))
  \theBinary2BCDtemp/Ones_mux00151  (
    .I0(\theBinary2BCDtemp/Madd__add0008_lut [2]),
    .I1(\theBinary2BCDtemp/N6 ),
    .I2(\theBinary2BCDtemp/Madd__add0008_lut [3]),
    .I3(\dht11_driver/output_humidity [2]),
    .O(\theBinary2BCDtemp/Madd__add0011_lut [3])
  );
  LUT4 #(
    .INIT ( 16'h989A ))
  \theBinary2BCDtemp/Ones_mux00131  (
    .I0(\theBinary2BCDtemp/N2 ),
    .I1(\dht11_driver/output_humidity [3]),
    .I2(\theBinary2BCDtemp/Madd__add0006_lut [3]),
    .I3(\theBinary2BCDtemp/Madd__add0006_lut [2]),
    .O(\theBinary2BCDtemp/Madd__add0008_lut [2])
  );
  LUT4 #(
    .INIT ( 16'h5062 ))
  \theBinary2BCDtemp/Ones_mux00121  (
    .I0(\theBinary2BCDtemp/Madd__add0006_lut [2]),
    .I1(\theBinary2BCDtemp/N2 ),
    .I2(\theBinary2BCDtemp/Madd__add0006_lut [3]),
    .I3(\dht11_driver/output_humidity [3]),
    .O(\theBinary2BCDtemp/Madd__add0008_lut [3])
  );
  LUT4 #(
    .INIT ( 16'h3626 ))
  \theBinary2BCDhumid/Ones_mux001911  (
    .I0(\theBinary2BCDhumid/Madd__add0008_lut [3]),
    .I1(\dht11_driver/output_temp [2]),
    .I2(\theBinary2BCDhumid/Madd__add0008_lut [2]),
    .I3(\theBinary2BCDhumid/N6 ),
    .O(\theBinary2BCDhumid/N8 )
  );
  LUT4 #(
    .INIT ( 16'h3626 ))
  \theBinary2BCDhumid/Ones_mux001611  (
    .I0(\theBinary2BCDhumid/Madd__add0006_lut [3]),
    .I1(\dht11_driver/output_temp [3]),
    .I2(\theBinary2BCDhumid/Madd__add0006_lut [2]),
    .I3(\theBinary2BCDhumid/N2 ),
    .O(\theBinary2BCDhumid/N6 )
  );
  LUT4 #(
    .INIT ( 16'h989A ))
  \theBinary2BCDhumid/Ones_mux00161  (
    .I0(\theBinary2BCDhumid/N6 ),
    .I1(\dht11_driver/output_temp [2]),
    .I2(\theBinary2BCDhumid/Madd__add0008_lut [3]),
    .I3(\theBinary2BCDhumid/Madd__add0008_lut [2]),
    .O(\theBinary2BCDhumid/Madd__add0011_lut [2])
  );
  LUT4 #(
    .INIT ( 16'h5062 ))
  \theBinary2BCDhumid/Ones_mux00151  (
    .I0(\theBinary2BCDhumid/Madd__add0008_lut [2]),
    .I1(\theBinary2BCDhumid/N6 ),
    .I2(\theBinary2BCDhumid/Madd__add0008_lut [3]),
    .I3(\dht11_driver/output_temp [2]),
    .O(\theBinary2BCDhumid/Madd__add0011_lut [3])
  );
  LUT4 #(
    .INIT ( 16'h989A ))
  \theBinary2BCDhumid/Ones_mux00131  (
    .I0(\theBinary2BCDhumid/N2 ),
    .I1(\dht11_driver/output_temp [3]),
    .I2(\theBinary2BCDhumid/Madd__add0006_lut [3]),
    .I3(\theBinary2BCDhumid/Madd__add0006_lut [2]),
    .O(\theBinary2BCDhumid/Madd__add0008_lut [2])
  );
  LUT4 #(
    .INIT ( 16'h5062 ))
  \theBinary2BCDhumid/Ones_mux00121  (
    .I0(\theBinary2BCDhumid/Madd__add0006_lut [2]),
    .I1(\theBinary2BCDhumid/N2 ),
    .I2(\theBinary2BCDhumid/Madd__add0006_lut [3]),
    .I3(\dht11_driver/output_temp [3]),
    .O(\theBinary2BCDhumid/Madd__add0008_lut [3])
  );
  LUT4 #(
    .INIT ( 16'h3626 ))
  \theBinary2BCD/Ones_mux001911  (
    .I0(\theBinary2BCD/Madd__add0008_lut [3]),
    .I1(\the10bitCounter/counter_reg [2]),
    .I2(\theBinary2BCD/Madd__add0008_lut [2]),
    .I3(\theBinary2BCD/N6 ),
    .O(\theBinary2BCD/N8 )
  );
  LUT4 #(
    .INIT ( 16'h3626 ))
  \theBinary2BCD/Ones_mux001611  (
    .I0(\theBinary2BCD/Madd__add0006_lut [3]),
    .I1(\the10bitCounter/counter_reg [3]),
    .I2(\theBinary2BCD/Madd__add0006_lut [2]),
    .I3(\theBinary2BCD/N2 ),
    .O(\theBinary2BCD/N6 )
  );
  LUT4 #(
    .INIT ( 16'h989A ))
  \theBinary2BCD/Ones_mux00161  (
    .I0(\theBinary2BCD/N6 ),
    .I1(\the10bitCounter/counter_reg [2]),
    .I2(\theBinary2BCD/Madd__add0008_lut [3]),
    .I3(\theBinary2BCD/Madd__add0008_lut [2]),
    .O(\theBinary2BCD/Madd__add0011_lut [2])
  );
  LUT4 #(
    .INIT ( 16'h5062 ))
  \theBinary2BCD/Ones_mux00151  (
    .I0(\theBinary2BCD/Madd__add0008_lut [2]),
    .I1(\theBinary2BCD/N6 ),
    .I2(\theBinary2BCD/Madd__add0008_lut [3]),
    .I3(\the10bitCounter/counter_reg [2]),
    .O(\theBinary2BCD/Madd__add0011_lut [3])
  );
  LUT4 #(
    .INIT ( 16'h3626 ))
  \theBinary2BCD/Ones_mux001311  (
    .I0(\theBinary2BCD/Madd__add0004_lut [3]),
    .I1(\the10bitCounter/counter_reg [4]),
    .I2(\theBinary2BCD/Madd__add0004_lut [2]),
    .I3(\theBinary2BCD/N3 ),
    .O(\theBinary2BCD/N2 )
  );
  LUT4 #(
    .INIT ( 16'h989A ))
  \theBinary2BCD/Ones_mux00131  (
    .I0(\theBinary2BCD/N2 ),
    .I1(\the10bitCounter/counter_reg [3]),
    .I2(\theBinary2BCD/Madd__add0006_lut [3]),
    .I3(\theBinary2BCD/Madd__add0006_lut [2]),
    .O(\theBinary2BCD/Madd__add0008_lut [2])
  );
  LUT4 #(
    .INIT ( 16'h5062 ))
  \theBinary2BCD/Ones_mux00121  (
    .I0(\theBinary2BCD/Madd__add0006_lut [2]),
    .I1(\theBinary2BCD/N2 ),
    .I2(\theBinary2BCD/Madd__add0006_lut [3]),
    .I3(\the10bitCounter/counter_reg [3]),
    .O(\theBinary2BCD/Madd__add0008_lut [3])
  );
  LUT4 #(
    .INIT ( 16'h989A ))
  \theBinary2BCD/Ones_mux00101  (
    .I0(\theBinary2BCD/N3 ),
    .I1(\the10bitCounter/counter_reg [4]),
    .I2(\theBinary2BCD/Madd__add0004_lut [3]),
    .I3(\theBinary2BCD/Madd__add0004_lut [2]),
    .O(\theBinary2BCD/Madd__add0006_lut [2])
  );
  LUT4 #(
    .INIT ( 16'h5062 ))
  \theBinary2BCD/Ones_mux00091  (
    .I0(\theBinary2BCD/Madd__add0004_lut [2]),
    .I1(\theBinary2BCD/N3 ),
    .I2(\theBinary2BCD/Madd__add0004_lut [3]),
    .I3(\the10bitCounter/counter_reg [4]),
    .O(\theBinary2BCD/Madd__add0006_lut [3])
  );
  LUT4 #(
    .INIT ( 16'h6AFF ))
  \theBinary2BCD/Hundreds_mux000211  (
    .I0(\theBinary2BCD/Madd__add0007_lut [3]),
    .I1(\theBinary2BCD/Madd__add0007_cy [1]),
    .I2(\theBinary2BCD/Madd__add0007_lut [2]),
    .I3(\theBinary2BCD/Hundreds_0_cmp_ge0000 ),
    .O(\theBinary2BCD/N21 )
  );
  LUT4 #(
    .INIT ( 16'h3C6C ))
  \theBinary2BCDtemp/Tens_0_mux00051  (
    .I0(\theBinary2BCDtemp/N6 ),
    .I1(\theBinary2BCDtemp/Madd__add0008_lut [3]),
    .I2(\theBinary2BCDtemp/Madd__add0008_lut [2]),
    .I3(\dht11_driver/output_humidity [2]),
    .O(\theBinary2BCDtemp/Madd__add0010_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h3C6C ))
  \theBinary2BCDtemp/Tens_0_mux00041  (
    .I0(\theBinary2BCDtemp/N2 ),
    .I1(\theBinary2BCDtemp/Madd__add0006_lut [3]),
    .I2(\theBinary2BCDtemp/Madd__add0006_lut [2]),
    .I3(\dht11_driver/output_humidity [3]),
    .O(\theBinary2BCDtemp/Madd__add0007_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h3C6C ))
  \theBinary2BCDhumid/Tens_0_mux00051  (
    .I0(\theBinary2BCDhumid/N6 ),
    .I1(\theBinary2BCDhumid/Madd__add0008_lut [3]),
    .I2(\theBinary2BCDhumid/Madd__add0008_lut [2]),
    .I3(\dht11_driver/output_temp [2]),
    .O(\theBinary2BCDhumid/Madd__add0010_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h3C6C ))
  \theBinary2BCDhumid/Tens_0_mux00041  (
    .I0(\theBinary2BCDhumid/N2 ),
    .I1(\theBinary2BCDhumid/Madd__add0006_lut [3]),
    .I2(\theBinary2BCDhumid/Madd__add0006_lut [2]),
    .I3(\dht11_driver/output_temp [3]),
    .O(\theBinary2BCDhumid/Madd__add0007_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h3C6C ))
  \theBinary2BCD/Tens_0_mux00051  (
    .I0(\theBinary2BCD/N6 ),
    .I1(\theBinary2BCD/Madd__add0008_lut [3]),
    .I2(\theBinary2BCD/Madd__add0008_lut [2]),
    .I3(\the10bitCounter/counter_reg [2]),
    .O(\theBinary2BCD/Madd__add0010_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h3C6C ))
  \theBinary2BCD/Tens_0_mux00041  (
    .I0(\theBinary2BCD/N2 ),
    .I1(\theBinary2BCD/Madd__add0006_lut [3]),
    .I2(\theBinary2BCD/Madd__add0006_lut [2]),
    .I3(\the10bitCounter/counter_reg [3]),
    .O(\theBinary2BCD/Madd__add0007_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h3C6C ))
  \theBinary2BCD/Tens_0_mux00031  (
    .I0(\theBinary2BCD/N3 ),
    .I1(\theBinary2BCD/Madd__add0004_lut [3]),
    .I2(\theBinary2BCD/Madd__add0004_lut [2]),
    .I3(\the10bitCounter/counter_reg [4]),
    .O(\theBinary2BCD/Madd__add0005_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h96FF ))
  \theBinary2BCD/Hundreds_0_mux000311  (
    .I0(\theBinary2BCD/Madd__add0005_cy [0]),
    .I1(\theBinary2BCD/N81 ),
    .I2(\theBinary2BCD/Hundreds_0_mux0001 ),
    .I3(\theBinary2BCD/Madd__add0010_cy [1]),
    .O(\theBinary2BCD/N17 )
  );
  LUT4 #(
    .INIT ( 16'h2DD2 ))
  \theBinary2BCD/Tens_mux00041  (
    .I0(\theBinary2BCD/Hundreds_0_mux0001 ),
    .I1(\theBinary2BCD/Madd__add0005_cy [0]),
    .I2(\theBinary2BCD/Madd__add0003_cy [0]),
    .I3(\theBinary2BCD/Hundreds_0_cmp_ge0000 ),
    .O(\theBinary2BCD/Madd__add0007_lut [2])
  );
  LUT4 #(
    .INIT ( 16'hFF57 ))
  \theBinary2BCD/Hundreds_0_mux000119  (
    .I0(\the10bitCounter/counter_reg [9]),
    .I1(\the10bitCounter/counter_reg [7]),
    .I2(\the10bitCounter/counter_reg [8]),
    .I3(\theBinary2BCD/Madd__add0003_cy [0]),
    .O(\theBinary2BCD/Hundreds_0_mux000119_1450 )
  );
  LUT4 #(
    .INIT ( 16'h1441 ))
  Mmux_LCD_2_mux000012200 (
    .I0(\theBinary2BCD/Madd__add0010_cy [1]),
    .I1(\theBinary2BCD/N81 ),
    .I2(\theBinary2BCD/Hundreds_0_mux0001 ),
    .I3(\theBinary2BCD/Madd__add0005_cy [0]),
    .O(Mmux_LCD_2_mux000012200_50)
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \dht11_driver/Mtridata_data_out_and00001  (
    .I0(rst_n_dht11_1207),
    .I1(\dht11_driver/state_FSM_FFd8_825 ),
    .I2(\dht11_driver/state_FSM_FFd9_827 ),
    .I3(\dht11_driver/state_FSM_FFd11_811 ),
    .O(\dht11_driver/Mtridata_data_out_and0000 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \dht11_driver/state_or00001  (
    .I0(\dht11_driver/state_FSM_FFd2_813 ),
    .I1(\dht11_driver/state_FSM_FFd3_815 ),
    .I2(\dht11_driver/state_FSM_FFd1_807 ),
    .O(\dht11_driver/state_or0000 )
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  \dht11_driver/state_FSM_FFd10-In1  (
    .I0(start_dht11_capture),
    .I1(\dht11_driver/state_FSM_FFd11_811 ),
    .I2(\dht11_driver/state_FSM_FFd10_809 ),
    .O(\dht11_driver/state_FSM_FFd10-In )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \dht11_driver/state_FSM_FFd1-In1  (
    .I0(start_dht11_capture),
    .I1(\dht11_driver/state_FSM_FFd2_813 ),
    .I2(\dht11_driver/state_FSM_FFd1_807 ),
    .O(\dht11_driver/state_FSM_FFd1-In )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  auto_capture_start_cmp_eq00001 (
    .I0(\the10bitCounter/counter_reg [2]),
    .I1(\the10bitCounter/counter_reg [1]),
    .I2(\the10bitCounter/counter_reg [0]),
    .O(auto_capture_start_cmp_eq0000)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \sevenSegementDec/output_select_mux0000<2>1  (
    .I0(\sevenSegementDec/output_select [1]),
    .I1(\sevenSegementDec/output_select [0]),
    .I2(\sevenSegementDec/output_select [2]),
    .O(\sevenSegementDec/output_select_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \sevenSegementDec/output_select_mux0000<1>1  (
    .I0(\sevenSegementDec/output_select [2]),
    .I1(\sevenSegementDec/output_select [1]),
    .I2(\sevenSegementDec/output_select [0]),
    .O(\sevenSegementDec/output_select_mux0000 [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \sevenSegementDec/output_select_mux0000<0>1  (
    .I0(\sevenSegementDec/output_select [0]),
    .I1(\sevenSegementDec/output_select [2]),
    .I2(\sevenSegementDec/output_select [1]),
    .O(\sevenSegementDec/output_select_mux0000 [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  rst_n_dht11_mux00001 (
    .I0(\theNewCounter/counter_reg [1]),
    .I1(BTN_4_IBUF_6),
    .I2(rst_n_dht11_1207),
    .O(rst_n_dht11_mux0000)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \dht11_driver/state_or00011  (
    .I0(\dht11_driver/state_FSM_FFd4_817 ),
    .I1(\dht11_driver/state_FSM_FFd6_821 ),
    .I2(\dht11_driver/state_FSM_FFd7_823 ),
    .I3(\dht11_driver/state_FSM_FFd5_819 ),
    .O(\dht11_driver/state_or0001 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \debounce_start/OUT_and00004  (
    .I0(\debounce_start/shift [4]),
    .I1(\debounce_start/shift [5]),
    .I2(\debounce_start/shift [6]),
    .I3(\debounce_start/shift [7]),
    .O(\debounce_start/OUT_and00004_207 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \debounce_start/OUT_and00009  (
    .I0(\debounce_start/shift [0]),
    .I1(\debounce_start/shift [1]),
    .I2(\debounce_start/shift [2]),
    .I3(\debounce_start/shift [3]),
    .O(\debounce_start/OUT_and00009_208 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \debounce_start/OUT_and000010  (
    .I0(\debounce_start/OUT_and00004_207 ),
    .I1(\debounce_start/OUT_and00009_208 ),
    .O(\debounce_start/OUT_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \debounce_rst/OUT_and00004  (
    .I0(\debounce_rst/shift [4]),
    .I1(\debounce_rst/shift [5]),
    .I2(\debounce_rst/shift [6]),
    .I3(\debounce_rst/shift [7]),
    .O(\debounce_rst/OUT_and00004_192 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \debounce_rst/OUT_and00009  (
    .I0(\debounce_rst/shift [0]),
    .I1(\debounce_rst/shift [1]),
    .I2(\debounce_rst/shift [2]),
    .I3(\debounce_rst/shift [3]),
    .O(\debounce_rst/OUT_and00009_193 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \debounce_rst/OUT_and000010  (
    .I0(\debounce_rst/OUT_and00004_192 ),
    .I1(\debounce_rst/OUT_and00009_193 ),
    .O(\debounce_rst/OUT_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \debounce_inc/OUT_and00004  (
    .I0(\debounce_inc/shift [4]),
    .I1(\debounce_inc/shift [5]),
    .I2(\debounce_inc/shift [6]),
    .I3(\debounce_inc/shift [7]),
    .O(\debounce_inc/OUT_and00004_177 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \debounce_inc/OUT_and00009  (
    .I0(\debounce_inc/shift [0]),
    .I1(\debounce_inc/shift [1]),
    .I2(\debounce_inc/shift [2]),
    .I3(\debounce_inc/shift [3]),
    .O(\debounce_inc/OUT_and00009_178 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \debounce_inc/OUT_and000010  (
    .I0(\debounce_inc/OUT_and00004_177 ),
    .I1(\debounce_inc/OUT_and00009_178 ),
    .O(\debounce_inc/OUT_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \debounce_start/OUT_or0000_inv12  (
    .I0(\debounce_start/shift [4]),
    .I1(\debounce_start/shift [5]),
    .I2(\debounce_start/shift [6]),
    .I3(\debounce_start/shift [7]),
    .O(\debounce_start/OUT_or0000_inv12_210 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \debounce_start/OUT_or0000_inv25  (
    .I0(\debounce_start/shift [0]),
    .I1(\debounce_start/shift [1]),
    .I2(\debounce_start/shift [2]),
    .I3(\debounce_start/shift [3]),
    .O(\debounce_start/OUT_or0000_inv25_211 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \debounce_start/OUT_or0000_inv26  (
    .I0(\debounce_start/OUT_or0000_inv12_210 ),
    .I1(\debounce_start/OUT_or0000_inv25_211 ),
    .O(\debounce_start/OUT_or0000_inv )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \debounce_rst/OUT_or0000_inv12  (
    .I0(\debounce_rst/shift [4]),
    .I1(\debounce_rst/shift [5]),
    .I2(\debounce_rst/shift [6]),
    .I3(\debounce_rst/shift [7]),
    .O(\debounce_rst/OUT_or0000_inv12_195 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \debounce_rst/OUT_or0000_inv25  (
    .I0(\debounce_rst/shift [0]),
    .I1(\debounce_rst/shift [1]),
    .I2(\debounce_rst/shift [2]),
    .I3(\debounce_rst/shift [3]),
    .O(\debounce_rst/OUT_or0000_inv25_196 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \debounce_rst/OUT_or0000_inv26  (
    .I0(\debounce_rst/OUT_or0000_inv12_195 ),
    .I1(\debounce_rst/OUT_or0000_inv25_196 ),
    .O(\debounce_rst/OUT_or0000_inv )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \debounce_inc/OUT_or0000_inv12  (
    .I0(\debounce_inc/shift [4]),
    .I1(\debounce_inc/shift [5]),
    .I2(\debounce_inc/shift [6]),
    .I3(\debounce_inc/shift [7]),
    .O(\debounce_inc/OUT_or0000_inv12_180 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \debounce_inc/OUT_or0000_inv25  (
    .I0(\debounce_inc/shift [0]),
    .I1(\debounce_inc/shift [1]),
    .I2(\debounce_inc/shift [2]),
    .I3(\debounce_inc/shift [3]),
    .O(\debounce_inc/OUT_or0000_inv25_181 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \debounce_inc/OUT_or0000_inv26  (
    .I0(\debounce_inc/OUT_or0000_inv12_180 ),
    .I1(\debounce_inc/OUT_or0000_inv25_181 ),
    .O(\debounce_inc/OUT_or0000_inv )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \dht11_driver/data_4_and000211  (
    .I0(\dht11_driver/data_count [0]),
    .I1(\dht11_driver/data_count [4]),
    .I2(\dht11_driver/data_count [2]),
    .O(N20)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dht11_driver/data_21_and000211  (
    .I0(\dht11_driver/data_count [0]),
    .I1(\dht11_driver/data_count [4]),
    .I2(\dht11_driver/data_count [2]),
    .O(N18)
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \dht11_driver/data_20_and000211  (
    .I0(\dht11_driver/data_count [0]),
    .I1(\dht11_driver/data_count [4]),
    .I2(\dht11_driver/data_count [2]),
    .O(N19)
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \dht11_driver/data_1_and000211  (
    .I0(\dht11_driver/data_count [4]),
    .I1(\dht11_driver/data_count [2]),
    .I2(\dht11_driver/data_count [0]),
    .O(N23)
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \dht11_driver/data_18_and000211  (
    .I0(\dht11_driver/data_count [5]),
    .I1(\dht11_driver/data_count [3]),
    .I2(\dht11_driver/data_count [1]),
    .O(N4)
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \dht11_driver/data_17_and000211  (
    .I0(\dht11_driver/data_count [2]),
    .I1(\dht11_driver/data_count [4]),
    .I2(\dht11_driver/data_count [0]),
    .O(N21)
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \dht11_driver/data_16_and000211  (
    .I0(\dht11_driver/data_count [0]),
    .I1(\dht11_driver/data_count [2]),
    .I2(\dht11_driver/data_count [4]),
    .O(N22)
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \dht11_driver/data_0_and000221  (
    .I0(\dht11_driver/data_count [0]),
    .I1(\dht11_driver/data_count [4]),
    .I2(\dht11_driver/data_count [2]),
    .O(N24)
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \dht11_driver/data_0_and000211  (
    .I0(\dht11_driver/data_count [5]),
    .I1(\dht11_driver/data_count [3]),
    .I2(\dht11_driver/data_count [1]),
    .O(N5)
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  \dht11_driver/state_FSM_FFd6-In1  (
    .I0(N43),
    .I1(\dht11_driver/state_FSM_FFd7_823 ),
    .I2(\dht11_driver/state_FSM_FFd6_821 ),
    .O(\dht11_driver/state_FSM_FFd6-In )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \dht11_driver/state_FSM_FFd5-In1  (
    .I0(N43),
    .I1(\dht11_driver/state_FSM_FFd6_821 ),
    .I2(\dht11_driver/state_FSM_FFd5_819 ),
    .O(\dht11_driver/state_FSM_FFd5-In )
  );
  LUT4 #(
    .INIT ( 16'h6240 ))
  \sevenSegementDec/inp_mux0000<3>17  (
    .I0(\sevenSegementDec/output_select [1]),
    .I1(\sevenSegementDec/output_select [2]),
    .I2(LCD_3[3]),
    .I3(LCD_1[3]),
    .O(\sevenSegementDec/inp_mux0000<3>17_1380 )
  );
  LUT4 #(
    .INIT ( 16'h6240 ))
  \sevenSegementDec/inp_mux0000<2>17  (
    .I0(\sevenSegementDec/output_select [1]),
    .I1(\sevenSegementDec/output_select [2]),
    .I2(LCD_3[2]),
    .I3(LCD_1[2]),
    .O(\sevenSegementDec/inp_mux0000<2>17_1378 )
  );
  LUT4 #(
    .INIT ( 16'h6240 ))
  \sevenSegementDec/inp_mux0000<1>17  (
    .I0(\sevenSegementDec/output_select [1]),
    .I1(\sevenSegementDec/output_select [2]),
    .I2(LCD_3[1]),
    .I3(LCD_1[1]),
    .O(\sevenSegementDec/inp_mux0000<1>17_1376 )
  );
  LUT4 #(
    .INIT ( 16'h6240 ))
  \sevenSegementDec/inp_mux0000<0>17  (
    .I0(\sevenSegementDec/output_select [1]),
    .I1(\sevenSegementDec/output_select [2]),
    .I2(LCD_3[0]),
    .I3(LCD_1[0]),
    .O(\sevenSegementDec/inp_mux0000<0>17_1374 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \sevenSegementDec/inp_and00001  (
    .I0(\debounce_rst/OUT_190 ),
    .I1(\sevenSegementDec/output_select_cmp_eq0000 ),
    .O(\sevenSegementDec/inp_and0000 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \sevenSegementDec/Mcount_counter_eqn_01  (
    .I0(\sevenSegementDec/Result [0]),
    .I1(\sevenSegementDec/output_select_cmp_eq0000 ),
    .O(\sevenSegementDec/Mcount_counter_eqn_0 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \sevenSegementDec/Mcount_counter_eqn_110  (
    .I0(\sevenSegementDec/Result [1]),
    .I1(\sevenSegementDec/output_select_cmp_eq0000 ),
    .O(\sevenSegementDec/Mcount_counter_eqn_1 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \sevenSegementDec/Mcount_counter_eqn_210  (
    .I0(\sevenSegementDec/Result [2]),
    .I1(\sevenSegementDec/output_select_cmp_eq0000 ),
    .O(\sevenSegementDec/Mcount_counter_eqn_2 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \dht11_driver/Mtrien_data_out_mux00001  (
    .I0(\dht11_driver/state_FSM_FFd11_811 ),
    .I1(\dht11_driver/state_FSM_FFd9_827 ),
    .I2(\dht11_driver/state_cmp_eq0001 ),
    .O(\dht11_driver/Mtrien_data_out_mux0000 )
  );
  LUT3 #(
    .INIT ( 8'hF1 ))
  \dht11_driver/Mtridata_data_out_mux00001  (
    .I0(\dht11_driver/state_FSM_FFd9_827 ),
    .I1(\dht11_driver/state_cmp_eq0001 ),
    .I2(\dht11_driver/state_FSM_FFd11_811 ),
    .O(\dht11_driver/Mtridata_data_out_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h8F88 ))
  \dht11_driver/state_FSM_FFd9-In1  (
    .I0(start_dht11_capture),
    .I1(\dht11_driver/state_FSM_FFd10_809 ),
    .I2(\dht11_driver/state_cmp_eq0000 ),
    .I3(\dht11_driver/state_FSM_FFd9_827 ),
    .O(\dht11_driver/state_FSM_FFd9-In )
  );
  LUT4 #(
    .INIT ( 16'h8F88 ))
  \dht11_driver/state_FSM_FFd8-In1  (
    .I0(N129),
    .I1(\dht11_driver/state_FSM_FFd9_827 ),
    .I2(\dht11_driver/state_cmp_eq0001 ),
    .I3(\dht11_driver/state_FSM_FFd8_825 ),
    .O(\dht11_driver/state_FSM_FFd8-In )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \dht11_driver/state_FSM_FFd7-In1  (
    .I0(N43),
    .I1(\dht11_driver/state_FSM_FFd7_823 ),
    .I2(\dht11_driver/state_cmp_eq0001 ),
    .I3(\dht11_driver/state_FSM_FFd8_825 ),
    .O(\dht11_driver/state_FSM_FFd7-In )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \dht11_driver/direction_mux0000_SW0  (
    .I0(\dht11_driver/state_FSM_FFd11_811 ),
    .I1(\dht11_driver/state_FSM_FFd9_827 ),
    .O(N34)
  );
  LUT4 #(
    .INIT ( 16'hF2A2 ))
  \dht11_driver/direction_mux0000  (
    .I0(\dht11_driver/direction_692 ),
    .I1(N34),
    .I2(\dht11_driver/state_FSM_FFd8_825 ),
    .I3(\dht11_driver/state_cmp_eq0001 ),
    .O(\dht11_driver/direction_mux0000_693 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \sevenSegementDec/Mcount_counter_eqn_32  (
    .I0(\sevenSegementDec/Result [3]),
    .I1(\sevenSegementDec/output_select_cmp_eq0000 ),
    .O(\sevenSegementDec/Mcount_counter_eqn_3 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \dht11_driver/data_outLogicTrst1  (
    .I0(\dht11_driver/Mtridata_data_out_457 ),
    .I1(\dht11_driver/Mtrien_data_out_460 ),
    .O(\dht11_driver/data_out )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \sevenSegementDec/Mcount_counter_eqn_41  (
    .I0(\sevenSegementDec/Result [4]),
    .I1(\sevenSegementDec/output_select_cmp_eq0000 ),
    .O(\sevenSegementDec/Mcount_counter_eqn_4 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \sevenSegementDec/Mcount_counter_eqn_51  (
    .I0(\sevenSegementDec/Result [5]),
    .I1(\sevenSegementDec/output_select_cmp_eq0000 ),
    .O(\sevenSegementDec/Mcount_counter_eqn_5 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \sevenSegementDec/Mcount_counter_eqn_61  (
    .I0(\sevenSegementDec/Result [6]),
    .I1(\sevenSegementDec/output_select_cmp_eq0000 ),
    .O(\sevenSegementDec/Mcount_counter_eqn_6 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \sevenSegementDec/Mcount_counter_eqn_71  (
    .I0(\sevenSegementDec/Result [7]),
    .I1(\sevenSegementDec/output_select_cmp_eq0000 ),
    .O(\sevenSegementDec/Mcount_counter_eqn_7 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \sevenSegementDec/Mcount_counter_eqn_81  (
    .I0(\sevenSegementDec/Result [8]),
    .I1(\sevenSegementDec/output_select_cmp_eq0000 ),
    .O(\sevenSegementDec/Mcount_counter_eqn_8 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \sevenSegementDec/Mcount_counter_eqn_91  (
    .I0(\sevenSegementDec/Result [9]),
    .I1(\sevenSegementDec/output_select_cmp_eq0000 ),
    .O(\sevenSegementDec/Mcount_counter_eqn_9 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \sevenSegementDec/Mcount_counter_eqn_101  (
    .I0(\sevenSegementDec/Result [10]),
    .I1(\sevenSegementDec/output_select_cmp_eq0000 ),
    .O(\sevenSegementDec/Mcount_counter_eqn_10 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \dht11_driver/state_cmp_eq000211  (
    .I0(\dht11_driver/data_count [4]),
    .I1(\dht11_driver/data_count [2]),
    .I2(\dht11_driver/data_count [0]),
    .O(N17)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \sevenSegementDec/Mcount_counter_eqn_111  (
    .I0(\sevenSegementDec/Result [11]),
    .I1(\sevenSegementDec/output_select_cmp_eq0000 ),
    .O(\sevenSegementDec/Mcount_counter_eqn_11 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \sevenSegementDec/Mcount_counter_eqn_121  (
    .I0(\sevenSegementDec/Result [12]),
    .I1(\sevenSegementDec/output_select_cmp_eq0000 ),
    .O(\sevenSegementDec/Mcount_counter_eqn_12 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \sevenSegementDec/Mcount_counter_eqn_131  (
    .I0(\sevenSegementDec/Result [13]),
    .I1(\sevenSegementDec/output_select_cmp_eq0000 ),
    .O(\sevenSegementDec/Mcount_counter_eqn_13 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \sevenSegementDec/Mcount_counter_eqn_141  (
    .I0(\sevenSegementDec/Result [14]),
    .I1(\sevenSegementDec/output_select_cmp_eq0000 ),
    .O(\sevenSegementDec/Mcount_counter_eqn_14 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \sevenSegementDec/Mcount_counter_eqn_151  (
    .I0(\sevenSegementDec/Result [15]),
    .I1(\sevenSegementDec/output_select_cmp_eq0000 ),
    .O(\sevenSegementDec/Mcount_counter_eqn_15 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \sevenSegementDec/Mcount_counter_eqn_161  (
    .I0(\sevenSegementDec/Result [16]),
    .I1(\sevenSegementDec/output_select_cmp_eq0000 ),
    .O(\sevenSegementDec/Mcount_counter_eqn_16 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dht11_driver/state_FSM_FFd11-In_SW0  (
    .I0(start_dht11_capture),
    .I1(\dht11_driver/state_FSM_FFd1_807 ),
    .I2(\dht11_driver/state_FSM_FFd11_811 ),
    .O(N36)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \sevenSegementDec/Mcount_counter_eqn_171  (
    .I0(\sevenSegementDec/Result [17]),
    .I1(\sevenSegementDec/output_select_cmp_eq0000 ),
    .O(\sevenSegementDec/Mcount_counter_eqn_17 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \dht11_driver/state_cmp_eq00004  (
    .I0(\dht11_driver/clock_count [5]),
    .I1(\dht11_driver/clock_count [13]),
    .I2(\dht11_driver/clock_count [14]),
    .I3(\dht11_driver/clock_count [10]),
    .O(\dht11_driver/state_cmp_eq00004_844 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \sevenSegementDec/Mcount_counter_eqn_181  (
    .I0(\sevenSegementDec/Result [18]),
    .I1(\sevenSegementDec/output_select_cmp_eq0000 ),
    .O(\sevenSegementDec/Mcount_counter_eqn_18 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \sevenSegementDec/Mcount_counter_eqn_191  (
    .I0(\sevenSegementDec/Result [19]),
    .I1(\sevenSegementDec/output_select_cmp_eq0000 ),
    .O(\sevenSegementDec/Mcount_counter_eqn_19 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \sevenSegementDec/Mcount_counter_eqn_201  (
    .I0(\sevenSegementDec/Result [20]),
    .I1(\sevenSegementDec/output_select_cmp_eq0000 ),
    .O(\sevenSegementDec/Mcount_counter_eqn_20 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \sevenSegementDec/Mcount_counter_eqn_211  (
    .I0(\sevenSegementDec/Result [21]),
    .I1(\sevenSegementDec/output_select_cmp_eq0000 ),
    .O(\sevenSegementDec/Mcount_counter_eqn_21 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \sevenSegementDec/Mcount_counter_eqn_221  (
    .I0(\sevenSegementDec/Result [22]),
    .I1(\sevenSegementDec/output_select_cmp_eq0000 ),
    .O(\sevenSegementDec/Mcount_counter_eqn_22 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \dht11_driver/state_cmp_eq00012  (
    .I0(\dht11_driver/clock_count [2]),
    .I1(\dht11_driver/clock_count [5]),
    .O(\dht11_driver/state_cmp_eq00012_847 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \dht11_driver/state_cmp_eq000134  (
    .I0(\dht11_driver/clock_count [10]),
    .I1(\dht11_driver/state_cmp_eq000120_848 ),
    .I2(\dht11_driver/state_cmp_eq00012_847 ),
    .I3(\dht11_driver/state_cmp_eq00001_wg_cy [6]),
    .O(\dht11_driver/state_cmp_eq0001 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \sevenSegementDec/Mcount_counter_eqn_231  (
    .I0(\sevenSegementDec/Result [23]),
    .I1(\sevenSegementDec/output_select_cmp_eq0000 ),
    .O(\sevenSegementDec/Mcount_counter_eqn_23 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \sevenSegementDec/Mcount_counter_eqn_241  (
    .I0(\sevenSegementDec/Result [24]),
    .I1(\sevenSegementDec/output_select_cmp_eq0000 ),
    .O(\sevenSegementDec/Mcount_counter_eqn_24 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \sevenSegementDec/Mcount_counter_eqn_251  (
    .I0(\sevenSegementDec/output_select_cmp_eq0000 ),
    .I1(\sevenSegementDec/Result [25]),
    .O(\sevenSegementDec/Mcount_counter_eqn_25 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \sevenSegementDec/Mcount_counter_eqn_261  (
    .I0(\sevenSegementDec/output_select_cmp_eq0000 ),
    .I1(\sevenSegementDec/Result [26]),
    .O(\sevenSegementDec/Mcount_counter_eqn_26 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dht11_driver/data_7_not00011  (
    .I0(N4),
    .I1(N17),
    .I2(N130),
    .O(\dht11_driver/data_7_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dht11_driver/data_6_not00011  (
    .I0(N20),
    .I1(N4),
    .I2(N2),
    .O(\dht11_driver/data_6_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dht11_driver/data_5_not00011  (
    .I0(N5),
    .I1(N17),
    .I2(N2),
    .O(\dht11_driver/data_5_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dht11_driver/data_4_not00011  (
    .I0(N20),
    .I1(N5),
    .I2(N2),
    .O(\dht11_driver/data_4_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dht11_driver/data_3_not00011  (
    .I0(N23),
    .I1(N4),
    .I2(N2),
    .O(\dht11_driver/data_3_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dht11_driver/data_2_not00011  (
    .I0(N24),
    .I1(N4),
    .I2(N2),
    .O(\dht11_driver/data_2_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dht11_driver/data_23_not00011  (
    .I0(N18),
    .I1(N4),
    .I2(N2),
    .O(\dht11_driver/data_23_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dht11_driver/data_22_not00011  (
    .I0(N19),
    .I1(N4),
    .I2(N2),
    .O(\dht11_driver/data_22_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dht11_driver/data_21_not00011  (
    .I0(N18),
    .I1(N5),
    .I2(N2),
    .O(\dht11_driver/data_21_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dht11_driver/data_20_not00011  (
    .I0(N19),
    .I1(N5),
    .I2(N2),
    .O(\dht11_driver/data_20_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dht11_driver/data_1_not00011  (
    .I0(N23),
    .I1(N5),
    .I2(N2),
    .O(\dht11_driver/data_1_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dht11_driver/data_19_not00011  (
    .I0(N21),
    .I1(N4),
    .I2(N2),
    .O(\dht11_driver/data_19_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dht11_driver/data_18_not00011  (
    .I0(N22),
    .I1(N4),
    .I2(N2),
    .O(\dht11_driver/data_18_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dht11_driver/data_17_not00011  (
    .I0(N21),
    .I1(N5),
    .I2(N2),
    .O(\dht11_driver/data_17_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dht11_driver/data_16_not00011  (
    .I0(N22),
    .I1(N5),
    .I2(N2),
    .O(\dht11_driver/data_16_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dht11_driver/data_0_not00011  (
    .I0(N24),
    .I1(N5),
    .I2(N2),
    .O(\dht11_driver/data_0_not0001 )
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \dht11_driver/data_count_mux0000<9>1  (
    .I0(\dht11_driver/data_count [22]),
    .I1(\dht11_driver/data_count_addsub0000 [22]),
    .I2(N1),
    .I3(N2),
    .O(\dht11_driver/data_count_mux0000 [9])
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \dht11_driver/data_count_mux0000<8>1  (
    .I0(\dht11_driver/data_count [23]),
    .I1(\dht11_driver/data_count_addsub0000 [23]),
    .I2(N1),
    .I3(N2),
    .O(\dht11_driver/data_count_mux0000 [8])
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \dht11_driver/data_count_mux0000<7>1  (
    .I0(\dht11_driver/data_count [24]),
    .I1(\dht11_driver/data_count_addsub0000 [24]),
    .I2(N1),
    .I3(N2),
    .O(\dht11_driver/data_count_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \dht11_driver/data_count_mux0000<6>1  (
    .I0(\dht11_driver/data_count [25]),
    .I1(\dht11_driver/data_count_addsub0000 [25]),
    .I2(N1),
    .I3(N2),
    .O(\dht11_driver/data_count_mux0000 [6])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \dht11_driver/data_count_mux0000<5>1  (
    .I0(\dht11_driver/data_count [26]),
    .I1(N132),
    .I2(\dht11_driver/data_count_addsub0000 [26]),
    .I3(N2),
    .O(\dht11_driver/data_count_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \dht11_driver/data_count_mux0000<31>1  (
    .I0(\dht11_driver/data_count [0]),
    .I1(\dht11_driver/data_count_addsub0000 [0]),
    .I2(N1),
    .I3(N2),
    .O(\dht11_driver/data_count_mux0000 [31])
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \dht11_driver/data_count_mux0000<30>1  (
    .I0(\dht11_driver/data_count [1]),
    .I1(\dht11_driver/data_count_addsub0000 [1]),
    .I2(N1),
    .I3(N2),
    .O(\dht11_driver/data_count_mux0000 [30])
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \dht11_driver/data_count_mux0000<29>1  (
    .I0(\dht11_driver/data_count [2]),
    .I1(\dht11_driver/data_count_addsub0000 [2]),
    .I2(N1),
    .I3(N2),
    .O(\dht11_driver/data_count_mux0000 [29])
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \dht11_driver/data_count_mux0000<28>1  (
    .I0(\dht11_driver/data_count [3]),
    .I1(\dht11_driver/data_count_addsub0000 [3]),
    .I2(N1),
    .I3(N2),
    .O(\dht11_driver/data_count_mux0000 [28])
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \dht11_driver/data_count_mux0000<27>1  (
    .I0(\dht11_driver/data_count [4]),
    .I1(\dht11_driver/data_count_addsub0000 [4]),
    .I2(N1),
    .I3(N2),
    .O(\dht11_driver/data_count_mux0000 [27])
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \dht11_driver/data_count_mux0000<26>1  (
    .I0(\dht11_driver/data_count [5]),
    .I1(\dht11_driver/data_count_addsub0000 [5]),
    .I2(N1),
    .I3(N2),
    .O(\dht11_driver/data_count_mux0000 [26])
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \dht11_driver/data_count_mux0000<25>1  (
    .I0(\dht11_driver/data_count [6]),
    .I1(\dht11_driver/data_count_addsub0000 [6]),
    .I2(N1),
    .I3(N2),
    .O(\dht11_driver/data_count_mux0000 [25])
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \dht11_driver/data_count_mux0000<24>1  (
    .I0(\dht11_driver/data_count [7]),
    .I1(\dht11_driver/data_count_addsub0000 [7]),
    .I2(N1),
    .I3(N2),
    .O(\dht11_driver/data_count_mux0000 [24])
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \dht11_driver/data_count_mux0000<23>1  (
    .I0(\dht11_driver/data_count [8]),
    .I1(\dht11_driver/data_count_addsub0000 [8]),
    .I2(N1),
    .I3(N2),
    .O(\dht11_driver/data_count_mux0000 [23])
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \dht11_driver/data_count_mux0000<22>1  (
    .I0(\dht11_driver/data_count [9]),
    .I1(\dht11_driver/data_count_addsub0000 [9]),
    .I2(N1),
    .I3(N2),
    .O(\dht11_driver/data_count_mux0000 [22])
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \dht11_driver/data_count_mux0000<21>1  (
    .I0(\dht11_driver/data_count [10]),
    .I1(\dht11_driver/data_count_addsub0000 [10]),
    .I2(N1),
    .I3(N2),
    .O(\dht11_driver/data_count_mux0000 [21])
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \dht11_driver/data_count_mux0000<20>1  (
    .I0(\dht11_driver/data_count [11]),
    .I1(\dht11_driver/data_count_addsub0000 [11]),
    .I2(N1),
    .I3(N2),
    .O(\dht11_driver/data_count_mux0000 [20])
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \dht11_driver/data_count_mux0000<19>1  (
    .I0(\dht11_driver/data_count [12]),
    .I1(\dht11_driver/data_count_addsub0000 [12]),
    .I2(N1),
    .I3(N2),
    .O(\dht11_driver/data_count_mux0000 [19])
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \dht11_driver/data_count_mux0000<18>1  (
    .I0(\dht11_driver/data_count [13]),
    .I1(\dht11_driver/data_count_addsub0000 [13]),
    .I2(N1),
    .I3(N2),
    .O(\dht11_driver/data_count_mux0000 [18])
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \dht11_driver/data_count_mux0000<17>1  (
    .I0(\dht11_driver/data_count [14]),
    .I1(\dht11_driver/data_count_addsub0000 [14]),
    .I2(N1),
    .I3(N2),
    .O(\dht11_driver/data_count_mux0000 [17])
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \dht11_driver/data_count_mux0000<16>1  (
    .I0(\dht11_driver/data_count [15]),
    .I1(\dht11_driver/data_count_addsub0000 [15]),
    .I2(N1),
    .I3(N2),
    .O(\dht11_driver/data_count_mux0000 [16])
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \dht11_driver/data_count_mux0000<15>1  (
    .I0(\dht11_driver/data_count [16]),
    .I1(\dht11_driver/data_count_addsub0000 [16]),
    .I2(N1),
    .I3(N2),
    .O(\dht11_driver/data_count_mux0000 [15])
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \dht11_driver/data_count_mux0000<14>1  (
    .I0(\dht11_driver/data_count [17]),
    .I1(\dht11_driver/data_count_addsub0000 [17]),
    .I2(N1),
    .I3(N2),
    .O(\dht11_driver/data_count_mux0000 [14])
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \dht11_driver/data_count_mux0000<13>1  (
    .I0(\dht11_driver/data_count [18]),
    .I1(\dht11_driver/data_count_addsub0000 [18]),
    .I2(N1),
    .I3(N2),
    .O(\dht11_driver/data_count_mux0000 [13])
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \dht11_driver/data_count_mux0000<12>1  (
    .I0(\dht11_driver/data_count [19]),
    .I1(\dht11_driver/data_count_addsub0000 [19]),
    .I2(N1),
    .I3(N2),
    .O(\dht11_driver/data_count_mux0000 [12])
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \dht11_driver/data_count_mux0000<11>1  (
    .I0(\dht11_driver/data_count [20]),
    .I1(\dht11_driver/data_count_addsub0000 [20]),
    .I2(N1),
    .I3(N2),
    .O(\dht11_driver/data_count_mux0000 [11])
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \dht11_driver/data_count_mux0000<10>1  (
    .I0(\dht11_driver/data_count [21]),
    .I1(\dht11_driver/data_count_addsub0000 [21]),
    .I2(N1),
    .I3(N2),
    .O(\dht11_driver/data_count_mux0000 [10])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \sevenSegementDec/Mcount_counter_eqn_271  (
    .I0(\sevenSegementDec/output_select_cmp_eq0000 ),
    .I1(\sevenSegementDec/Result [27]),
    .O(\sevenSegementDec/Mcount_counter_eqn_27 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \dht11_driver/data_count_mux0000<4>1  (
    .I0(\dht11_driver/data_count [27]),
    .I1(N1),
    .I2(\dht11_driver/data_count_addsub0000 [27]),
    .I3(N2),
    .O(\dht11_driver/data_count_mux0000 [4])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \sevenSegementDec/Mcount_counter_eqn_281  (
    .I0(\sevenSegementDec/output_select_cmp_eq0000 ),
    .I1(\sevenSegementDec/Result [28]),
    .O(\sevenSegementDec/Mcount_counter_eqn_28 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \dht11_driver/data_count_mux0000<3>1  (
    .I0(\dht11_driver/data_count [28]),
    .I1(N1),
    .I2(N2),
    .I3(\dht11_driver/data_count_addsub0000 [28]),
    .O(\dht11_driver/data_count_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \sevenSegementDec/Mcount_counter_eqn_291  (
    .I0(\sevenSegementDec/output_select_cmp_eq0000 ),
    .I1(\sevenSegementDec/Result [29]),
    .O(\sevenSegementDec/Mcount_counter_eqn_29 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \dht11_driver/data_count_mux0000<2>1  (
    .I0(\dht11_driver/data_count [29]),
    .I1(N1),
    .I2(N2),
    .I3(\dht11_driver/data_count_addsub0000 [29]),
    .O(\dht11_driver/data_count_mux0000 [2])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \sevenSegementDec/Mcount_counter_eqn_301  (
    .I0(\sevenSegementDec/output_select_cmp_eq0000 ),
    .I1(\sevenSegementDec/Result [30]),
    .O(\sevenSegementDec/Mcount_counter_eqn_30 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \dht11_driver/data_count_mux0000<1>1  (
    .I0(\dht11_driver/data_count [30]),
    .I1(N1),
    .I2(N2),
    .I3(\dht11_driver/data_count_addsub0000 [30]),
    .O(\dht11_driver/data_count_mux0000 [1])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \sevenSegementDec/Mcount_counter_eqn_311  (
    .I0(\sevenSegementDec/output_select_cmp_eq0000 ),
    .I1(\sevenSegementDec/Result [31]),
    .O(\sevenSegementDec/Mcount_counter_eqn_31 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \dht11_driver/data_count_mux0000<0>1  (
    .I0(\dht11_driver/data_count [31]),
    .I1(N1),
    .I2(N2),
    .I3(\dht11_driver/data_count_addsub0000 [31]),
    .O(\dht11_driver/data_count_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \dht11_driver/clock_count_mux0000<9>1  (
    .I0(\dht11_driver/clock_count [22]),
    .I1(\dht11_driver/clock_count_or0000 ),
    .I2(\dht11_driver/clock_count_share0000 [22]),
    .I3(N133),
    .O(\dht11_driver/clock_count_mux0000 [9])
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \dht11_driver/clock_count_mux0000<8>1  (
    .I0(\dht11_driver/clock_count [23]),
    .I1(\dht11_driver/clock_count_or0000 ),
    .I2(\dht11_driver/clock_count_share0000 [23]),
    .I3(\dht11_driver/clock_count_mux0000<0>127_496 ),
    .O(\dht11_driver/clock_count_mux0000 [8])
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \dht11_driver/clock_count_mux0000<7>1  (
    .I0(\dht11_driver/clock_count [24]),
    .I1(\dht11_driver/clock_count_or0000 ),
    .I2(\dht11_driver/clock_count_share0000 [24]),
    .I3(\dht11_driver/clock_count_mux0000<0>127_496 ),
    .O(\dht11_driver/clock_count_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \dht11_driver/clock_count_mux0000<6>1  (
    .I0(\dht11_driver/clock_count [25]),
    .I1(\dht11_driver/clock_count_or0000 ),
    .I2(\dht11_driver/clock_count_share0000 [25]),
    .I3(\dht11_driver/clock_count_mux0000<0>127_496 ),
    .O(\dht11_driver/clock_count_mux0000 [6])
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \dht11_driver/clock_count_mux0000<5>1  (
    .I0(\dht11_driver/clock_count [26]),
    .I1(\dht11_driver/clock_count_or0000 ),
    .I2(\dht11_driver/clock_count_share0000 [26]),
    .I3(\dht11_driver/clock_count_mux0000<0>127_496 ),
    .O(\dht11_driver/clock_count_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \dht11_driver/clock_count_mux0000<4>1  (
    .I0(\dht11_driver/clock_count [27]),
    .I1(\dht11_driver/clock_count_or0000 ),
    .I2(\dht11_driver/clock_count_share0000 [27]),
    .I3(\dht11_driver/clock_count_mux0000<0>127_496 ),
    .O(\dht11_driver/clock_count_mux0000 [4])
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \dht11_driver/clock_count_mux0000<3>1  (
    .I0(\dht11_driver/clock_count [28]),
    .I1(\dht11_driver/clock_count_or0000 ),
    .I2(\dht11_driver/clock_count_share0000 [28]),
    .I3(\dht11_driver/clock_count_mux0000<0>127_496 ),
    .O(\dht11_driver/clock_count_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \dht11_driver/clock_count_mux0000<31>1  (
    .I0(\dht11_driver/clock_count [0]),
    .I1(\dht11_driver/clock_count_share0000 [0]),
    .I2(\dht11_driver/clock_count_or0000 ),
    .I3(\dht11_driver/clock_count_mux0000<0>127_496 ),
    .O(\dht11_driver/clock_count_mux0000 [31])
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \dht11_driver/clock_count_mux0000<30>1  (
    .I0(\dht11_driver/clock_count [1]),
    .I1(\dht11_driver/clock_count_share0000 [1]),
    .I2(\dht11_driver/clock_count_or0000 ),
    .I3(\dht11_driver/clock_count_mux0000<0>127_496 ),
    .O(\dht11_driver/clock_count_mux0000 [30])
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \dht11_driver/clock_count_mux0000<2>1  (
    .I0(\dht11_driver/clock_count [29]),
    .I1(\dht11_driver/clock_count_or0000 ),
    .I2(\dht11_driver/clock_count_share0000 [29]),
    .I3(\dht11_driver/clock_count_mux0000<0>127_496 ),
    .O(\dht11_driver/clock_count_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \dht11_driver/clock_count_mux0000<29>1  (
    .I0(\dht11_driver/clock_count [2]),
    .I1(\dht11_driver/clock_count_share0000 [2]),
    .I2(\dht11_driver/clock_count_or0000 ),
    .I3(\dht11_driver/clock_count_mux0000<0>127_496 ),
    .O(\dht11_driver/clock_count_mux0000 [29])
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \dht11_driver/clock_count_mux0000<28>1  (
    .I0(\dht11_driver/clock_count [3]),
    .I1(\dht11_driver/clock_count_share0000 [3]),
    .I2(\dht11_driver/clock_count_or0000 ),
    .I3(\dht11_driver/clock_count_mux0000<0>127_496 ),
    .O(\dht11_driver/clock_count_mux0000 [28])
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \dht11_driver/clock_count_mux0000<27>1  (
    .I0(\dht11_driver/clock_count [4]),
    .I1(\dht11_driver/clock_count_share0000 [4]),
    .I2(\dht11_driver/clock_count_or0000 ),
    .I3(\dht11_driver/clock_count_mux0000<0>127_496 ),
    .O(\dht11_driver/clock_count_mux0000 [27])
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \dht11_driver/clock_count_mux0000<26>1  (
    .I0(\dht11_driver/clock_count [5]),
    .I1(\dht11_driver/clock_count_share0000 [5]),
    .I2(\dht11_driver/clock_count_or0000 ),
    .I3(\dht11_driver/clock_count_mux0000<0>127_496 ),
    .O(\dht11_driver/clock_count_mux0000 [26])
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \dht11_driver/clock_count_mux0000<25>1  (
    .I0(\dht11_driver/clock_count [6]),
    .I1(\dht11_driver/clock_count_share0000 [6]),
    .I2(\dht11_driver/clock_count_or0000 ),
    .I3(\dht11_driver/clock_count_mux0000<0>127_496 ),
    .O(\dht11_driver/clock_count_mux0000 [25])
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \dht11_driver/clock_count_mux0000<24>1  (
    .I0(\dht11_driver/clock_count [7]),
    .I1(\dht11_driver/clock_count_share0000 [7]),
    .I2(\dht11_driver/clock_count_or0000 ),
    .I3(\dht11_driver/clock_count_mux0000<0>127_496 ),
    .O(\dht11_driver/clock_count_mux0000 [24])
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \dht11_driver/clock_count_mux0000<23>1  (
    .I0(\dht11_driver/clock_count [8]),
    .I1(\dht11_driver/clock_count_share0000 [8]),
    .I2(\dht11_driver/clock_count_or0000 ),
    .I3(N0),
    .O(\dht11_driver/clock_count_mux0000 [23])
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \dht11_driver/clock_count_mux0000<22>1  (
    .I0(\dht11_driver/clock_count [9]),
    .I1(\dht11_driver/clock_count_share0000 [9]),
    .I2(\dht11_driver/clock_count_or0000 ),
    .I3(N131),
    .O(\dht11_driver/clock_count_mux0000 [22])
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \dht11_driver/clock_count_mux0000<21>1  (
    .I0(\dht11_driver/clock_count [10]),
    .I1(\dht11_driver/clock_count_share0000 [10]),
    .I2(\dht11_driver/clock_count_or0000 ),
    .I3(N0),
    .O(\dht11_driver/clock_count_mux0000 [21])
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \dht11_driver/clock_count_mux0000<20>1  (
    .I0(\dht11_driver/clock_count [11]),
    .I1(\dht11_driver/clock_count_share0000 [11]),
    .I2(\dht11_driver/clock_count_or0000 ),
    .I3(N0),
    .O(\dht11_driver/clock_count_mux0000 [20])
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \dht11_driver/clock_count_mux0000<1>1  (
    .I0(\dht11_driver/clock_count [30]),
    .I1(\dht11_driver/clock_count_or0000 ),
    .I2(\dht11_driver/clock_count_share0000 [30]),
    .I3(N0),
    .O(\dht11_driver/clock_count_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \dht11_driver/clock_count_mux0000<19>1  (
    .I0(\dht11_driver/clock_count [12]),
    .I1(\dht11_driver/clock_count_share0000 [12]),
    .I2(\dht11_driver/clock_count_or0000 ),
    .I3(N0),
    .O(\dht11_driver/clock_count_mux0000 [19])
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \dht11_driver/clock_count_mux0000<18>1  (
    .I0(\dht11_driver/clock_count [13]),
    .I1(\dht11_driver/clock_count_share0000 [13]),
    .I2(\dht11_driver/clock_count_or0000 ),
    .I3(N0),
    .O(\dht11_driver/clock_count_mux0000 [18])
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \dht11_driver/clock_count_mux0000<17>1  (
    .I0(\dht11_driver/clock_count [14]),
    .I1(\dht11_driver/clock_count_share0000 [14]),
    .I2(\dht11_driver/clock_count_or0000 ),
    .I3(N0),
    .O(\dht11_driver/clock_count_mux0000 [17])
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \dht11_driver/clock_count_mux0000<16>1  (
    .I0(\dht11_driver/clock_count [15]),
    .I1(\dht11_driver/clock_count_share0000 [15]),
    .I2(\dht11_driver/clock_count_or0000 ),
    .I3(N0),
    .O(\dht11_driver/clock_count_mux0000 [16])
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \dht11_driver/clock_count_mux0000<15>1  (
    .I0(\dht11_driver/clock_count [16]),
    .I1(\dht11_driver/clock_count_share0000 [16]),
    .I2(\dht11_driver/clock_count_or0000 ),
    .I3(N0),
    .O(\dht11_driver/clock_count_mux0000 [15])
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \dht11_driver/clock_count_mux0000<14>1  (
    .I0(\dht11_driver/clock_count [17]),
    .I1(\dht11_driver/clock_count_or0000 ),
    .I2(\dht11_driver/clock_count_share0000 [17]),
    .I3(N0),
    .O(\dht11_driver/clock_count_mux0000 [14])
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \dht11_driver/clock_count_mux0000<13>1  (
    .I0(\dht11_driver/clock_count [18]),
    .I1(\dht11_driver/clock_count_or0000 ),
    .I2(\dht11_driver/clock_count_share0000 [18]),
    .I3(N0),
    .O(\dht11_driver/clock_count_mux0000 [13])
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \dht11_driver/clock_count_mux0000<12>1  (
    .I0(\dht11_driver/clock_count [19]),
    .I1(\dht11_driver/clock_count_or0000 ),
    .I2(\dht11_driver/clock_count_share0000 [19]),
    .I3(N0),
    .O(\dht11_driver/clock_count_mux0000 [12])
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \dht11_driver/clock_count_mux0000<11>1  (
    .I0(\dht11_driver/clock_count [20]),
    .I1(\dht11_driver/clock_count_or0000 ),
    .I2(\dht11_driver/clock_count_share0000 [20]),
    .I3(N0),
    .O(\dht11_driver/clock_count_mux0000 [11])
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \dht11_driver/clock_count_mux0000<10>1  (
    .I0(\dht11_driver/clock_count [21]),
    .I1(\dht11_driver/clock_count_or0000 ),
    .I2(\dht11_driver/clock_count_share0000 [21]),
    .I3(N0),
    .O(\dht11_driver/clock_count_mux0000 [10])
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \dht11_driver/clock_count_mux0000<0>2  (
    .I0(\dht11_driver/clock_count [31]),
    .I1(\dht11_driver/clock_count_or0000 ),
    .I2(\dht11_driver/clock_count_share0000 [31]),
    .I3(N0),
    .O(\dht11_driver/clock_count_mux0000 [0])
  );
  IBUF   BTN_4_IBUF (
    .I(BTN[4]),
    .O(BTN_4_IBUF_6)
  );
  IBUF   BTN_1_IBUF (
    .I(BTN[1]),
    .O(BTN_1_IBUF_5)
  );
  IBUF   BTN_0_IBUF (
    .I(BTN[0]),
    .O(BTN_0_IBUF_4)
  );
  IOBUF   IO_P1_5_IOBUF (
    .I(\dht11_driver/data_out ),
    .T(\dht11_driver/direction_692 ),
    .O(N43),
    .IO(IO_P1_5)
  );
  OBUF   IO_P1_1_OBUF (
    .I(IO_P1_1_OBUF_8),
    .O(IO_P1_1)
  );
  OBUF   IO_P1_3_OBUF (
    .I(IO_P1_3_OBUF_10),
    .O(IO_P1_3)
  );
  OBUF   SevenSegment_7_OBUF (
    .I(SevenSegment_7_OBUF_165),
    .O(SevenSegment[7])
  );
  OBUF   SevenSegment_6_OBUF (
    .I(SevenSegment_6_OBUF_164),
    .O(SevenSegment[6])
  );
  OBUF   SevenSegment_5_OBUF (
    .I(SevenSegment_5_OBUF_163),
    .O(SevenSegment[5])
  );
  OBUF   SevenSegment_4_OBUF (
    .I(SevenSegment_4_OBUF_162),
    .O(SevenSegment[4])
  );
  OBUF   SevenSegment_3_OBUF (
    .I(SevenSegment_3_OBUF_161),
    .O(SevenSegment[3])
  );
  OBUF   SevenSegment_2_OBUF (
    .I(SevenSegment_2_OBUF_160),
    .O(SevenSegment[2])
  );
  OBUF   SevenSegment_1_OBUF (
    .I(SevenSegment_1_OBUF_159),
    .O(SevenSegment[1])
  );
  OBUF   SevenSegment_0_OBUF (
    .I(SevenSegment_0_OBUF_158),
    .O(SevenSegment[0])
  );
  OBUF   SevenSegment_Enable_2_OBUF (
    .I(\sevenSegementDec/output_select [2]),
    .O(SevenSegment_Enable[2])
  );
  OBUF   SevenSegment_Enable_1_OBUF (
    .I(\sevenSegementDec/output_select [1]),
    .O(SevenSegment_Enable[1])
  );
  OBUF   SevenSegment_Enable_0_OBUF (
    .I(\sevenSegementDec/output_select [0]),
    .O(SevenSegment_Enable[0])
  );
  OBUF   LED_7_OBUF (
    .I(\theNewCounter/counter_reg [0]),
    .O(LED[7])
  );
  OBUF   LED_6_OBUF (
    .I(\theNewCounter/counter_reg [1]),
    .O(LED[6])
  );
  OBUF   LED_5_OBUF (
    .I(\debounce_start/OUT_205 ),
    .O(LED[5])
  );
  OBUF   LED_4_OBUF (
    .I(\debounce_inc/OUT_175 ),
    .O(LED[4])
  );
  OBUF   LED_3_OBUF (
    .I(\dht11_driver/status [0]),
    .O(LED[3])
  );
  OBUF   LED_2_OBUF (
    .I(\dht11_driver/status [1]),
    .O(LED[2])
  );
  OBUF   LED_1_OBUF (
    .I(\dht11_driver/status [2]),
    .O(LED[1])
  );
  OBUF   LED_0_OBUF (
    .I(\dht11_driver/status [3]),
    .O(LED[0])
  );
  FDR   \debounce_start/shift_0  (
    .C(\freqdiv3/out_clk_reg_1203 ),
    .D(IO_P1_3_OBUF_10),
    .R(BTN_1_IBUF_5),
    .Q(\debounce_start/shift [0])
  );
  FDR   \debounce_inc/shift_0  (
    .C(\freqdiv3/out_clk_reg_1203 ),
    .D(IO_P1_3_OBUF_10),
    .R(BTN_0_IBUF_4),
    .Q(\debounce_inc/shift [0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \the10bitCounter/Mcount_counter_reg_cy<1>_rt  (
    .I0(\the10bitCounter/counter_reg [1]),
    .O(\the10bitCounter/Mcount_counter_reg_cy<1>_rt_1420 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \the10bitCounter/Mcount_counter_reg_cy<2>_rt  (
    .I0(\the10bitCounter/counter_reg [2]),
    .O(\the10bitCounter/Mcount_counter_reg_cy<2>_rt_1422 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \the10bitCounter/Mcount_counter_reg_cy<3>_rt  (
    .I0(\the10bitCounter/counter_reg [3]),
    .O(\the10bitCounter/Mcount_counter_reg_cy<3>_rt_1424 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \the10bitCounter/Mcount_counter_reg_cy<4>_rt  (
    .I0(\the10bitCounter/counter_reg [4]),
    .O(\the10bitCounter/Mcount_counter_reg_cy<4>_rt_1426 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \the10bitCounter/Mcount_counter_reg_cy<5>_rt  (
    .I0(\the10bitCounter/counter_reg [5]),
    .O(\the10bitCounter/Mcount_counter_reg_cy<5>_rt_1428 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \the10bitCounter/Mcount_counter_reg_cy<6>_rt  (
    .I0(\the10bitCounter/counter_reg [6]),
    .O(\the10bitCounter/Mcount_counter_reg_cy<6>_rt_1430 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \the10bitCounter/Mcount_counter_reg_cy<7>_rt  (
    .I0(\the10bitCounter/counter_reg [7]),
    .O(\the10bitCounter/Mcount_counter_reg_cy<7>_rt_1432 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \the10bitCounter/Mcount_counter_reg_cy<8>_rt  (
    .I0(\the10bitCounter/counter_reg [8]),
    .O(\the10bitCounter/Mcount_counter_reg_cy<8>_rt_1434 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Mcompar_state_cmp_gt0000_cy<5>_rt  (
    .I0(\dht11_driver/global_count [13]),
    .O(\dht11_driver/Mcompar_state_cmp_gt0000_cy<5>_rt_442 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Mcompar_state_cmp_gt0000_cy<1>_rt  (
    .I0(\dht11_driver/global_count [4]),
    .O(\dht11_driver/Mcompar_state_cmp_gt0000_cy<1>_rt_437 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_data_count_addsub0000_cy<30>_rt  (
    .I0(\dht11_driver/data_count [30]),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy<30>_rt_329 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_data_count_addsub0000_cy<29>_rt  (
    .I0(\dht11_driver/data_count [29]),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy<29>_rt_325 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_data_count_addsub0000_cy<28>_rt  (
    .I0(\dht11_driver/data_count [28]),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy<28>_rt_323 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_data_count_addsub0000_cy<27>_rt  (
    .I0(\dht11_driver/data_count [27]),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy<27>_rt_321 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_data_count_addsub0000_cy<26>_rt  (
    .I0(\dht11_driver/data_count [26]),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy<26>_rt_319 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_data_count_addsub0000_cy<25>_rt  (
    .I0(\dht11_driver/data_count [25]),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy<25>_rt_317 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_data_count_addsub0000_cy<24>_rt  (
    .I0(\dht11_driver/data_count [24]),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy<24>_rt_315 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_data_count_addsub0000_cy<23>_rt  (
    .I0(\dht11_driver/data_count [23]),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy<23>_rt_313 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_data_count_addsub0000_cy<22>_rt  (
    .I0(\dht11_driver/data_count [22]),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy<22>_rt_311 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_data_count_addsub0000_cy<21>_rt  (
    .I0(\dht11_driver/data_count [21]),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy<21>_rt_309 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_data_count_addsub0000_cy<20>_rt  (
    .I0(\dht11_driver/data_count [20]),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy<20>_rt_307 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_data_count_addsub0000_cy<19>_rt  (
    .I0(\dht11_driver/data_count [19]),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy<19>_rt_303 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_data_count_addsub0000_cy<18>_rt  (
    .I0(\dht11_driver/data_count [18]),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy<18>_rt_301 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_data_count_addsub0000_cy<17>_rt  (
    .I0(\dht11_driver/data_count [17]),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy<17>_rt_299 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_data_count_addsub0000_cy<16>_rt  (
    .I0(\dht11_driver/data_count [16]),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy<16>_rt_297 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_data_count_addsub0000_cy<15>_rt  (
    .I0(\dht11_driver/data_count [15]),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy<15>_rt_295 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_data_count_addsub0000_cy<14>_rt  (
    .I0(\dht11_driver/data_count [14]),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy<14>_rt_293 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_data_count_addsub0000_cy<13>_rt  (
    .I0(\dht11_driver/data_count [13]),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy<13>_rt_291 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_data_count_addsub0000_cy<12>_rt  (
    .I0(\dht11_driver/data_count [12]),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy<12>_rt_289 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_data_count_addsub0000_cy<11>_rt  (
    .I0(\dht11_driver/data_count [11]),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy<11>_rt_287 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_data_count_addsub0000_cy<10>_rt  (
    .I0(\dht11_driver/data_count [10]),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy<10>_rt_285 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_data_count_addsub0000_cy<9>_rt  (
    .I0(\dht11_driver/data_count [9]),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy<9>_rt_343 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_data_count_addsub0000_cy<8>_rt  (
    .I0(\dht11_driver/data_count [8]),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy<8>_rt_341 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_data_count_addsub0000_cy<7>_rt  (
    .I0(\dht11_driver/data_count [7]),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy<7>_rt_339 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_data_count_addsub0000_cy<6>_rt  (
    .I0(\dht11_driver/data_count [6]),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy<6>_rt_337 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_data_count_addsub0000_cy<5>_rt  (
    .I0(\dht11_driver/data_count [5]),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy<5>_rt_335 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_data_count_addsub0000_cy<4>_rt  (
    .I0(\dht11_driver/data_count [4]),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy<4>_rt_333 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_data_count_addsub0000_cy<3>_rt  (
    .I0(\dht11_driver/data_count [3]),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy<3>_rt_331 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_data_count_addsub0000_cy<2>_rt  (
    .I0(\dht11_driver/data_count [2]),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy<2>_rt_327 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_data_count_addsub0000_cy<1>_rt  (
    .I0(\dht11_driver/data_count [1]),
    .O(\dht11_driver/Madd_data_count_addsub0000_cy<1>_rt_305 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Mcompar_data_23_cmp_gt0000_cy<3>_rt  (
    .I0(\dht11_driver/clock_count [5]),
    .O(\dht11_driver/Mcompar_data_23_cmp_gt0000_cy<3>_rt_416 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Mcompar_data_23_cmp_gt0000_cy<1>_rt  (
    .I0(\dht11_driver/clock_count [3]),
    .O(\dht11_driver/Mcompar_data_23_cmp_gt0000_cy<1>_rt_413 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_clock_count_share0000_cy<30>_rt  (
    .I0(\dht11_driver/clock_count [30]),
    .O(\dht11_driver/Madd_clock_count_share0000_cy<30>_rt_266 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_clock_count_share0000_cy<29>_rt  (
    .I0(\dht11_driver/clock_count [29]),
    .O(\dht11_driver/Madd_clock_count_share0000_cy<29>_rt_262 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_clock_count_share0000_cy<28>_rt  (
    .I0(\dht11_driver/clock_count [28]),
    .O(\dht11_driver/Madd_clock_count_share0000_cy<28>_rt_260 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_clock_count_share0000_cy<27>_rt  (
    .I0(\dht11_driver/clock_count [27]),
    .O(\dht11_driver/Madd_clock_count_share0000_cy<27>_rt_258 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_clock_count_share0000_cy<26>_rt  (
    .I0(\dht11_driver/clock_count [26]),
    .O(\dht11_driver/Madd_clock_count_share0000_cy<26>_rt_256 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_clock_count_share0000_cy<25>_rt  (
    .I0(\dht11_driver/clock_count [25]),
    .O(\dht11_driver/Madd_clock_count_share0000_cy<25>_rt_254 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_clock_count_share0000_cy<24>_rt  (
    .I0(\dht11_driver/clock_count [24]),
    .O(\dht11_driver/Madd_clock_count_share0000_cy<24>_rt_252 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_clock_count_share0000_cy<23>_rt  (
    .I0(\dht11_driver/clock_count [23]),
    .O(\dht11_driver/Madd_clock_count_share0000_cy<23>_rt_250 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_clock_count_share0000_cy<22>_rt  (
    .I0(\dht11_driver/clock_count [22]),
    .O(\dht11_driver/Madd_clock_count_share0000_cy<22>_rt_248 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_clock_count_share0000_cy<21>_rt  (
    .I0(\dht11_driver/clock_count [21]),
    .O(\dht11_driver/Madd_clock_count_share0000_cy<21>_rt_246 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_clock_count_share0000_cy<20>_rt  (
    .I0(\dht11_driver/clock_count [20]),
    .O(\dht11_driver/Madd_clock_count_share0000_cy<20>_rt_244 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_clock_count_share0000_cy<19>_rt  (
    .I0(\dht11_driver/clock_count [19]),
    .O(\dht11_driver/Madd_clock_count_share0000_cy<19>_rt_240 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_clock_count_share0000_cy<18>_rt  (
    .I0(\dht11_driver/clock_count [18]),
    .O(\dht11_driver/Madd_clock_count_share0000_cy<18>_rt_238 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_clock_count_share0000_cy<17>_rt  (
    .I0(\dht11_driver/clock_count [17]),
    .O(\dht11_driver/Madd_clock_count_share0000_cy<17>_rt_236 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_clock_count_share0000_cy<16>_rt  (
    .I0(\dht11_driver/clock_count [16]),
    .O(\dht11_driver/Madd_clock_count_share0000_cy<16>_rt_234 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_clock_count_share0000_cy<15>_rt  (
    .I0(\dht11_driver/clock_count [15]),
    .O(\dht11_driver/Madd_clock_count_share0000_cy<15>_rt_232 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_clock_count_share0000_cy<14>_rt  (
    .I0(\dht11_driver/clock_count [14]),
    .O(\dht11_driver/Madd_clock_count_share0000_cy<14>_rt_230 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_clock_count_share0000_cy<13>_rt  (
    .I0(\dht11_driver/clock_count [13]),
    .O(\dht11_driver/Madd_clock_count_share0000_cy<13>_rt_228 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_clock_count_share0000_cy<12>_rt  (
    .I0(\dht11_driver/clock_count [12]),
    .O(\dht11_driver/Madd_clock_count_share0000_cy<12>_rt_226 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_clock_count_share0000_cy<11>_rt  (
    .I0(\dht11_driver/clock_count [11]),
    .O(\dht11_driver/Madd_clock_count_share0000_cy<11>_rt_224 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_clock_count_share0000_cy<10>_rt  (
    .I0(\dht11_driver/clock_count [10]),
    .O(\dht11_driver/Madd_clock_count_share0000_cy<10>_rt_222 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_clock_count_share0000_cy<9>_rt  (
    .I0(\dht11_driver/clock_count [9]),
    .O(\dht11_driver/Madd_clock_count_share0000_cy<9>_rt_280 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_clock_count_share0000_cy<8>_rt  (
    .I0(\dht11_driver/clock_count [8]),
    .O(\dht11_driver/Madd_clock_count_share0000_cy<8>_rt_278 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_clock_count_share0000_cy<7>_rt  (
    .I0(\dht11_driver/clock_count [7]),
    .O(\dht11_driver/Madd_clock_count_share0000_cy<7>_rt_276 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_clock_count_share0000_cy<6>_rt  (
    .I0(\dht11_driver/clock_count [6]),
    .O(\dht11_driver/Madd_clock_count_share0000_cy<6>_rt_274 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_clock_count_share0000_cy<5>_rt  (
    .I0(\dht11_driver/clock_count [5]),
    .O(\dht11_driver/Madd_clock_count_share0000_cy<5>_rt_272 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_clock_count_share0000_cy<4>_rt  (
    .I0(\dht11_driver/clock_count [4]),
    .O(\dht11_driver/Madd_clock_count_share0000_cy<4>_rt_270 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_clock_count_share0000_cy<3>_rt  (
    .I0(\dht11_driver/clock_count [3]),
    .O(\dht11_driver/Madd_clock_count_share0000_cy<3>_rt_268 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_clock_count_share0000_cy<2>_rt  (
    .I0(\dht11_driver/clock_count [2]),
    .O(\dht11_driver/Madd_clock_count_share0000_cy<2>_rt_264 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_clock_count_share0000_cy<1>_rt  (
    .I0(\dht11_driver/clock_count [1]),
    .O(\dht11_driver/Madd_clock_count_share0000_cy<1>_rt_242 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_global_count_addsub0000_cy<30>_rt  (
    .I0(\dht11_driver/global_count [30]),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy<30>_rt_392 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_global_count_addsub0000_cy<29>_rt  (
    .I0(\dht11_driver/global_count [29]),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy<29>_rt_388 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_global_count_addsub0000_cy<28>_rt  (
    .I0(\dht11_driver/global_count [28]),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy<28>_rt_386 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_global_count_addsub0000_cy<27>_rt  (
    .I0(\dht11_driver/global_count [27]),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy<27>_rt_384 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_global_count_addsub0000_cy<26>_rt  (
    .I0(\dht11_driver/global_count [26]),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy<26>_rt_382 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_global_count_addsub0000_cy<25>_rt  (
    .I0(\dht11_driver/global_count [25]),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy<25>_rt_380 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_global_count_addsub0000_cy<24>_rt  (
    .I0(\dht11_driver/global_count [24]),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy<24>_rt_378 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_global_count_addsub0000_cy<23>_rt  (
    .I0(\dht11_driver/global_count [23]),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy<23>_rt_376 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_global_count_addsub0000_cy<22>_rt  (
    .I0(\dht11_driver/global_count [22]),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy<22>_rt_374 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_global_count_addsub0000_cy<21>_rt  (
    .I0(\dht11_driver/global_count [21]),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy<21>_rt_372 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_global_count_addsub0000_cy<20>_rt  (
    .I0(\dht11_driver/global_count [20]),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy<20>_rt_370 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_global_count_addsub0000_cy<19>_rt  (
    .I0(\dht11_driver/global_count [19]),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy<19>_rt_366 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_global_count_addsub0000_cy<18>_rt  (
    .I0(\dht11_driver/global_count [18]),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy<18>_rt_364 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_global_count_addsub0000_cy<17>_rt  (
    .I0(\dht11_driver/global_count [17]),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy<17>_rt_362 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_global_count_addsub0000_cy<16>_rt  (
    .I0(\dht11_driver/global_count [16]),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy<16>_rt_360 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_global_count_addsub0000_cy<15>_rt  (
    .I0(\dht11_driver/global_count [15]),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy<15>_rt_358 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_global_count_addsub0000_cy<14>_rt  (
    .I0(\dht11_driver/global_count [14]),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy<14>_rt_356 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_global_count_addsub0000_cy<13>_rt  (
    .I0(\dht11_driver/global_count [13]),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy<13>_rt_354 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_global_count_addsub0000_cy<12>_rt  (
    .I0(\dht11_driver/global_count [12]),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy<12>_rt_352 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_global_count_addsub0000_cy<11>_rt  (
    .I0(\dht11_driver/global_count [11]),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy<11>_rt_350 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_global_count_addsub0000_cy<10>_rt  (
    .I0(\dht11_driver/global_count [10]),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy<10>_rt_348 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_global_count_addsub0000_cy<9>_rt  (
    .I0(\dht11_driver/global_count [9]),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy<9>_rt_406 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_global_count_addsub0000_cy<8>_rt  (
    .I0(\dht11_driver/global_count [8]),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy<8>_rt_404 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_global_count_addsub0000_cy<7>_rt  (
    .I0(\dht11_driver/global_count [7]),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy<7>_rt_402 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_global_count_addsub0000_cy<6>_rt  (
    .I0(\dht11_driver/global_count [6]),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy<6>_rt_400 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_global_count_addsub0000_cy<5>_rt  (
    .I0(\dht11_driver/global_count [5]),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy<5>_rt_398 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_global_count_addsub0000_cy<4>_rt  (
    .I0(\dht11_driver/global_count [4]),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy<4>_rt_396 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_global_count_addsub0000_cy<3>_rt  (
    .I0(\dht11_driver/global_count [3]),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy<3>_rt_394 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_global_count_addsub0000_cy<2>_rt  (
    .I0(\dht11_driver/global_count [2]),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy<2>_rt_390 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_global_count_addsub0000_cy<1>_rt  (
    .I0(\dht11_driver/global_count [1]),
    .O(\dht11_driver/Madd_global_count_addsub0000_cy<1>_rt_368 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \sevenSegementDec/Mcount_counter_cy<30>_rt  (
    .I0(\sevenSegementDec/counter [30]),
    .O(\sevenSegementDec/Mcount_counter_cy<30>_rt_1255 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \sevenSegementDec/Mcount_counter_cy<29>_rt  (
    .I0(\sevenSegementDec/counter [29]),
    .O(\sevenSegementDec/Mcount_counter_cy<29>_rt_1251 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \sevenSegementDec/Mcount_counter_cy<28>_rt  (
    .I0(\sevenSegementDec/counter [28]),
    .O(\sevenSegementDec/Mcount_counter_cy<28>_rt_1249 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \sevenSegementDec/Mcount_counter_cy<27>_rt  (
    .I0(\sevenSegementDec/counter [27]),
    .O(\sevenSegementDec/Mcount_counter_cy<27>_rt_1247 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \sevenSegementDec/Mcount_counter_cy<26>_rt  (
    .I0(\sevenSegementDec/counter [26]),
    .O(\sevenSegementDec/Mcount_counter_cy<26>_rt_1245 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \sevenSegementDec/Mcount_counter_cy<25>_rt  (
    .I0(\sevenSegementDec/counter [25]),
    .O(\sevenSegementDec/Mcount_counter_cy<25>_rt_1243 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \sevenSegementDec/Mcount_counter_cy<24>_rt  (
    .I0(\sevenSegementDec/counter [24]),
    .O(\sevenSegementDec/Mcount_counter_cy<24>_rt_1241 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \sevenSegementDec/Mcount_counter_cy<23>_rt  (
    .I0(\sevenSegementDec/counter [23]),
    .O(\sevenSegementDec/Mcount_counter_cy<23>_rt_1239 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \sevenSegementDec/Mcount_counter_cy<22>_rt  (
    .I0(\sevenSegementDec/counter [22]),
    .O(\sevenSegementDec/Mcount_counter_cy<22>_rt_1237 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \sevenSegementDec/Mcount_counter_cy<21>_rt  (
    .I0(\sevenSegementDec/counter [21]),
    .O(\sevenSegementDec/Mcount_counter_cy<21>_rt_1235 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \sevenSegementDec/Mcount_counter_cy<20>_rt  (
    .I0(\sevenSegementDec/counter [20]),
    .O(\sevenSegementDec/Mcount_counter_cy<20>_rt_1233 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \sevenSegementDec/Mcount_counter_cy<19>_rt  (
    .I0(\sevenSegementDec/counter [19]),
    .O(\sevenSegementDec/Mcount_counter_cy<19>_rt_1229 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \sevenSegementDec/Mcount_counter_cy<18>_rt  (
    .I0(\sevenSegementDec/counter [18]),
    .O(\sevenSegementDec/Mcount_counter_cy<18>_rt_1227 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \sevenSegementDec/Mcount_counter_cy<17>_rt  (
    .I0(\sevenSegementDec/counter [17]),
    .O(\sevenSegementDec/Mcount_counter_cy<17>_rt_1225 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \sevenSegementDec/Mcount_counter_cy<16>_rt  (
    .I0(\sevenSegementDec/counter [16]),
    .O(\sevenSegementDec/Mcount_counter_cy<16>_rt_1223 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \sevenSegementDec/Mcount_counter_cy<15>_rt  (
    .I0(\sevenSegementDec/counter [15]),
    .O(\sevenSegementDec/Mcount_counter_cy<15>_rt_1221 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \sevenSegementDec/Mcount_counter_cy<14>_rt  (
    .I0(\sevenSegementDec/counter [14]),
    .O(\sevenSegementDec/Mcount_counter_cy<14>_rt_1219 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \sevenSegementDec/Mcount_counter_cy<13>_rt  (
    .I0(\sevenSegementDec/counter [13]),
    .O(\sevenSegementDec/Mcount_counter_cy<13>_rt_1217 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \sevenSegementDec/Mcount_counter_cy<12>_rt  (
    .I0(\sevenSegementDec/counter [12]),
    .O(\sevenSegementDec/Mcount_counter_cy<12>_rt_1215 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \sevenSegementDec/Mcount_counter_cy<11>_rt  (
    .I0(\sevenSegementDec/counter [11]),
    .O(\sevenSegementDec/Mcount_counter_cy<11>_rt_1213 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \sevenSegementDec/Mcount_counter_cy<10>_rt  (
    .I0(\sevenSegementDec/counter [10]),
    .O(\sevenSegementDec/Mcount_counter_cy<10>_rt_1211 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \sevenSegementDec/Mcount_counter_cy<9>_rt  (
    .I0(\sevenSegementDec/counter [9]),
    .O(\sevenSegementDec/Mcount_counter_cy<9>_rt_1269 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \sevenSegementDec/Mcount_counter_cy<8>_rt  (
    .I0(\sevenSegementDec/counter [8]),
    .O(\sevenSegementDec/Mcount_counter_cy<8>_rt_1267 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \sevenSegementDec/Mcount_counter_cy<7>_rt  (
    .I0(\sevenSegementDec/counter [7]),
    .O(\sevenSegementDec/Mcount_counter_cy<7>_rt_1265 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \sevenSegementDec/Mcount_counter_cy<6>_rt  (
    .I0(\sevenSegementDec/counter [6]),
    .O(\sevenSegementDec/Mcount_counter_cy<6>_rt_1263 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \sevenSegementDec/Mcount_counter_cy<5>_rt  (
    .I0(\sevenSegementDec/counter [5]),
    .O(\sevenSegementDec/Mcount_counter_cy<5>_rt_1261 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \sevenSegementDec/Mcount_counter_cy<4>_rt  (
    .I0(\sevenSegementDec/counter [4]),
    .O(\sevenSegementDec/Mcount_counter_cy<4>_rt_1259 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \sevenSegementDec/Mcount_counter_cy<3>_rt  (
    .I0(\sevenSegementDec/counter [3]),
    .O(\sevenSegementDec/Mcount_counter_cy<3>_rt_1257 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \sevenSegementDec/Mcount_counter_cy<2>_rt  (
    .I0(\sevenSegementDec/counter [2]),
    .O(\sevenSegementDec/Mcount_counter_cy<2>_rt_1253 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \sevenSegementDec/Mcount_counter_cy<1>_rt  (
    .I0(\sevenSegementDec/counter [1]),
    .O(\sevenSegementDec/Mcount_counter_cy<1>_rt_1231 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \the10bitCounter/Mcount_counter_reg_xor<9>_rt  (
    .I0(\the10bitCounter/counter_reg [9]),
    .O(\the10bitCounter/Mcount_counter_reg_xor<9>_rt_1436 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \theNewCounter/Mcount_counter_reg_xor<1>_rt  (
    .I0(\theNewCounter/counter_reg [1]),
    .O(\theNewCounter/Mcount_counter_reg_xor<1>_rt_1521 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_data_count_addsub0000_xor<31>_rt  (
    .I0(\dht11_driver/data_count [31]),
    .O(\dht11_driver/Madd_data_count_addsub0000_xor<31>_rt_345 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_clock_count_share0000_xor<31>_rt  (
    .I0(\dht11_driver/clock_count [31]),
    .O(\dht11_driver/Madd_clock_count_share0000_xor<31>_rt_282 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dht11_driver/Madd_global_count_addsub0000_xor<31>_rt  (
    .I0(\dht11_driver/global_count [31]),
    .O(\dht11_driver/Madd_global_count_addsub0000_xor<31>_rt_408 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \sevenSegementDec/Mcount_counter_xor<31>_rt  (
    .I0(\sevenSegementDec/counter [31]),
    .O(\sevenSegementDec/Mcount_counter_xor<31>_rt_1303 )
  );
  LUT4 #(
    .INIT ( 16'h2AAA ))
  \dht11_driver/clock_count_mux0000<0>113  (
    .I0(\dht11_driver/state_FSM_FFd9_827 ),
    .I1(N128),
    .I2(\dht11_driver/state_cmp_eq00004_844 ),
    .I3(\dht11_driver/state_cmp_eq00001_wg_cy [6]),
    .O(\dht11_driver/clock_count_mux0000<0>113_495 )
  );
  LUT4 #(
    .INIT ( 16'hBA10 ))
  \dht11_driver/global_count_mux0000<0>1  (
    .I0(\dht11_driver/state_FSM_FFd3_815 ),
    .I1(\dht11_driver/state_FSM_FFd11_811 ),
    .I2(\dht11_driver/global_count [31]),
    .I3(\dht11_driver/global_count_addsub0000 [31]),
    .O(\dht11_driver/global_count_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'hBA10 ))
  \dht11_driver/global_count_mux0000<1>1  (
    .I0(\dht11_driver/state_FSM_FFd3_815 ),
    .I1(\dht11_driver/state_FSM_FFd11_811 ),
    .I2(\dht11_driver/global_count [30]),
    .I3(\dht11_driver/global_count_addsub0000 [30]),
    .O(\dht11_driver/global_count_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hBA10 ))
  \dht11_driver/global_count_mux0000<2>1  (
    .I0(\dht11_driver/state_FSM_FFd3_815 ),
    .I1(\dht11_driver/state_FSM_FFd11_811 ),
    .I2(\dht11_driver/global_count [29]),
    .I3(\dht11_driver/global_count_addsub0000 [29]),
    .O(\dht11_driver/global_count_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'hBA10 ))
  \dht11_driver/global_count_mux0000<3>1  (
    .I0(\dht11_driver/state_FSM_FFd3_815 ),
    .I1(\dht11_driver/state_FSM_FFd11_811 ),
    .I2(\dht11_driver/global_count [28]),
    .I3(\dht11_driver/global_count_addsub0000 [28]),
    .O(\dht11_driver/global_count_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'hBA10 ))
  \dht11_driver/global_count_mux0000<4>1  (
    .I0(\dht11_driver/state_FSM_FFd3_815 ),
    .I1(\dht11_driver/state_FSM_FFd11_811 ),
    .I2(\dht11_driver/global_count [27]),
    .I3(\dht11_driver/global_count_addsub0000 [27]),
    .O(\dht11_driver/global_count_mux0000 [4])
  );
  LUT4 #(
    .INIT ( 16'hBA10 ))
  \dht11_driver/global_count_mux0000<5>1  (
    .I0(\dht11_driver/state_FSM_FFd3_815 ),
    .I1(\dht11_driver/state_FSM_FFd11_811 ),
    .I2(\dht11_driver/global_count [26]),
    .I3(\dht11_driver/global_count_addsub0000 [26]),
    .O(\dht11_driver/global_count_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'hBA10 ))
  \dht11_driver/global_count_mux0000<6>1  (
    .I0(\dht11_driver/state_FSM_FFd3_815 ),
    .I1(\dht11_driver/state_FSM_FFd11_811 ),
    .I2(\dht11_driver/global_count [25]),
    .I3(\dht11_driver/global_count_addsub0000 [25]),
    .O(\dht11_driver/global_count_mux0000 [6])
  );
  LUT4 #(
    .INIT ( 16'hBA10 ))
  \dht11_driver/global_count_mux0000<7>1  (
    .I0(\dht11_driver/state_FSM_FFd3_815 ),
    .I1(\dht11_driver/state_FSM_FFd11_811 ),
    .I2(\dht11_driver/global_count [24]),
    .I3(\dht11_driver/global_count_addsub0000 [24]),
    .O(\dht11_driver/global_count_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'hBA10 ))
  \dht11_driver/global_count_mux0000<8>1  (
    .I0(\dht11_driver/state_FSM_FFd3_815 ),
    .I1(\dht11_driver/state_FSM_FFd11_811 ),
    .I2(\dht11_driver/global_count [23]),
    .I3(\dht11_driver/global_count_addsub0000 [23]),
    .O(\dht11_driver/global_count_mux0000 [8])
  );
  LUT4 #(
    .INIT ( 16'hE4F4 ))
  \dht11_driver/clock_count_mux0000<0>127_SW1  (
    .I0(N43),
    .I1(\dht11_driver/state_FSM_FFd4_817 ),
    .I2(\dht11_driver/state_FSM_FFd3_815 ),
    .I3(\dht11_driver/Mcompar_state_cmp_gt0000_cy [11]),
    .O(N50)
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \theBinary2BCD/Tens_mux000326  (
    .I0(\theBinary2BCD/Madd__add0005_cy [1]),
    .I1(\theBinary2BCD/Tens_0_mux0001 ),
    .I2(\theBinary2BCD/Hundreds_0_mux000119_1450 ),
    .O(\theBinary2BCD/Tens_mux000326_1483 )
  );
  LUT4 #(
    .INIT ( 16'h5554 ))
  \dht11_driver/state_FSM_FFd4-In  (
    .I0(N43),
    .I1(\dht11_driver/state_FSM_FFd4_817 ),
    .I2(\dht11_driver/state_FSM_FFd5_819 ),
    .I3(N68),
    .O(\dht11_driver/state_FSM_FFd4-In_818 )
  );
  LUT4 #(
    .INIT ( 16'hC888 ))
  \dht11_driver/state_FSM_FFd3-In1  (
    .I0(\dht11_driver/state_FSM_FFd4_817 ),
    .I1(N43),
    .I2(\dht11_driver/state_FSM_FFd3_815 ),
    .I3(\dht11_driver/Mcompar_state_cmp_gt0000_cy [11]),
    .O(\dht11_driver/state_FSM_FFd3-In )
  );
  LUT3 #(
    .INIT ( 8'hAE ))
  \dht11_driver/state_FSM_FFd11-In  (
    .I0(N36),
    .I1(\dht11_driver/state_FSM_FFd3_815 ),
    .I2(\dht11_driver/Mcompar_state_cmp_gt0000_cy [11]),
    .O(\dht11_driver/state_FSM_FFd11-In_812 )
  );
  LUT4 #(
    .INIT ( 16'h22F2 ))
  \dht11_driver/state_FSM_FFd2-In  (
    .I0(\dht11_driver/state_FSM_FFd2_813 ),
    .I1(start_dht11_capture),
    .I2(\dht11_driver/Mcompar_state_cmp_gt0000_cy [11]),
    .I3(N38),
    .O(\dht11_driver/state_FSM_FFd2-In_814 )
  );
  LUT4 #(
    .INIT ( 16'hBA10 ))
  \dht11_driver/global_count_mux0000<9>1  (
    .I0(\dht11_driver/state_FSM_FFd3_815 ),
    .I1(\dht11_driver/state_FSM_FFd11_811 ),
    .I2(\dht11_driver/global_count [22]),
    .I3(\dht11_driver/global_count_addsub0000 [22]),
    .O(\dht11_driver/global_count_mux0000 [9])
  );
  LUT4 #(
    .INIT ( 16'hBA10 ))
  \dht11_driver/global_count_mux0000<10>1  (
    .I0(\dht11_driver/state_FSM_FFd3_815 ),
    .I1(\dht11_driver/state_FSM_FFd11_811 ),
    .I2(\dht11_driver/global_count [21]),
    .I3(\dht11_driver/global_count_addsub0000 [21]),
    .O(\dht11_driver/global_count_mux0000 [10])
  );
  LUT4 #(
    .INIT ( 16'hBA10 ))
  \dht11_driver/global_count_mux0000<11>1  (
    .I0(\dht11_driver/state_FSM_FFd3_815 ),
    .I1(\dht11_driver/state_FSM_FFd11_811 ),
    .I2(\dht11_driver/global_count [20]),
    .I3(\dht11_driver/global_count_addsub0000 [20]),
    .O(\dht11_driver/global_count_mux0000 [11])
  );
  LUT4 #(
    .INIT ( 16'hBA10 ))
  \dht11_driver/global_count_mux0000<12>1  (
    .I0(\dht11_driver/state_FSM_FFd3_815 ),
    .I1(\dht11_driver/state_FSM_FFd11_811 ),
    .I2(\dht11_driver/global_count [19]),
    .I3(\dht11_driver/global_count_addsub0000 [19]),
    .O(\dht11_driver/global_count_mux0000 [12])
  );
  LUT4 #(
    .INIT ( 16'hBA10 ))
  \dht11_driver/global_count_mux0000<13>1  (
    .I0(\dht11_driver/state_FSM_FFd3_815 ),
    .I1(\dht11_driver/state_FSM_FFd11_811 ),
    .I2(\dht11_driver/global_count [18]),
    .I3(\dht11_driver/global_count_addsub0000 [18]),
    .O(\dht11_driver/global_count_mux0000 [13])
  );
  LUT4 #(
    .INIT ( 16'hBA10 ))
  \dht11_driver/global_count_mux0000<14>1  (
    .I0(\dht11_driver/state_FSM_FFd3_815 ),
    .I1(\dht11_driver/state_FSM_FFd11_811 ),
    .I2(\dht11_driver/global_count [17]),
    .I3(\dht11_driver/global_count_addsub0000 [17]),
    .O(\dht11_driver/global_count_mux0000 [14])
  );
  LUT4 #(
    .INIT ( 16'hBA10 ))
  \dht11_driver/global_count_mux0000<15>1  (
    .I0(\dht11_driver/state_FSM_FFd3_815 ),
    .I1(\dht11_driver/state_FSM_FFd11_811 ),
    .I2(\dht11_driver/global_count [16]),
    .I3(\dht11_driver/global_count_addsub0000 [16]),
    .O(\dht11_driver/global_count_mux0000 [15])
  );
  LUT4 #(
    .INIT ( 16'hBA10 ))
  \dht11_driver/global_count_mux0000<16>1  (
    .I0(\dht11_driver/state_FSM_FFd3_815 ),
    .I1(\dht11_driver/state_FSM_FFd11_811 ),
    .I2(\dht11_driver/global_count [15]),
    .I3(\dht11_driver/global_count_addsub0000 [15]),
    .O(\dht11_driver/global_count_mux0000 [16])
  );
  LUT4 #(
    .INIT ( 16'hBA10 ))
  \dht11_driver/global_count_mux0000<17>1  (
    .I0(\dht11_driver/state_FSM_FFd3_815 ),
    .I1(\dht11_driver/state_FSM_FFd11_811 ),
    .I2(\dht11_driver/global_count [14]),
    .I3(\dht11_driver/global_count_addsub0000 [14]),
    .O(\dht11_driver/global_count_mux0000 [17])
  );
  LUT4 #(
    .INIT ( 16'hBA10 ))
  \dht11_driver/global_count_mux0000<18>1  (
    .I0(\dht11_driver/state_FSM_FFd3_815 ),
    .I1(\dht11_driver/state_FSM_FFd11_811 ),
    .I2(\dht11_driver/global_count [13]),
    .I3(\dht11_driver/global_count_addsub0000 [13]),
    .O(\dht11_driver/global_count_mux0000 [18])
  );
  LUT4 #(
    .INIT ( 16'hBA10 ))
  \dht11_driver/global_count_mux0000<19>1  (
    .I0(\dht11_driver/state_FSM_FFd3_815 ),
    .I1(\dht11_driver/state_FSM_FFd11_811 ),
    .I2(\dht11_driver/global_count [12]),
    .I3(\dht11_driver/global_count_addsub0000 [12]),
    .O(\dht11_driver/global_count_mux0000 [19])
  );
  LUT4 #(
    .INIT ( 16'hBA10 ))
  \dht11_driver/global_count_mux0000<20>1  (
    .I0(\dht11_driver/state_FSM_FFd3_815 ),
    .I1(\dht11_driver/state_FSM_FFd11_811 ),
    .I2(\dht11_driver/global_count [11]),
    .I3(\dht11_driver/global_count_addsub0000 [11]),
    .O(\dht11_driver/global_count_mux0000 [20])
  );
  LUT4 #(
    .INIT ( 16'hBA10 ))
  \dht11_driver/global_count_mux0000<21>1  (
    .I0(\dht11_driver/state_FSM_FFd3_815 ),
    .I1(\dht11_driver/state_FSM_FFd11_811 ),
    .I2(\dht11_driver/global_count [10]),
    .I3(\dht11_driver/global_count_addsub0000 [10]),
    .O(\dht11_driver/global_count_mux0000 [21])
  );
  LUT4 #(
    .INIT ( 16'hBA10 ))
  \dht11_driver/global_count_mux0000<22>1  (
    .I0(\dht11_driver/state_FSM_FFd3_815 ),
    .I1(\dht11_driver/state_FSM_FFd11_811 ),
    .I2(\dht11_driver/global_count [9]),
    .I3(\dht11_driver/global_count_addsub0000 [9]),
    .O(\dht11_driver/global_count_mux0000 [22])
  );
  LUT4 #(
    .INIT ( 16'hBA10 ))
  \dht11_driver/global_count_mux0000<23>1  (
    .I0(\dht11_driver/state_FSM_FFd3_815 ),
    .I1(\dht11_driver/state_FSM_FFd11_811 ),
    .I2(\dht11_driver/global_count [8]),
    .I3(\dht11_driver/global_count_addsub0000 [8]),
    .O(\dht11_driver/global_count_mux0000 [23])
  );
  LUT4 #(
    .INIT ( 16'hBA10 ))
  \dht11_driver/global_count_mux0000<24>1  (
    .I0(\dht11_driver/state_FSM_FFd3_815 ),
    .I1(\dht11_driver/state_FSM_FFd11_811 ),
    .I2(\dht11_driver/global_count [7]),
    .I3(\dht11_driver/global_count_addsub0000 [7]),
    .O(\dht11_driver/global_count_mux0000 [24])
  );
  LUT4 #(
    .INIT ( 16'hBA10 ))
  \dht11_driver/global_count_mux0000<25>1  (
    .I0(\dht11_driver/state_FSM_FFd3_815 ),
    .I1(\dht11_driver/state_FSM_FFd11_811 ),
    .I2(\dht11_driver/global_count [6]),
    .I3(\dht11_driver/global_count_addsub0000 [6]),
    .O(\dht11_driver/global_count_mux0000 [25])
  );
  LUT4 #(
    .INIT ( 16'hBA10 ))
  \dht11_driver/global_count_mux0000<26>1  (
    .I0(\dht11_driver/state_FSM_FFd3_815 ),
    .I1(\dht11_driver/state_FSM_FFd11_811 ),
    .I2(\dht11_driver/global_count [5]),
    .I3(\dht11_driver/global_count_addsub0000 [5]),
    .O(\dht11_driver/global_count_mux0000 [26])
  );
  LUT4 #(
    .INIT ( 16'hBA10 ))
  \dht11_driver/global_count_mux0000<27>1  (
    .I0(\dht11_driver/state_FSM_FFd3_815 ),
    .I1(\dht11_driver/state_FSM_FFd11_811 ),
    .I2(\dht11_driver/global_count [4]),
    .I3(\dht11_driver/global_count_addsub0000 [4]),
    .O(\dht11_driver/global_count_mux0000 [27])
  );
  LUT4 #(
    .INIT ( 16'hBA10 ))
  \dht11_driver/global_count_mux0000<28>1  (
    .I0(\dht11_driver/state_FSM_FFd3_815 ),
    .I1(\dht11_driver/state_FSM_FFd11_811 ),
    .I2(\dht11_driver/global_count [3]),
    .I3(\dht11_driver/global_count_addsub0000 [3]),
    .O(\dht11_driver/global_count_mux0000 [28])
  );
  LUT4 #(
    .INIT ( 16'hBA10 ))
  \dht11_driver/global_count_mux0000<29>1  (
    .I0(\dht11_driver/state_FSM_FFd3_815 ),
    .I1(\dht11_driver/state_FSM_FFd11_811 ),
    .I2(\dht11_driver/global_count [2]),
    .I3(\dht11_driver/global_count_addsub0000 [2]),
    .O(\dht11_driver/global_count_mux0000 [29])
  );
  LUT4 #(
    .INIT ( 16'hBA10 ))
  \dht11_driver/global_count_mux0000<30>1  (
    .I0(\dht11_driver/state_FSM_FFd3_815 ),
    .I1(\dht11_driver/state_FSM_FFd11_811 ),
    .I2(\dht11_driver/global_count [1]),
    .I3(\dht11_driver/global_count_addsub0000 [1]),
    .O(\dht11_driver/global_count_mux0000 [30])
  );
  LUT4 #(
    .INIT ( 16'hBA10 ))
  \dht11_driver/global_count_mux0000<31>1  (
    .I0(\dht11_driver/state_FSM_FFd3_815 ),
    .I1(\dht11_driver/state_FSM_FFd11_811 ),
    .I2(\dht11_driver/global_count [0]),
    .I3(\dht11_driver/global_count_addsub0000 [0]),
    .O(\dht11_driver/global_count_mux0000 [31])
  );
  LUT4 #(
    .INIT ( 16'h4567 ))
  \theBinary2BCD/Ones_mux001011  (
    .I0(\the10bitCounter/counter_reg [5]),
    .I1(\theBinary2BCD/Madd__add0002_lut [3]),
    .I2(\theBinary2BCD/N121 ),
    .I3(\theBinary2BCD/Madd__add0002_lut [2]),
    .O(\theBinary2BCD/N3 )
  );
  LUT3 #(
    .INIT ( 8'hF6 ))
  \theBinary2BCD/Madd__add0010_cy<1>11  (
    .I0(\theBinary2BCD/Hundreds_0_cmp_ge0002 ),
    .I1(\theBinary2BCD/Madd__add0007_cy [0]),
    .I2(\theBinary2BCD/Madd__add0010_cy [0]),
    .O(\theBinary2BCD/Madd__add0010_cy [1])
  );
  LUT4 #(
    .INIT ( 16'hF6F4 ))
  \theBinary2BCD/Madd__add0005_cy<1>11  (
    .I0(\theBinary2BCD/Madd__add0000_cy [2]),
    .I1(\theBinary2BCD/Madd__add0003_cy [0]),
    .I2(\theBinary2BCD/Madd__add0005_cy [0]),
    .I3(\theBinary2BCD/Tens_0_mux0001 ),
    .O(\theBinary2BCD/Madd__add0005_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h0C08 ))
  \theBinary2BCDtemp/Tens_mux00061  (
    .I0(\dht11_driver/output_humidity [6]),
    .I1(\dht11_driver/output_humidity [7]),
    .I2(\theBinary2BCDtemp/Madd__add0007_cy [1]),
    .I3(\dht11_driver/output_humidity [5]),
    .O(\theBinary2BCDtemp/Madd__add0010_lut [3])
  );
  LUT4 #(
    .INIT ( 16'h0C08 ))
  \theBinary2BCDhumid/Tens_mux00061  (
    .I0(\dht11_driver/output_temp [6]),
    .I1(\dht11_driver/output_temp [7]),
    .I2(\theBinary2BCDhumid/Madd__add0007_cy [1]),
    .I3(\dht11_driver/output_temp [5]),
    .O(\theBinary2BCDhumid/Madd__add0010_lut [3])
  );
  LUT4 #(
    .INIT ( 16'h69AA ))
  \theBinary2BCDhumid/Hundreds_0_mux00032  (
    .I0(\theBinary2BCDhumid/Madd__add0010_lut [3]),
    .I1(\theBinary2BCDhumid/N81 ),
    .I2(\theBinary2BCDhumid/Madd__add0005_cy [0]),
    .I3(\theBinary2BCDhumid/Madd__add0010_cy [1]),
    .O(data2a[0])
  );
  LUT4 #(
    .INIT ( 16'hFEEE ))
  \theBinary2BCD/Hundreds_0_cmp_ge00021  (
    .I0(\theBinary2BCD/Tens_mux000310_1482 ),
    .I1(\theBinary2BCD/Tens_mux000326_1483 ),
    .I2(\theBinary2BCD/Madd__add0007_cy [1]),
    .I3(\theBinary2BCD/Madd__add0007_lut [2]),
    .O(\theBinary2BCD/Hundreds_0_cmp_ge0002 )
  );
  LUT4 #(
    .INIT ( 16'h6662 ))
  \theBinary2BCD/Tens_mux00061  (
    .I0(\theBinary2BCD/Madd__add0007_lut [2]),
    .I1(\theBinary2BCD/Madd__add0007_cy [1]),
    .I2(\theBinary2BCD/Tens_mux000310_1482 ),
    .I3(\theBinary2BCD/Tens_mux000326_1483 ),
    .O(\theBinary2BCD/Madd__add0010_lut [3])
  );
  LUT3 #(
    .INIT ( 8'hC6 ))
  Mmux_LCD_2_mux000012148_SW0 (
    .I0(\theBinary2BCD/Hundreds_0_cmp_ge0002 ),
    .I1(\theBinary2BCD/Madd__add0005_cy [0]),
    .I2(\theBinary2BCD/Madd__add0007_cy [0]),
    .O(N72)
  );
  LUT4 #(
    .INIT ( 16'h8040 ))
  Mmux_LCD_2_mux000012148 (
    .I0(\theBinary2BCD/Hundreds_0_mux0001 ),
    .I1(\theBinary2BCD/Madd__add0010_cy [1]),
    .I2(\theBinary2BCD/Madd__add0010_lut [3]),
    .I3(N72),
    .O(Mmux_LCD_2_mux000012148_49)
  );
  LUT4 #(
    .INIT ( 16'h91A8 ))
  \theBinary2BCD/Tens_0_mux00011  (
    .I0(\the10bitCounter/counter_reg [8]),
    .I1(\the10bitCounter/counter_reg [7]),
    .I2(\the10bitCounter/counter_reg [6]),
    .I3(\the10bitCounter/counter_reg [9]),
    .O(\theBinary2BCD/Tens_0_mux0001 )
  );
  LUT4 #(
    .INIT ( 16'h1082 ))
  \theBinary2BCD/Ones_mux00031  (
    .I0(\the10bitCounter/counter_reg [8]),
    .I1(\the10bitCounter/counter_reg [7]),
    .I2(\the10bitCounter/counter_reg [9]),
    .I3(\the10bitCounter/counter_reg [6]),
    .O(\theBinary2BCD/Madd__add0002_lut [3])
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \theBinary2BCD/Tens_mux000310  (
    .I0(\theBinary2BCD/Madd__add0005_cy [0]),
    .I1(\theBinary2BCD/Madd__add0000_cy [2]),
    .I2(\theBinary2BCD/Madd__add0003_cy [0]),
    .I3(\theBinary2BCD/Tens_0_mux0001 ),
    .O(\theBinary2BCD/Tens_mux000310_1482 )
  );
  LUT4 #(
    .INIT ( 16'hEBEA ))
  \theBinary2BCDhumid/Madd__add0010_cy<1>11  (
    .I0(\theBinary2BCDhumid/Madd__add0010_cy [0]),
    .I1(\theBinary2BCDhumid/Madd__add0007_cy [0]),
    .I2(\theBinary2BCDhumid/N121 ),
    .I3(\theBinary2BCDhumid/Madd__add0005_cy [0]),
    .O(\theBinary2BCDhumid/Madd__add0010_cy [1])
  );
  LUT3 #(
    .INIT ( 8'hAE ))
  \theBinary2BCDhumid/Tens_mux00101_SW0  (
    .I0(\theBinary2BCDhumid/Madd__add0010_cy [0]),
    .I1(\theBinary2BCDhumid/N17 ),
    .I2(\theBinary2BCDhumid/Madd__add0010_lut [3]),
    .O(N78)
  );
  LUT4 #(
    .INIT ( 16'hF090 ))
  \theBinary2BCD/Hundreds_0_cmp_ge00001  (
    .I0(\theBinary2BCD/Madd__add0002_lut [3]),
    .I1(\theBinary2BCD/N121 ),
    .I2(\theBinary2BCD/Madd__add0000_cy [2]),
    .I3(\theBinary2BCD/Tens_0_mux0001 ),
    .O(\theBinary2BCD/Hundreds_0_cmp_ge0000 )
  );
  LUT4 #(
    .INIT ( 16'hBAAA ))
  \theBinary2BCD/Tens_mux000334  (
    .I0(\theBinary2BCD/Tens_mux000310_1482 ),
    .I1(\theBinary2BCD/Madd__add0005_cy [1]),
    .I2(\theBinary2BCD/Tens_0_mux0001 ),
    .I3(\theBinary2BCD/Hundreds_0_mux000119_1450 ),
    .O(\theBinary2BCD/Madd__add0007_lut [3])
  );
  LUT4 #(
    .INIT ( 16'h44E4 ))
  Mmux_LCD_3_mux00006117 (
    .I0(\theNewCounter/counter_reg [0]),
    .I1(N56),
    .I2(\theBinary2BCDhumid/Madd__add0007_cy [1]),
    .I3(\theBinary2BCDhumid/N121 ),
    .O(LCD_3_mux0000[1])
  );
  LUT4 #(
    .INIT ( 16'h41FF ))
  Mmux_LCD_3_mux0000659_SW0 (
    .I0(\theBinary2BCD/Madd__add0007_cy [0]),
    .I1(\theBinary2BCD/Madd__add0005_cy [0]),
    .I2(\theBinary2BCD/Hundreds_0_mux0001 ),
    .I3(\theBinary2BCD/Madd__add0007_lut [2]),
    .O(N70)
  );
  LUT4 #(
    .INIT ( 16'h4B24 ))
  \theBinary2BCDtemp/Ones_mux001311  (
    .I0(\dht11_driver/output_humidity [5]),
    .I1(\dht11_driver/output_humidity [7]),
    .I2(\dht11_driver/output_humidity [6]),
    .I3(\dht11_driver/output_humidity [4]),
    .O(\theBinary2BCDtemp/N2 )
  );
  LUT4 #(
    .INIT ( 16'h6426 ))
  \theBinary2BCDtemp/Ones_mux00101  (
    .I0(\dht11_driver/output_humidity [7]),
    .I1(\dht11_driver/output_humidity [5]),
    .I2(\dht11_driver/output_humidity [6]),
    .I3(\dht11_driver/output_humidity [4]),
    .O(\theBinary2BCDtemp/Madd__add0006_lut [2])
  );
  LUT4 #(
    .INIT ( 16'h1082 ))
  \theBinary2BCDtemp/Ones_mux00091  (
    .I0(\dht11_driver/output_humidity [6]),
    .I1(\dht11_driver/output_humidity [5]),
    .I2(\dht11_driver/output_humidity [7]),
    .I3(\dht11_driver/output_humidity [4]),
    .O(\theBinary2BCDtemp/Madd__add0006_lut [3])
  );
  LUT4 #(
    .INIT ( 16'h4B24 ))
  \theBinary2BCDhumid/Ones_mux001311  (
    .I0(\dht11_driver/output_temp [5]),
    .I1(\dht11_driver/output_temp [7]),
    .I2(\dht11_driver/output_temp [6]),
    .I3(\dht11_driver/output_temp [4]),
    .O(\theBinary2BCDhumid/N2 )
  );
  LUT4 #(
    .INIT ( 16'h6426 ))
  \theBinary2BCDhumid/Ones_mux00101  (
    .I0(\dht11_driver/output_temp [7]),
    .I1(\dht11_driver/output_temp [5]),
    .I2(\dht11_driver/output_temp [6]),
    .I3(\dht11_driver/output_temp [4]),
    .O(\theBinary2BCDhumid/Madd__add0006_lut [2])
  );
  LUT4 #(
    .INIT ( 16'h1082 ))
  \theBinary2BCDhumid/Ones_mux00091  (
    .I0(\dht11_driver/output_temp [6]),
    .I1(\dht11_driver/output_temp [5]),
    .I2(\dht11_driver/output_temp [7]),
    .I3(\dht11_driver/output_temp [4]),
    .O(\theBinary2BCDhumid/Madd__add0006_lut [3])
  );
  LUT4 #(
    .INIT ( 16'h91A8 ))
  \theBinary2BCDtemp/Tens_0_mux00031  (
    .I0(\dht11_driver/output_humidity [6]),
    .I1(\dht11_driver/output_humidity [5]),
    .I2(\dht11_driver/output_humidity [4]),
    .I3(\dht11_driver/output_humidity [7]),
    .O(\theBinary2BCDtemp/Madd__add0005_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h91A8 ))
  \theBinary2BCDhumid/Tens_0_mux00031  (
    .I0(\dht11_driver/output_temp [6]),
    .I1(\dht11_driver/output_temp [5]),
    .I2(\dht11_driver/output_temp [4]),
    .I3(\dht11_driver/output_temp [7]),
    .O(\theBinary2BCDhumid/Madd__add0005_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h6426 ))
  \theBinary2BCD/Ones_mux00041  (
    .I0(\the10bitCounter/counter_reg [9]),
    .I1(\the10bitCounter/counter_reg [7]),
    .I2(\the10bitCounter/counter_reg [8]),
    .I3(\the10bitCounter/counter_reg [6]),
    .O(\theBinary2BCD/Madd__add0002_lut [2])
  );
  LUT4 #(
    .INIT ( 16'h4B24 ))
  \theBinary2BCD/Ones_mux00071_SW0  (
    .I0(\the10bitCounter/counter_reg [7]),
    .I1(\the10bitCounter/counter_reg [9]),
    .I2(\the10bitCounter/counter_reg [8]),
    .I3(\the10bitCounter/counter_reg [6]),
    .O(N80)
  );
  LUT4 #(
    .INIT ( 16'h9A99 ))
  \theBinary2BCD/Ones_mux00071  (
    .I0(N80),
    .I1(\the10bitCounter/counter_reg [5]),
    .I2(\theBinary2BCD/Madd__add0002_lut [3]),
    .I3(\theBinary2BCD/N121 ),
    .O(\theBinary2BCD/Madd__add0004_lut [2])
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  \theBinary2BCDhumid/Tens_mux000721  (
    .I0(\theBinary2BCDhumid/Madd__add0007_cy [0]),
    .I1(\theBinary2BCDhumid/Madd__add0005_cy [0]),
    .I2(\theBinary2BCDhumid/N121 ),
    .O(\theBinary2BCDhumid/N81 )
  );
  LUT4 #(
    .INIT ( 16'h1F7F ))
  \theBinary2BCDhumid/Hundreds_0_mux000311  (
    .I0(\theBinary2BCDhumid/N121 ),
    .I1(\theBinary2BCDhumid/Madd__add0007_cy [0]),
    .I2(\theBinary2BCDhumid/Madd__add0005_cy [0]),
    .I3(\theBinary2BCDhumid/Madd__add0010_cy [0]),
    .O(\theBinary2BCDhumid/N17 )
  );
  LUT4 #(
    .INIT ( 16'h1F7F ))
  \theBinary2BCDtemp/Hundreds_0_mux000311  (
    .I0(\theBinary2BCDtemp/Madd__add0007_cy [0]),
    .I1(\theBinary2BCDtemp/Madd__add0010_cy [0]),
    .I2(\theBinary2BCDtemp/Madd__add0005_cy [0]),
    .I3(\theBinary2BCDtemp/N121 ),
    .O(\theBinary2BCDtemp/N17 )
  );
  BUFG   \freqdiv2/out_clk_reg_BUFG  (
    .I(\freqdiv2/out_clk_reg1 ),
    .O(\freqdiv2/out_clk_reg_1092 )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_173)
  );
  BUFG   \freqdiv3/out_clk_reg_BUFG  (
    .I(\freqdiv3/out_clk_reg1 ),
    .O(\freqdiv3/out_clk_reg_1203 )
  );
  INV   \the10bitCounter/Mcount_counter_reg_lut<0>_INV_0  (
    .I(\the10bitCounter/counter_reg [0]),
    .O(\the10bitCounter/Mcount_counter_reg_lut [0])
  );
  INV   \theNewCounter/Mcount_counter_reg_lut<0>_INV_0  (
    .I(\theNewCounter/counter_reg [0]),
    .O(\theNewCounter/Mcount_counter_reg_lut [0])
  );
  INV   \dht11_driver/Madd_data_count_addsub0000_lut<0>_INV_0  (
    .I(\dht11_driver/data_count [0]),
    .O(\dht11_driver/Madd_data_count_addsub0000_lut [0])
  );
  INV   \dht11_driver/Mcompar_data_23_cmp_gt0000_cy<11>_inv_INV_0  (
    .I(\dht11_driver/Mcompar_data_23_cmp_gt0000_cy [11]),
    .O(\dht11_driver/data_23_cmp_gt0000 )
  );
  INV   \dht11_driver/Mcompar_data_23_cmp_gt0000_lut<2>_INV_0  (
    .I(\dht11_driver/clock_count [4]),
    .O(\dht11_driver/Mcompar_data_23_cmp_gt0000_lut[2] )
  );
  INV   \dht11_driver/Madd_clock_count_share0000_lut<0>_INV_0  (
    .I(\dht11_driver/clock_count [0]),
    .O(\dht11_driver/Madd_clock_count_share0000_lut [0])
  );
  INV   \dht11_driver/Madd_global_count_addsub0000_lut<0>_INV_0  (
    .I(\dht11_driver/global_count [0]),
    .O(\dht11_driver/Madd_global_count_addsub0000_lut [0])
  );
  INV   \sevenSegementDec/Mcount_counter_lut<0>_INV_0  (
    .I(\sevenSegementDec/counter [0]),
    .O(\sevenSegementDec/Mcount_counter_lut [0])
  );
  INV   \dht11_driver/state_cmp_eq00001_wg_lut<0>_INV_0  (
    .I(\dht11_driver/clock_count [6]),
    .O(\dht11_driver/state_cmp_eq00001_wg_lut [0])
  );
  INV   \sevenSegementDec/output_select_Acst_inv1_INV_0  (
    .I(\debounce_rst/OUT_190 ),
    .O(rst_debounced_inv)
  );
  INV   \dht11_driver/rst_n_inv1_INV_0  (
    .I(rst_n_dht11_1207),
    .O(\dht11_driver/rst_n_inv )
  );
  INV   \BTN<4>_inv1_INV_0  (
    .I(BTN_4_IBUF_6),
    .O(\BTN<4>_inv )
  );
  INV   \sevenSegementDec/out_wire<6>1_INV_0  (
    .I(\sevenSegementDec/out [6]),
    .O(SevenSegment_7_OBUF_165)
  );
  INV   \sevenSegementDec/out_wire<5>1_INV_0  (
    .I(\sevenSegementDec/out [5]),
    .O(SevenSegment_6_OBUF_164)
  );
  INV   \sevenSegementDec/out_wire<4>1_INV_0  (
    .I(\sevenSegementDec/out [4]),
    .O(SevenSegment_5_OBUF_163)
  );
  INV   \sevenSegementDec/out_wire<3>1_INV_0  (
    .I(\sevenSegementDec/out [3]),
    .O(SevenSegment_4_OBUF_162)
  );
  INV   \sevenSegementDec/out_wire<2>1_INV_0  (
    .I(\sevenSegementDec/out [2]),
    .O(SevenSegment_3_OBUF_161)
  );
  INV   \sevenSegementDec/out_wire<1>1_INV_0  (
    .I(\sevenSegementDec/out [1]),
    .O(SevenSegment_2_OBUF_160)
  );
  INV   \sevenSegementDec/out_wire<0>1_INV_0  (
    .I(\sevenSegementDec/out [0]),
    .O(SevenSegment_1_OBUF_159)
  );
  INV   \freqdiv3/out_clk_reg_not00011_INV_0  (
    .I(\freqdiv3/out_clk_reg1 ),
    .O(\freqdiv3/out_clk_reg_not0001 )
  );
  INV   \freqdiv2/out_clk_reg_not00011_INV_0  (
    .I(\freqdiv2/out_clk_reg1 ),
    .O(\freqdiv2/out_clk_reg_not0001 )
  );
  INV   \SevenSegment<0>1_INV_0  (
    .I(\freqdiv1/out_clk_reg_983 ),
    .O(SevenSegment_0_OBUF_158)
  );
  INV   \freqdiv3/counter_cmp_eq0000_inv1_INV_0  (
    .I(\freqdiv3/counter_cmp_eq0000 ),
    .O(\freqdiv3/counter_cmp_eq0000_inv )
  );
  INV   \freqdiv2/counter_cmp_eq0000_inv1_INV_0  (
    .I(\freqdiv2/counter_cmp_eq0000 ),
    .O(\freqdiv2/counter_cmp_eq0000_inv )
  );
  INV   \freqdiv1/counter_cmp_eq0000_inv1_INV_0  (
    .I(\freqdiv1/counter_cmp_eq0000 ),
    .O(\freqdiv1/counter_cmp_eq0000_inv )
  );
  INV   \dht11_driver/Mcompar_data_23_cmp_gt0000_lut<11>1_INV_0  (
    .I(\dht11_driver/clock_count [31]),
    .O(\dht11_driver/Mcompar_data_23_cmp_gt0000_lut[11] )
  );
  INV   \dht11_driver/Mcompar_state_cmp_gt0000_lut<11>1_INV_0  (
    .I(\dht11_driver/global_count [31]),
    .O(\dht11_driver/Mcompar_state_cmp_gt0000_lut[11] )
  );
  MUXF5   \sevenSegementDec/out_mux0000<5>  (
    .I0(N82),
    .I1(N83),
    .S(\sevenSegementDec/out [1]),
    .O(\sevenSegementDec/out_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'h1345 ))
  \sevenSegementDec/out_mux0000<5>_F  (
    .I0(\sevenSegementDec/inp [1]),
    .I1(\sevenSegementDec/inp [3]),
    .I2(\sevenSegementDec/inp [0]),
    .I3(\sevenSegementDec/inp [2]),
    .O(N82)
  );
  LUT4 #(
    .INIT ( 16'hFF4D ))
  \sevenSegementDec/out_mux0000<5>_G  (
    .I0(\sevenSegementDec/inp [1]),
    .I1(\sevenSegementDec/inp [2]),
    .I2(\sevenSegementDec/inp [0]),
    .I3(\sevenSegementDec/inp [3]),
    .O(N83)
  );
  MUXF5   \sevenSegementDec/out_mux0000<1>  (
    .I0(N84),
    .I1(N85),
    .S(\sevenSegementDec/out [5]),
    .O(\sevenSegementDec/out_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h1B17 ))
  \sevenSegementDec/out_mux0000<1>_F  (
    .I0(\sevenSegementDec/inp [1]),
    .I1(\sevenSegementDec/inp [2]),
    .I2(\sevenSegementDec/inp [3]),
    .I3(\sevenSegementDec/inp [0]),
    .O(N84)
  );
  LUT4 #(
    .INIT ( 16'hFF9F ))
  \sevenSegementDec/out_mux0000<1>_G  (
    .I0(\sevenSegementDec/inp [1]),
    .I1(\sevenSegementDec/inp [0]),
    .I2(\sevenSegementDec/inp [2]),
    .I3(\sevenSegementDec/inp [3]),
    .O(N85)
  );
  MUXF5   \sevenSegementDec/out_mux0000<3>  (
    .I0(N86),
    .I1(N87),
    .S(\sevenSegementDec/out [3]),
    .O(\sevenSegementDec/out_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'h116B ))
  \sevenSegementDec/out_mux0000<3>_F  (
    .I0(\sevenSegementDec/inp [1]),
    .I1(\sevenSegementDec/inp [2]),
    .I2(\sevenSegementDec/inp [0]),
    .I3(\sevenSegementDec/inp [3]),
    .O(N86)
  );
  LUT4 #(
    .INIT ( 16'hFF79 ))
  \sevenSegementDec/out_mux0000<3>_G  (
    .I0(\sevenSegementDec/inp [2]),
    .I1(\sevenSegementDec/inp [0]),
    .I2(\sevenSegementDec/inp [1]),
    .I3(\sevenSegementDec/inp [3]),
    .O(N87)
  );
  MUXF5   \sevenSegementDec/out_mux0000<0>  (
    .I0(N88),
    .I1(N89),
    .S(\sevenSegementDec/out [6]),
    .O(\sevenSegementDec/out_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'h11EB ))
  \sevenSegementDec/out_mux0000<0>_F  (
    .I0(\sevenSegementDec/inp [1]),
    .I1(\sevenSegementDec/inp [2]),
    .I2(\sevenSegementDec/inp [0]),
    .I3(\sevenSegementDec/inp [3]),
    .O(N88)
  );
  LUT4 #(
    .INIT ( 16'hFFF9 ))
  \sevenSegementDec/out_mux0000<0>_G  (
    .I0(\sevenSegementDec/inp [2]),
    .I1(\sevenSegementDec/inp [0]),
    .I2(\sevenSegementDec/inp [1]),
    .I3(\sevenSegementDec/inp [3]),
    .O(N89)
  );
  MUXF5   \sevenSegementDec/out_mux0000<4>  (
    .I0(N90),
    .I1(N91),
    .S(\sevenSegementDec/inp [2]),
    .O(\sevenSegementDec/out_mux0000 [4])
  );
  LUT4 #(
    .INIT ( 16'hD515 ))
  \sevenSegementDec/out_mux0000<4>_F  (
    .I0(\sevenSegementDec/inp [0]),
    .I1(\sevenSegementDec/inp [1]),
    .I2(\sevenSegementDec/inp [3]),
    .I3(\sevenSegementDec/out [2]),
    .O(N90)
  );
  LUT4 #(
    .INIT ( 16'hBA10 ))
  \sevenSegementDec/out_mux0000<4>_G  (
    .I0(\sevenSegementDec/inp [3]),
    .I1(\sevenSegementDec/inp [0]),
    .I2(\sevenSegementDec/inp [1]),
    .I3(\sevenSegementDec/out [2]),
    .O(N91)
  );
  MUXF5   \sevenSegementDec/out_mux0000<6>  (
    .I0(N92),
    .I1(N93),
    .S(\sevenSegementDec/out [0]),
    .O(\sevenSegementDec/out_mux0000 [6])
  );
  LUT4 #(
    .INIT ( 16'h161E ))
  \sevenSegementDec/out_mux0000<6>_F  (
    .I0(\sevenSegementDec/inp [1]),
    .I1(\sevenSegementDec/inp [2]),
    .I2(\sevenSegementDec/inp [3]),
    .I3(\sevenSegementDec/inp [0]),
    .O(N92)
  );
  LUT4 #(
    .INIT ( 16'hBFEE ))
  \sevenSegementDec/out_mux0000<6>_G  (
    .I0(\sevenSegementDec/inp [3]),
    .I1(\sevenSegementDec/inp [2]),
    .I2(\sevenSegementDec/inp [0]),
    .I3(\sevenSegementDec/inp [1]),
    .O(N93)
  );
  MUXF5   \sevenSegementDec/out_mux0000<2>  (
    .I0(N94),
    .I1(N95),
    .S(\sevenSegementDec/inp [3]),
    .O(\sevenSegementDec/out_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  \sevenSegementDec/out_mux0000<2>_F  (
    .I0(\sevenSegementDec/inp [2]),
    .I1(\sevenSegementDec/inp [1]),
    .I2(\sevenSegementDec/inp [0]),
    .O(N94)
  );
  LUT3 #(
    .INIT ( 8'hF1 ))
  \sevenSegementDec/out_mux0000<2>_G  (
    .I0(\sevenSegementDec/inp [2]),
    .I1(\sevenSegementDec/inp [1]),
    .I2(\sevenSegementDec/out [4]),
    .O(N95)
  );
  MUXF5   Mmux_LCD_3_mux00003 (
    .I0(N96),
    .I1(N97),
    .S(\theNewCounter/counter_reg [1]),
    .O(LCD_3_mux0000[0])
  );
  LUT4 #(
    .INIT ( 16'hEB41 ))
  Mmux_LCD_3_mux00003_F (
    .I0(\theNewCounter/counter_reg [0]),
    .I1(\theBinary2BCD/N17 ),
    .I2(\theBinary2BCD/Madd__add0010_lut [3]),
    .I3(data2a[0]),
    .O(N96)
  );
  LUT4 #(
    .INIT ( 16'hEB41 ))
  Mmux_LCD_3_mux00003_G (
    .I0(\theNewCounter/counter_reg [0]),
    .I1(\theBinary2BCDtemp/N17 ),
    .I2(\theBinary2BCDtemp/Madd__add0010_lut [3]),
    .I3(data2a[0]),
    .O(N97)
  );
  MUXF5   Mmux_LCD_2_mux00009198_SW0 (
    .I0(N98),
    .I1(N99),
    .S(\theNewCounter/counter_reg [1]),
    .O(N52)
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  Mmux_LCD_2_mux00009198_SW0_F (
    .I0(\theBinary2BCD/Hundreds_0_cmp_ge0002 ),
    .I1(\theBinary2BCD/Madd__add0007_cy [0]),
    .I2(\theBinary2BCD/N10 ),
    .O(N98)
  );
  LUT4 #(
    .INIT ( 16'hC369 ))
  Mmux_LCD_2_mux00009198_SW0_G (
    .I0(\theBinary2BCDtemp/Madd__add0007_cy [1]),
    .I1(\theBinary2BCDtemp/Madd__add0007_cy [0]),
    .I2(\theBinary2BCDtemp/N10 ),
    .I3(\theBinary2BCDtemp/N121 ),
    .O(N99)
  );
  MUXF5   Mmux_LCD_2_mux0000682_SW0 (
    .I0(N100),
    .I1(N101),
    .S(\theNewCounter/counter_reg [1]),
    .O(N54)
  );
  LUT3 #(
    .INIT ( 8'h65 ))
  Mmux_LCD_2_mux0000682_SW0_F (
    .I0(\theBinary2BCD/Madd__add0010_cy [0]),
    .I1(\theBinary2BCD/Madd__add0010_lut [3]),
    .I2(\theBinary2BCD/N17 ),
    .O(N100)
  );
  LUT3 #(
    .INIT ( 8'h65 ))
  Mmux_LCD_2_mux0000682_SW0_G (
    .I0(\theBinary2BCDtemp/Madd__add0010_cy [0]),
    .I1(\theBinary2BCDtemp/Madd__add0010_lut [3]),
    .I2(\theBinary2BCDtemp/N17 ),
    .O(N101)
  );
  MUXF5   Mmux_LCD_1_mux00009138_SW0 (
    .I0(N102),
    .I1(N103),
    .S(\theNewCounter/counter_reg [1]),
    .O(N58)
  );
  LUT4 #(
    .INIT ( 16'h989A ))
  Mmux_LCD_1_mux00009138_SW0_F (
    .I0(\theBinary2BCD/N8 ),
    .I1(\the10bitCounter/counter_reg [1]),
    .I2(\theBinary2BCD/Madd__add0011_lut [3]),
    .I3(\theBinary2BCD/Madd__add0011_lut [2]),
    .O(N102)
  );
  LUT4 #(
    .INIT ( 16'h989A ))
  Mmux_LCD_1_mux00009138_SW0_G (
    .I0(\theBinary2BCDtemp/N8 ),
    .I1(\dht11_driver/output_humidity [1]),
    .I2(\theBinary2BCDtemp/Madd__add0011_lut [3]),
    .I3(\theBinary2BCDtemp/Madd__add0011_lut [2]),
    .O(N103)
  );
  MUXF5   Mmux_LCD_1_mux00006132_SW0 (
    .I0(N104),
    .I1(N105),
    .S(\theNewCounter/counter_reg [1]),
    .O(N60)
  );
  LUT4 #(
    .INIT ( 16'h3626 ))
  Mmux_LCD_1_mux00006132_SW0_F (
    .I0(\theBinary2BCD/Madd__add0011_lut [3]),
    .I1(\the10bitCounter/counter_reg [1]),
    .I2(\theBinary2BCD/Madd__add0011_lut [2]),
    .I3(\theBinary2BCD/N8 ),
    .O(N104)
  );
  LUT4 #(
    .INIT ( 16'h3626 ))
  Mmux_LCD_1_mux00006132_SW0_G (
    .I0(\theBinary2BCDtemp/Madd__add0011_lut [3]),
    .I1(\dht11_driver/output_humidity [1]),
    .I2(\theBinary2BCDtemp/Madd__add0011_lut [2]),
    .I3(\theBinary2BCDtemp/N8 ),
    .O(N105)
  );
  MUXF5   Mmux_LCD_1_mux000012132_SW0 (
    .I0(N106),
    .I1(N107),
    .S(\theNewCounter/counter_reg [1]),
    .O(N62)
  );
  LUT4 #(
    .INIT ( 16'h5062 ))
  Mmux_LCD_1_mux000012132_SW0_F (
    .I0(\theBinary2BCD/Madd__add0011_lut [2]),
    .I1(\theBinary2BCD/N8 ),
    .I2(\theBinary2BCD/Madd__add0011_lut [3]),
    .I3(\the10bitCounter/counter_reg [1]),
    .O(N106)
  );
  LUT4 #(
    .INIT ( 16'h5062 ))
  Mmux_LCD_1_mux000012132_SW0_G (
    .I0(\theBinary2BCDtemp/Madd__add0011_lut [2]),
    .I1(\theBinary2BCDtemp/N8 ),
    .I2(\theBinary2BCDtemp/Madd__add0011_lut [3]),
    .I3(\dht11_driver/output_humidity [1]),
    .O(N107)
  );
  MUXF5   Mmux_LCD_2_mux00003152_SW0 (
    .I0(N108),
    .I1(N109),
    .S(\theNewCounter/counter_reg [1]),
    .O(N64)
  );
  LUT4 #(
    .INIT ( 16'h3C6C ))
  Mmux_LCD_2_mux00003152_SW0_F (
    .I0(\theBinary2BCD/N8 ),
    .I1(\theBinary2BCD/Madd__add0011_lut [3]),
    .I2(\theBinary2BCD/Madd__add0011_lut [2]),
    .I3(\the10bitCounter/counter_reg [1]),
    .O(N108)
  );
  LUT4 #(
    .INIT ( 16'h3C6C ))
  Mmux_LCD_2_mux00003152_SW0_G (
    .I0(\theBinary2BCDtemp/N8 ),
    .I1(\theBinary2BCDtemp/Madd__add0011_lut [3]),
    .I2(\theBinary2BCDtemp/Madd__add0011_lut [2]),
    .I3(\dht11_driver/output_humidity [1]),
    .O(N109)
  );
  MUXF5   \sevenSegementDec/inp_mux0000<3>91  (
    .I0(N110),
    .I1(N111),
    .S(\sevenSegementDec/output_select [0]),
    .O(\sevenSegementDec/inp_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'hEC4C ))
  \sevenSegementDec/inp_mux0000<3>91_F  (
    .I0(\sevenSegementDec/output_select [1]),
    .I1(\sevenSegementDec/inp [3]),
    .I2(\sevenSegementDec/output_select [2]),
    .I3(LCD_2[3]),
    .O(N110)
  );
  LUT4 #(
    .INIT ( 16'hFF82 ))
  \sevenSegementDec/inp_mux0000<3>91_G  (
    .I0(\sevenSegementDec/inp [3]),
    .I1(\sevenSegementDec/output_select [1]),
    .I2(\sevenSegementDec/output_select [2]),
    .I3(\sevenSegementDec/inp_mux0000<3>17_1380 ),
    .O(N111)
  );
  MUXF5   \sevenSegementDec/inp_mux0000<2>91  (
    .I0(N112),
    .I1(N113),
    .S(\sevenSegementDec/output_select [0]),
    .O(\sevenSegementDec/inp_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'hEC4C ))
  \sevenSegementDec/inp_mux0000<2>91_F  (
    .I0(\sevenSegementDec/output_select [1]),
    .I1(\sevenSegementDec/inp [2]),
    .I2(\sevenSegementDec/output_select [2]),
    .I3(LCD_2[2]),
    .O(N112)
  );
  LUT4 #(
    .INIT ( 16'hFF82 ))
  \sevenSegementDec/inp_mux0000<2>91_G  (
    .I0(\sevenSegementDec/inp [2]),
    .I1(\sevenSegementDec/output_select [1]),
    .I2(\sevenSegementDec/output_select [2]),
    .I3(\sevenSegementDec/inp_mux0000<2>17_1378 ),
    .O(N113)
  );
  MUXF5   \sevenSegementDec/inp_mux0000<1>91  (
    .I0(N114),
    .I1(N115),
    .S(\sevenSegementDec/output_select [0]),
    .O(\sevenSegementDec/inp_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hEC4C ))
  \sevenSegementDec/inp_mux0000<1>91_F  (
    .I0(\sevenSegementDec/output_select [1]),
    .I1(\sevenSegementDec/inp [1]),
    .I2(\sevenSegementDec/output_select [2]),
    .I3(LCD_2[1]),
    .O(N114)
  );
  LUT4 #(
    .INIT ( 16'hFF82 ))
  \sevenSegementDec/inp_mux0000<1>91_G  (
    .I0(\sevenSegementDec/inp [1]),
    .I1(\sevenSegementDec/output_select [1]),
    .I2(\sevenSegementDec/output_select [2]),
    .I3(\sevenSegementDec/inp_mux0000<1>17_1376 ),
    .O(N115)
  );
  MUXF5   \sevenSegementDec/inp_mux0000<0>91  (
    .I0(N116),
    .I1(N117),
    .S(\sevenSegementDec/output_select [0]),
    .O(\sevenSegementDec/inp_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'hEC4C ))
  \sevenSegementDec/inp_mux0000<0>91_F  (
    .I0(\sevenSegementDec/output_select [1]),
    .I1(\sevenSegementDec/inp [0]),
    .I2(\sevenSegementDec/output_select [2]),
    .I3(LCD_2[0]),
    .O(N116)
  );
  LUT4 #(
    .INIT ( 16'hFF82 ))
  \sevenSegementDec/inp_mux0000<0>91_G  (
    .I0(\sevenSegementDec/inp [0]),
    .I1(\sevenSegementDec/output_select [1]),
    .I2(\sevenSegementDec/output_select [2]),
    .I3(\sevenSegementDec/inp_mux0000<0>17_1374 ),
    .O(N117)
  );
  MUXF5   Mmux_LCD_3_mux00006117_SW0 (
    .I0(N118),
    .I1(N119),
    .S(\theNewCounter/counter_reg [1]),
    .O(N56)
  );
  LUT4 #(
    .INIT ( 16'h6491 ))
  Mmux_LCD_3_mux00006117_SW0_F (
    .I0(\theBinary2BCD/Hundreds_0_cmp_ge0000 ),
    .I1(\theBinary2BCD/Madd__add0007_lut [3]),
    .I2(\theBinary2BCD/Hundreds_0_mux0001 ),
    .I3(N70),
    .O(N118)
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  Mmux_LCD_3_mux00006117_SW0_G (
    .I0(\theBinary2BCDtemp/N121 ),
    .I1(\theBinary2BCDtemp/Madd__add0005_cy [0]),
    .I2(\theBinary2BCDtemp/Madd__add0007_cy [0]),
    .O(N119)
  );
  MUXF5   Mmux_LCD_2_mux000012256 (
    .I0(N120),
    .I1(N121),
    .S(\theNewCounter/counter_reg [0]),
    .O(LCD_2_mux0000[3])
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  Mmux_LCD_2_mux000012256_F (
    .I0(\theNewCounter/counter_reg [1]),
    .I1(Mmux_LCD_2_mux000012148_49),
    .I2(Mmux_LCD_2_mux000012200_50),
    .I3(Mmux_LCD_2_mux00001246_51),
    .O(N120)
  );
  LUT4 #(
    .INIT ( 16'h6491 ))
  Mmux_LCD_2_mux000012256_G (
    .I0(\theBinary2BCDhumid/Madd__add0010_cy [1]),
    .I1(\theBinary2BCDhumid/Madd__add0005_cy [0]),
    .I2(\theBinary2BCDhumid/Madd__add0010_lut [3]),
    .I3(\theBinary2BCDhumid/N81 ),
    .O(N121)
  );
  MUXF5   \theBinary2BCD/Hundreds_0_mux000132  (
    .I0(N122),
    .I1(N123),
    .S(\theBinary2BCD/Tens_0_mux0001 ),
    .O(\theBinary2BCD/Hundreds_0_mux0001 )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \theBinary2BCD/Hundreds_0_mux000132_F  (
    .I0(\theBinary2BCD/Madd__add0000_cy [2]),
    .I1(\theBinary2BCD/Madd__add0002_lut [3]),
    .I2(\theBinary2BCD/N121 ),
    .O(N122)
  );
  LUT4 #(
    .INIT ( 16'hAA28 ))
  \theBinary2BCD/Hundreds_0_mux000132_G  (
    .I0(\theBinary2BCD/Hundreds_0_mux000119_1450 ),
    .I1(\theBinary2BCD/Madd__add0000_cy [2]),
    .I2(\theBinary2BCD/Madd__add0003_cy [0]),
    .I3(\theBinary2BCD/Madd__add0005_cy [0]),
    .O(N123)
  );
  MUXF5   \theBinary2BCD/Ones_mux0006  (
    .I0(N124),
    .I1(N125),
    .S(\the10bitCounter/counter_reg [8]),
    .O(\theBinary2BCD/Madd__add0004_lut [3])
  );
  LUT4 #(
    .INIT ( 16'h2004 ))
  \theBinary2BCD/Ones_mux0006_F  (
    .I0(\the10bitCounter/counter_reg [9]),
    .I1(\the10bitCounter/counter_reg [7]),
    .I2(\the10bitCounter/counter_reg [6]),
    .I3(\the10bitCounter/counter_reg [5]),
    .O(N124)
  );
  LUT4 #(
    .INIT ( 16'h0942 ))
  \theBinary2BCD/Ones_mux0006_G  (
    .I0(\the10bitCounter/counter_reg [9]),
    .I1(\the10bitCounter/counter_reg [7]),
    .I2(\the10bitCounter/counter_reg [6]),
    .I3(\the10bitCounter/counter_reg [5]),
    .O(N125)
  );
  MUXF5   Mmux_LCD_2_mux00001246 (
    .I0(N126),
    .I1(N127),
    .S(\theBinary2BCDtemp/N121 ),
    .O(Mmux_LCD_2_mux00001246_51)
  );
  LUT4 #(
    .INIT ( 16'h7A40 ))
  Mmux_LCD_2_mux00001246_F (
    .I0(\theBinary2BCDtemp/Madd__add0010_cy [0]),
    .I1(\theBinary2BCDtemp/Madd__add0007_cy [0]),
    .I2(\theBinary2BCDtemp/Madd__add0005_cy [0]),
    .I3(\theBinary2BCDtemp/Madd__add0010_lut [3]),
    .O(N126)
  );
  LUT4 #(
    .INIT ( 16'h5062 ))
  Mmux_LCD_2_mux00001246_G (
    .I0(\theBinary2BCDtemp/Madd__add0005_cy [0]),
    .I1(\theBinary2BCDtemp/Madd__add0007_cy [0]),
    .I2(\theBinary2BCDtemp/Madd__add0010_lut [3]),
    .I3(\theBinary2BCDtemp/Madd__add0010_cy [0]),
    .O(N127)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_LCD_1_mux000031 (
    .I0(\theNewCounter/counter_reg [0]),
    .I1(\dht11_driver/output_humidity [0]),
    .I2(\dht11_driver/output_temp [0]),
    .O(Mmux_LCD_1_mux00003)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_LCD_1_mux000032 (
    .I0(\theNewCounter/counter_reg [0]),
    .I1(\the10bitCounter/counter_reg [0]),
    .I2(\dht11_driver/output_temp [0]),
    .O(Mmux_LCD_1_mux000031_46)
  );
  MUXF5   Mmux_LCD_1_mux00003_f5 (
    .I0(Mmux_LCD_1_mux000031_46),
    .I1(Mmux_LCD_1_mux00003),
    .S(\theNewCounter/counter_reg [1]),
    .O(LCD_1_mux0000[0])
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \dht11_driver/state_or00031  (
    .I0(\dht11_driver/state_FSM_FFd4_817 ),
    .I1(\dht11_driver/state_FSM_FFd6_821 ),
    .I2(\dht11_driver/state_FSM_FFd10_809 ),
    .I3(\dht11_driver/state_FSM_FFd2_813 ),
    .O(\dht11_driver/state_or00031_870 )
  );
  MUXF5   \dht11_driver/state_or0003_f5  (
    .I0(\dht11_driver/state_or00031_870 ),
    .I1(IO_P1_3_OBUF_10),
    .S(\dht11_driver/state_FSM_FFd8_825 ),
    .O(\dht11_driver/state_or0003 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \dht11_driver/state_or00021  (
    .I0(\dht11_driver/state_FSM_FFd4_817 ),
    .I1(\dht11_driver/state_FSM_FFd8_825 ),
    .I2(\dht11_driver/state_FSM_FFd5_819 ),
    .I3(\dht11_driver/state_FSM_FFd1_807 ),
    .O(\dht11_driver/state_or00021_868 )
  );
  MUXF5   \dht11_driver/state_or0002_f5  (
    .I0(\dht11_driver/state_or00021_868 ),
    .I1(IO_P1_3_OBUF_10),
    .S(\dht11_driver/state_FSM_FFd9_827 ),
    .O(\dht11_driver/state_or0002 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \dht11_driver/clock_count_or00001  (
    .I0(\dht11_driver/state_FSM_FFd4_817 ),
    .I1(\dht11_driver/state_FSM_FFd11_811 ),
    .I2(\dht11_driver/state_FSM_FFd3_815 ),
    .I3(\dht11_driver/state_FSM_FFd8_825 ),
    .O(\dht11_driver/clock_count_or00001_529 )
  );
  MUXF5   \dht11_driver/clock_count_or0000_f5  (
    .I0(\dht11_driver/clock_count_or00001_529 ),
    .I1(IO_P1_3_OBUF_10),
    .S(\dht11_driver/state_FSM_FFd9_827 ),
    .O(\dht11_driver/clock_count_or0000 )
  );
  LUT4 #(
    .INIT ( 16'h9693 ))
  Mmux_LCD_2_mux000091981 (
    .I0(\theBinary2BCDhumid/N121 ),
    .I1(N78),
    .I2(\theBinary2BCDhumid/Madd__add0007_cy [0]),
    .I3(\theBinary2BCDhumid/Madd__add0005_cy [0]),
    .O(Mmux_LCD_2_mux00009198)
  );
  MUXF5   Mmux_LCD_2_mux00009198_f5 (
    .I0(N52),
    .I1(Mmux_LCD_2_mux00009198),
    .S(\theNewCounter/counter_reg [0]),
    .O(LCD_2_mux0000[2])
  );
  LUT3 #(
    .INIT ( 8'h65 ))
  Mmux_LCD_2_mux00006821 (
    .I0(\theBinary2BCDhumid/Madd__add0010_cy [0]),
    .I1(\theBinary2BCDhumid/Madd__add0010_lut [3]),
    .I2(\theBinary2BCDhumid/N17 ),
    .O(Mmux_LCD_2_mux0000682)
  );
  MUXF5   Mmux_LCD_2_mux0000682_f5 (
    .I0(N54),
    .I1(Mmux_LCD_2_mux0000682),
    .S(\theNewCounter/counter_reg [0]),
    .O(LCD_2_mux0000[1])
  );
  LUT4 #(
    .INIT ( 16'h989A ))
  Mmux_LCD_1_mux000091381 (
    .I0(\theBinary2BCDhumid/N8 ),
    .I1(\dht11_driver/output_temp [1]),
    .I2(\theBinary2BCDhumid/Madd__add0011_lut [3]),
    .I3(\theBinary2BCDhumid/Madd__add0011_lut [2]),
    .O(Mmux_LCD_1_mux00009138)
  );
  MUXF5   Mmux_LCD_1_mux00009138_f5 (
    .I0(N58),
    .I1(Mmux_LCD_1_mux00009138),
    .S(\theNewCounter/counter_reg [0]),
    .O(LCD_1_mux0000[2])
  );
  LUT4 #(
    .INIT ( 16'h3626 ))
  Mmux_LCD_1_mux000061321 (
    .I0(\theBinary2BCDhumid/Madd__add0011_lut [3]),
    .I1(\dht11_driver/output_temp [1]),
    .I2(\theBinary2BCDhumid/Madd__add0011_lut [2]),
    .I3(\theBinary2BCDhumid/N8 ),
    .O(Mmux_LCD_1_mux00006132)
  );
  MUXF5   Mmux_LCD_1_mux00006132_f5 (
    .I0(N60),
    .I1(Mmux_LCD_1_mux00006132),
    .S(\theNewCounter/counter_reg [0]),
    .O(LCD_1_mux0000[1])
  );
  LUT4 #(
    .INIT ( 16'h5062 ))
  Mmux_LCD_1_mux0000121321 (
    .I0(\theBinary2BCDhumid/Madd__add0011_lut [2]),
    .I1(\theBinary2BCDhumid/N8 ),
    .I2(\theBinary2BCDhumid/Madd__add0011_lut [3]),
    .I3(\dht11_driver/output_temp [1]),
    .O(Mmux_LCD_1_mux000012132)
  );
  MUXF5   Mmux_LCD_1_mux000012132_f5 (
    .I0(N62),
    .I1(Mmux_LCD_1_mux000012132),
    .S(\theNewCounter/counter_reg [0]),
    .O(LCD_1_mux0000[3])
  );
  LUT4 #(
    .INIT ( 16'h3C6C ))
  Mmux_LCD_2_mux000031521 (
    .I0(\theBinary2BCDhumid/N8 ),
    .I1(\theBinary2BCDhumid/Madd__add0011_lut [3]),
    .I2(\theBinary2BCDhumid/Madd__add0011_lut [2]),
    .I3(\dht11_driver/output_temp [1]),
    .O(Mmux_LCD_2_mux00003152)
  );
  MUXF5   Mmux_LCD_2_mux00003152_f5 (
    .I0(N64),
    .I1(Mmux_LCD_2_mux00003152),
    .S(\theNewCounter/counter_reg [0]),
    .O(LCD_2_mux0000[0])
  );
  LUT3_L #(
    .INIT ( 8'hBF ))
  \dht11_driver/state_FSM_FFd2-In_SW0  (
    .I0(N43),
    .I1(\dht11_driver/state_FSM_FFd3_815 ),
    .I2(\dht11_driver/state_cmp_eq0002 ),
    .LO(N38)
  );
  LUT3_D #(
    .INIT ( 8'h40 ))
  \dht11_driver/state_cmp_eq00009  (
    .I0(\dht11_driver/clock_count [2]),
    .I1(\dht11_driver/clock_count [8]),
    .I2(\dht11_driver/clock_count [12]),
    .LO(N128),
    .O(\dht11_driver/state_cmp_eq00009_845 )
  );
  LUT3_D #(
    .INIT ( 8'h80 ))
  \dht11_driver/state_cmp_eq000018  (
    .I0(\dht11_driver/state_cmp_eq00001_wg_cy [6]),
    .I1(\dht11_driver/state_cmp_eq00004_844 ),
    .I2(\dht11_driver/state_cmp_eq00009_845 ),
    .LO(N129),
    .O(\dht11_driver/state_cmp_eq0000 )
  );
  LUT4_L #(
    .INIT ( 16'h0001 ))
  \dht11_driver/state_cmp_eq000120  (
    .I0(\dht11_driver/clock_count [12]),
    .I1(\dht11_driver/clock_count [8]),
    .I2(\dht11_driver/clock_count [13]),
    .I3(\dht11_driver/clock_count [14]),
    .LO(\dht11_driver/state_cmp_eq000120_848 )
  );
  LUT3_D #(
    .INIT ( 8'h40 ))
  \dht11_driver/data_count_mux0000<0>21  (
    .I0(N43),
    .I1(\dht11_driver/state_FSM_FFd3_815 ),
    .I2(\dht11_driver/Mcompar_state_cmp_gt0000_cy [11]),
    .LO(N130),
    .O(N2)
  );
  LUT4_D #(
    .INIT ( 16'hFFCE ))
  \dht11_driver/clock_count_mux0000<0>127  (
    .I0(\dht11_driver/state_FSM_FFd8_825 ),
    .I1(\dht11_driver/clock_count_mux0000<0>113_495 ),
    .I2(\dht11_driver/state_cmp_eq0001 ),
    .I3(N50),
    .LO(N131),
    .O(N0)
  );
  LUT3_L #(
    .INIT ( 8'h08 ))
  \dht11_driver/state_FSM_FFd4-In_SW2  (
    .I0(\dht11_driver/state_FSM_FFd3_815 ),
    .I1(\dht11_driver/Mcompar_state_cmp_gt0000_cy [11]),
    .I2(\dht11_driver/state_cmp_eq0002 ),
    .LO(N68)
  );
  LUT4_D #(
    .INIT ( 16'hA3F3 ))
  \dht11_driver/data_count_mux0000<0>11  (
    .I0(N43),
    .I1(\dht11_driver/state_FSM_FFd11_811 ),
    .I2(\dht11_driver/state_FSM_FFd3_815 ),
    .I3(\dht11_driver/Mcompar_state_cmp_gt0000_cy [11]),
    .LO(N132),
    .O(N1)
  );
  LUT4_D #(
    .INIT ( 16'hFFCE ))
  \dht11_driver/clock_count_mux0000<0>127_1  (
    .I0(\dht11_driver/state_FSM_FFd8_825 ),
    .I1(\dht11_driver/clock_count_mux0000<0>113_495 ),
    .I2(\dht11_driver/state_cmp_eq0001 ),
    .I3(N50),
    .LO(N133),
    .O(\dht11_driver/clock_count_mux0000<0>127_496 )
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

