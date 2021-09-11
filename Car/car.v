// Copyright (C) 2017  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"
// CREATED		"Thu May 20 11:01:38 2021"

module car(clk,EN_BIZHANG,EN_YAOKONG,EN_CYCLE,EN_XUNJI,EN_BIZHANG1,DIN1,DIN0,DIN2,key,feng,beep,zuo1,zuo2,you1,you2,en1,en2,DIG,led1,SEG);


input wire	clk;
input wire	EN_BIZHANG;
input wire	EN_YAOKONG;
input wire	EN_CYCLE;
input wire	EN_XUNJI;
input wire	EN_BIZHANG1;
input wire	DIN1;
input wire	[3:0] DIN0;
input wire	[3:0] DIN2;
input wire	[4:1] key;

output wire	feng;
output wire	beep;
output wire	zuo1;
output wire	zuo2;
output wire	you1;
output wire	you2;
output wire	en1;
output wire	en2;
output wire	DIG;
output wire	led1;
output wire	[7:0] SEG;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_36;
wire	SYNTHESIZED_WIRE_37;
wire	SYNTHESIZED_WIRE_38;
wire	SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_40;
wire	SYNTHESIZED_WIRE_41;
wire	SYNTHESIZED_WIRE_42;
wire	SYNTHESIZED_WIRE_43;
wire	SYNTHESIZED_WIRE_44;
fenpin	b2v_inst(
	.clk(clk),
	.clk100(SYNTHESIZED_WIRE_39));
	defparam	b2v_inst.N = 500000;
bizhang	b2v_inst1(
	.EN_D(SYNTHESIZED_WIRE_0),
	.DIN1(DIN1),
	.zuo1(SYNTHESIZED_WIRE_19),
	.zuo2(SYNTHESIZED_WIRE_14),
	.you1(SYNTHESIZED_WIRE_10),
	.you2(SYNTHESIZED_WIRE_6),
	.en1(SYNTHESIZED_WIRE_2),
	.en2(SYNTHESIZED_WIRE_42));
	
//you1
assign	SYNTHESIZED_WIRE_25 = SYNTHESIZED_WIRE_9 | SYNTHESIZED_WIRE_10 | SYNTHESIZED_WIRE_11 | SYNTHESIZED_WIRE_12;
assign	you1 = SYNTHESIZED_WIRE_25 | SYNTHESIZED_WIRE_26;
//you2
assign	SYNTHESIZED_WIRE_27 = SYNTHESIZED_WIRE_5 | SYNTHESIZED_WIRE_6 | SYNTHESIZED_WIRE_7 | SYNTHESIZED_WIRE_8;
assign	you2 = SYNTHESIZED_WIRE_27 | SYNTHESIZED_WIRE_28;
//zuo1
assign	SYNTHESIZED_WIRE_21 = SYNTHESIZED_WIRE_17 | SYNTHESIZED_WIRE_18 | SYNTHESIZED_WIRE_19 | SYNTHESIZED_WIRE_20;
assign	zuo1 = SYNTHESIZED_WIRE_21 | SYNTHESIZED_WIRE_22;
//zuo2
assign	SYNTHESIZED_WIRE_23 = SYNTHESIZED_WIRE_13 | SYNTHESIZED_WIRE_14 | SYNTHESIZED_WIRE_15 | SYNTHESIZED_WIRE_16;
assign	zuo2 = SYNTHESIZED_WIRE_23 | SYNTHESIZED_WIRE_24;
//en1
assign	SYNTHESIZED_WIRE_29 = SYNTHESIZED_WIRE_1 | SYNTHESIZED_WIRE_2 | SYNTHESIZED_WIRE_3 | SYNTHESIZED_WIRE_4;
assign	en1 = SYNTHESIZED_WIRE_29 | SYNTHESIZED_WIRE_30;
//en2
assign	SYNTHESIZED_WIRE_32 = SYNTHESIZED_WIRE_41 | SYNTHESIZED_WIRE_42 | SYNTHESIZED_WIRE_43 | SYNTHESIZED_WIRE_44;
assign	en2 = SYNTHESIZED_WIRE_32 | SYNTHESIZED_WIRE_33;

bizhang1	b2v_inst2(
	.ENE(SYNTHESIZED_WIRE_31),
	.DIN2(DIN2),
	.zuo1(SYNTHESIZED_WIRE_22),
	.zuo2(SYNTHESIZED_WIRE_15),
	.you1(SYNTHESIZED_WIRE_11),
	.you2(SYNTHESIZED_WIRE_7),
	.en1(SYNTHESIZED_WIRE_3),
	.en2(SYNTHESIZED_WIRE_43)
);
xunji	b2v_inst3(
	.clk2(clk),
	.ENC(SYNTHESIZED_WIRE_34),
	.DIN(DIN0),
	.zuo1(SYNTHESIZED_WIRE_18),
	.zuo2(SYNTHESIZED_WIRE_16),
	.you1(SYNTHESIZED_WIRE_12),
	.you2(SYNTHESIZED_WIRE_8),
	.en1(SYNTHESIZED_WIRE_4),
	.en2(SYNTHESIZED_WIRE_44)
);
PWM	b2v_inst4(
	.clk1(clk),
	.ZF(SYNTHESIZED_WIRE_35),
	.SP(SYNTHESIZED_WIRE_36),
	.EN(SYNTHESIZED_WIRE_37),
	.zuo1(SYNTHESIZED_WIRE_20),
	.zuo2(SYNTHESIZED_WIRE_13),
	.you1(SYNTHESIZED_WIRE_9),
	.you2(SYNTHESIZED_WIRE_5),
	.en1(SYNTHESIZED_WIRE_1),
	.en2(SYNTHESIZED_WIRE_41)
);
zhouqi	b2v_inst5(
	.ENB(SYNTHESIZED_WIRE_38),
	.CLK(SYNTHESIZED_WIRE_39),
	.ZF(SYNTHESIZED_WIRE_35),
	.SP(SYNTHESIZED_WIRE_36),
	.EN(SYNTHESIZED_WIRE_37)
);
	defparam	b2v_inst5.H = 199;
	defparam	b2v_inst5.N = 399;
	defparam	b2v_inst5.s0 = 0;
	defparam	b2v_inst5.s1 = 1;
	defparam	b2v_inst5.s2 = 2;
	defparam	b2v_inst5.s3 = 3;
	defparam	b2v_inst5.s4 = 4;
	defparam	b2v_inst5.s5 = 5;
	defparam	b2v_inst5.s6 = 6;
xiaochekong	b2v_inst6(
	.ENA(SYNTHESIZED_WIRE_40),
	.clk(clk),
	.key(key),
	.zuo1(SYNTHESIZED_WIRE_17),
	.zuo2(SYNTHESIZED_WIRE_24),
	.you1(SYNTHESIZED_WIRE_26),
	.you2(SYNTHESIZED_WIRE_28),
	.en1(SYNTHESIZED_WIRE_30),
	.en2(SYNTHESIZED_WIRE_33),
	.feng(feng),
	.beep(beep),
	.led1(led1));
switch	b2v_inst7(
	.EN_BIZHANG1(EN_BIZHANG),
	.EN_YAOKONG(EN_YAOKONG),
	.EN_CYCLE(EN_CYCLE),
	.EN_XUNJI(EN_XUNJI),
	.EN_BIZHANG(EN_BIZHANG1),
	.ENA(SYNTHESIZED_WIRE_40),
	.ENB(SYNTHESIZED_WIRE_38),
	.ENC(SYNTHESIZED_WIRE_34),
	.EN_D(SYNTHESIZED_WIRE_0),
	.ENE(SYNTHESIZED_WIRE_31),
	.DIG(DIG),
	.SEG(SEG));
//


endmodule
