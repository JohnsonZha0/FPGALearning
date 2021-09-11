module PWM(clk1,ZF,SP,EN,zuo1,zuo2,you1,you2,en1,en2);
input clk1;
input  ZF;
input SP;
input  EN;
output zuo1,zuo2,you1,you2,en1,en2;
reg zuo1,zuo2,you1,you2,en1,en2;
reg [29:0]j;
reg fout;
always @(posedge clk1) 
	begin 
	if(j>=200)
		j<=0;
	else 
		j<=j+1;
		if(j>=1&&j<80)
			fout<=0;
		else 
			if (j>=80&&j<=200)fout<=1;
end
//-------------------
always @( ZF or SP or EN )
  begin
    if(EN==0)
		begin
			en1<=0;en2<=0;zuo2<=0;you2<=0;you1<=0;zuo1<=0;
		end
    else
			case(ZF)  
				1'b1:
						case(SP)
							1'b1:
								begin 
									en1<=1;en2<=1;zuo2<=0;you2<=0;you1<=1;zuo1<=1;
								end
							0:
								begin
									en1<=fout;en2<=fout;zuo2<=0;you2<=0;you1<=1;zuo1<=1;                  
								end
						endcase
				0:
						case(SP)
							1'b1:
								begin 
									en1<=1;en2<=1;zuo2<=1;you2<=1;you1<=0;zuo1<=0;
								end
							0:
								begin 
									en1<=fout;en2<=fout;zuo2<=1;you2<=1;you1<=0;zuo1<=0;
								end 
						endcase
				endcase
  end
endmodule 
