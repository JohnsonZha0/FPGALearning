module xiaochekong(key,ENA,clk,zuo1,zuo2,you1,you2,en1,en2,feng,beep,led1);//
input[4:1] key;
input ENA;
output led1;
output zuo1,zuo2,you1,you2,en1,en2,feng;
reg    zuo1,zuo2,you1,you2,en1,en2,feng;
input	clk;							//系统时钟
output beep;
reg beep;							//蜂鸣器输出端				
reg beep_r;
reg led1;								
reg[27:0] count;					

always@(posedge clk)
	begin
		count <= count + 1'b1;
	end

always @(count[9])
	begin
		beep_r = !(count[13]&count[24]&count[27]);
	end

always @(key)  
    begin 
		if(ENA==1) 
			begin 
				en1<=0;en2<=0;zuo2<=0;you2<=0;you1<=0;zuo1<=0;beep<=0;led1<=1; 
			end
		else 
			begin
				case(key)  
					4'b1000:
						begin 
							en1<=1;en2<=1;zuo2<=0;you2<=0;you1<=1;zuo1<=1;feng<=1;beep<=beep_r;led1<=0;
						end
					4'b0100:
						begin 
							en1<=1;en2<=1;zuo2<=1;you2<=1;you1<=0;zuo1<=0;feng<=1;beep<=beep_r;led1<=0;
						end
					4'b0010:
						begin 
							en1<=1;en2<=1;zuo2<=0;you2<=0;you1<=1;zuo1<=0;feng<=1;beep<=beep_r;led1<=0;
						end
					4'b0001:
						begin
							en1<=1;en2<=1;zuo2<=0;you2<=0;you1<=0;zuo1<=1;feng<=1;beep<=beep_r;led1<=0;
						end
					4'b0011:
						begin 
							en1<=0;en2<=0;zuo2<=0;you2<=0;you1<=0;zuo1<=0;feng<=0;beep<=beep_r;led1<=0;
						end
					default:
						begin 
							en1<=0;en2<=0;zuo2<=0;you2<=0;you1<=0;zuo1<=0;feng<=1;beep<=0;led1<=1;
						end
				endcase
			end
	end
endmodule   
