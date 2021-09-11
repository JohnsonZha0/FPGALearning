module hxd(clk,led,rst_n);
input clk;
input rst_n;
output reg led;

parameter T =400_00;
localparam s0 =1'b0;
localparam s1 =1'b1;

reg[25:0]lw;
reg[25:0]hw;
reg[16:0]count;

	
always@(posedge clk or negedge rst_n)
if(!rst_n)
	begin
		count <=1'b0;
	end
else
	begin
	if(count==T-1)
		begin
			count <=1'b0;
		end
	else
		begin
			count <=count +1'b1;
		end
end

wire flag;
assign flag =(count ==T-1)?1'b1:1'b0;

reg state;
 // 通过在一个周期中加减高低电平的时间来产生PWM波
always@(posedge clk or negedge rst_n)
if(!rst_n)
begin
	lw <=T -100;
	hw <=100;
	state <=1'b0;
end
 else
 begin
 case(state)
 s0:begin
	if(flag &&(lw >100))//低 时间
		begin
		lw <=lw -100;
		hw <=hw +100;
		state <=s0;
	end
 else if(flag &&(lw ==100))
 begin
 hw <=hw -100;
 lw <=lw +100;
state <=s1;
 end
 else
begin
 hw <=hw;
 lw <=lw;
 state <=s0;
 end
end
s1:begin
 if(flag &&(hw >100))//高 时间
 begin
 hw <=hw -100;
 lw <=lw +100;
 state <=s1;
 end
 else if(flag &&(hw ==100))
 begin
 hw <=hw +100;
 lw <=lw -100;
 state <=s0;
 end
 else
begin
hw <=hw;
lw <=lw;
 state <=s1;
end
end
default:state <=s0;
endcase
end
 
reg[25:0]cnt;
reg sum;
 
always@(posedge clk or negedge rst_n)//分频模块，产生不同占空比的LED亮的时间
if(!rst_n)
	begin
		sum <=1'b0;
		led <=1'b1;
		cnt <=1'b0;
	end
else
case(sum)
  s0:begin
	if(cnt <hw -1)//高电平的时间
		begin
			led<=1'b0;
			cnt<=cnt +1'b1;
		end
	else
		begin
			cnt<=1'b0;
			sum<=s1;
		end
	end
  s1:begin
	if(cnt<lw-1)//低电平的时间
		begin
			led<=1'b1;
			cnt<=cnt +1'b1;
		end
	else
		begin
			cnt<=1'b0;
			sum<=s0;
		end
	end
	default:sum<=s0;
	endcase
endmodule