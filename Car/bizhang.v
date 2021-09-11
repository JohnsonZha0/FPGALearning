module bizhang(EN_D,DIN1,zuo1,zuo2,you1,you2,en1,en2);
  input EN_D;
  input  DIN1;
  output zuo1,zuo2,you1,you2,en1,en2;
  reg zuo1,zuo2,you1,you2,en1,en2;
  always @(DIN1)  
    begin 
    if(EN_D) 
		begin 
			en1<=0;en2<=0;zuo2<=0;you2<=0;you1<=0;zuo1<=0; 
		end
    else
       case(DIN1) 
          0:
				begin 
					en1<=1;en2<=1;zuo2<=1;you2<=1;you1<=0;zuo1<=0;
				end  
          1:
				begin 
					en1<=1;en2<=1;you2<=0;you1<=1;zuo2<=0;zuo1<=1;
				end
          default:
				begin 
					en1<=0;en2<=0;zuo2<=0;you2<=0;you1<=0;zuo1<=0;
				end
       endcase
    end
endmodule
