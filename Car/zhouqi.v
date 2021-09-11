module zhouqi(ENB,CLK,ZF,SP,EN);
  input CLK;
  input ENB;
  output ZF;
  output SP;
  output EN;
  reg ZF; 
  reg SP;
  reg  EN;
  reg[24:0] counter;
  reg[4:0] a1; 
  parameter N=399,H=199,s0=0,s1=1,s2=2,s3=3,s4=4,s5=5,s6=6;
    always @( posedge CLK )
    begin
    if(ENB) 
		begin 
			EN<=0; 
		end
    else
  begin
   case(a1)  
    s0 :begin ZF<=1;
             SP<=1;EN<=1'b1;
              counter<=counter+1'b1;
              if(counter==N) begin counter<=0; a1<=s5; end
       end
    s1 : begin 

       ZF<=1;
             SP<=0;EN<=1'b1;
              counter<=counter+1'b1;
              if(counter==N) begin  counter<=0; a1<=s2; end 
       end
    s2 : begin 

       EN<=0;
              counter<=counter+1'b1;
              if(counter==H) begin counter<=0; a1<=s3; end
       end
    s3 : begin 
       ZF<=0;
             SP<=1;EN<=1'b1;
              counter<=counter+1'b1;
              if(counter==N) begin counter<=0; a1<=s6; end
       end      
      s4 : begin 
       ZF<=0;
             SP<=0;EN<=1'b1;
              counter<=counter+1'b1;
              if(counter==N) begin counter<=0; a1<=s0; end
       end 
       s5 : begin 
       EN<=0;
              counter<=counter+1'b1;
              if(counter==H) begin counter<=0; a1<=s1; end
       end 
       s6 : begin 
       EN<=0;
              counter<=counter+1'b1;
              if(counter==H) begin counter<=0; a1<=s4; end
       end 
       default : a1<=s0;       
    endcase
    end
    end
  endmodule 
