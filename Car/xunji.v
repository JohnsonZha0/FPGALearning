module xunji(clk2,ENC,DIN,zuo1,zuo2,you1,you2,en1,en2);
input ENC,clk2;
input [3:0] DIN;
output zuo1,zuo2,you1,you2,en1,en2;

reg zuo1,zuo2,you1,you2,en1,en2;
reg fout;
reg [29:0]j;

always @(posedge clk2) 
	begin 
		if(j>=200)
			j<=0;
		else 
			j<=j+1;
			if(j>=1&&j<100)
				fout<=0;
			else 
				if(j>=100&&j<=200)
					fout<=1;
	end
always @(DIN)  
   begin 
       if(ENC) 
		     begin 
					en1<=0;en2<=0;zuo2<=0;you2<=0;you1<=0;zuo1<=0; 
			  end
       else
           case(DIN) 
					4'B0000:
						begin 
							en1<=fout;en2<=fout;zuo2<=0;you2<=0;you1<=1;zuo1<=1;
						end  
					4'B0001:
						begin 
							en1<=0;en2<=fout;you2<=0;you1<=1;zuo2<=0;zuo1<=0;
						end
					4'B0010:
						begin 
							en1<=0;en2<=fout;zuo2<=0;you2<=0;you1<=1;zuo1<=0;
						end
					4'B0011:
					   begin 
						   en1<=0;en2<=fout;you2<=0;you1<=1;zuo2<=0;zuo1<=0;
						end
               4'B0100:
					   begin 
						    en1<=fout;en2<=0;zuo2<=0;you2<=0;you1<=0;zuo1<=1;
						end
               4'B0101:
					   begin 
						    en1<=0;en2<=0;zuo2<=0;you2<=0;you1<=0;zuo1<=0;
						end
               4'B0110:
					   begin 
						    en1<=fout;en2<=fout;zuo2<=0;you2<=0;you1<=1;zuo1<=1;
					   end
               4'B0111:
					   begin 
						    en1<=0;en2<=fout;zuo2<=0;you2<=0;you1<=1;zuo1<=0;
					   end
               4'B1000:
					   begin 
						    en1<=fout;en2<=0;zuo2<=0;zuo1<=1;you1<=0;you2<=0;
						end
               4'B1001:
					   begin 
						    en1<=0;en2<=0;zuo2<=0;you2<=0;you1<=0;zuo1<=0;
					   end
               4'B1010:
					   begin 
						    en1<=0;en2<=0;zuo2<=0;you2<=0;you1<=0;zuo1<=0;
						end
               4'B1011:
					   begin 
						    en1<=0;en2<=0;zuo2<=0;you2<=0;you1<=0;zuo1<=0;
						end
               4'B1100:
				      begin 
						    en1<=fout;en2<=0;zuo2<=0;zuo1<=1;you1<=0;you2<=0;
						end
               4'B1101:
						begin 
							 en1<=0;en2<=0;zuo2<=0;you2<=0;you1<=0;zuo1<=0;
						end
					4'B1110:
						begin 
							 en1<=fout;en2<=0;zuo2<=0;you2<=0;you1<=0;zuo1<=1;
						end
					4'B1111:
						begin 
							 en1<=0;en2<=0;zuo2<=0;you2<=0;you1<=0;zuo1<=0;
						end
               default:
						begin 
							 en1<=0;en2<=0;zuo2<=0;you2<=0;you1<=0;zuo1<=0;
						end
       endcase
    end
endmodule 
