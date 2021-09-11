module fenpin(clk,clk100);  
input clk;
output clk100;
reg clk100;
reg[24:0] counter;
parameter N=50_000_0;

always@(posedge clk)
    begin
        counter<=counter+1'b1;
        if(counter==N/2-1)
           begin
             clk100<=~clk100;
             counter<=0;
           end
    end
endmodule  
