/*module biaojue(a,out);
input [5:0]a;
output reg [1:0]out;
integer i,count1,count2;
always@(*)
 begin
  count1=0;
  count2=0;
  i=0;
  while(i<4)
   begin
	 if(a[i])
	  count1=count1+1;//决定通过的人数
	  else
	  count2=count2+1;//表决不通过的人数
	  i=i+1;
	end
	if(count1==count2)out=2'b00;
	else if(count1<count2)out=2'b00;
	else if(count1>count2)out=2'b01;//或者用if一步实现
 end
endmodule

*/
module biaojue(
input a,b,c,d,e,
output f
);
assign f=a&b&c||a&b&d||a&b&e||a&c&d||a&c&e||
a&d&e||b&c&d||b&c&e||b&d&e||c&d&e;//直接进行逻辑运算
endmodule