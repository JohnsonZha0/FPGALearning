`timescale 1ns/1ns
module car_tb;

reg [3:0] DIN0;
reg DIN1;
reg [3:0] DIN2;
reg EN_BIZHANG;
reg EN_BIZHANG1;
reg EN_CYCLE;
reg EN_XUNJI;
reg EN_YAOKONG;
reg clk;
reg [4:1] key;                                               
wire DIG;
wire [7:0] SEG;
wire beep;
wire en1;
wire en2;
wire feng;
wire led1;
wire you1;
wire you2;
wire zuo1;
wire zuo2;

initial                                                
	begin                                                  
	   DIN0=4'b0000;DIN1=1'b0;DIN2=4'b0000;
	   EN_BIZHANG=0;EN_BIZHANG1=0;EN_CYCLE=0;EN_XUNJI=0;EN_YAOKONG=0;clk=0;key=4'b0000;                                         
	   /*#1000 EN_XUNJI=1;   
	    DIN0[0]={$random}%2;
	    DIN0[1]={$random}%2;
	    DIN0[2]={$random}%2;
            DIN0[3]={$random}%2;	 
           #50000 EN_XUNJI=0;
*/
           #10000 $stop;
	end  
    always #50 clk=~clk;
    car i1 (  
	.DIG(DIG),
	.DIN0(DIN0),
	.DIN1(DIN1),
	.DIN2(DIN2),
	.EN_BIZHANG(EN_BIZHANG),
	.EN_BIZHANG1(EN_BIZHANG1),
	.EN_CYCLE(EN_CYCLE),
	.EN_XUNJI(EN_XUNJI),
	.EN_YAOKONG(EN_YAOKONG),
	.SEG(SEG),
	.beep(beep),
	.clk(clk),
	.en1(en1),
	.en2(en2),
	.feng(feng),
	.key(key),
	.led1(led1),
	.you1(you1),
	.you2(you2),
	.zuo1(zuo1),
	.zuo2(zuo2)
);                                          
endmodule