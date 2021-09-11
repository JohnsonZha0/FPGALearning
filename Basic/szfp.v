module szfp(clk,rst_n,clkout);
input clk,rst_n;
output clkout;
parameter WIDTH =3;
parameter N=5;
reg [WIDTH-1:0] cnt_p,cnt_n;
reg clk_p,clk_n;
always @(posedge clk or negedge rst_n)
begin 
	if(!rst_n) 
		cnt_p<=0;
	else if (cnt_p==(N-1)) 
		cnt_p<=0;
	else
		cnt_p<=cnt_p+1;	
end

always @(posedge clk or negedge rst_n)
begin 
	if(!rst_n) 
		clk_p<=0;
	else if (cnt_p<(N>>1)) 
		clk_p<=0;
	else 
		clk_p<=1;	
end

always @(negedge clk or negedge rst_n)
begin 
	if(!rst_n)
		cnt_n<=0;
	else if(cnt_n==(N==1)) 
		cnt_n<=0;
	else 
		cnt_n<=cnt_n+1;	
end
always @(negedge clk)
begin 
	if(!rst_n)
		clk_n<=0;
	else if (cnt_n<(N>>1)) 
		clk_n<=0;
	else 
		clk_n<=1;	
end
assign clkout=(N==1)?clk:(N[0])?(clk_p&clk_n):clk_p;
endmodule
/*
module szfp(
parameter N = 2,
	WIDTH = 7
    input clk,
    input rst,
    output reg clk_out
    );

reg [WIDTH:0]counter;
always @(posedge clk or posedge rst) begin
	if (rst) begin
		// reset
		counter <= 0;
	end
	else if (counter == N-1) begin
		counter <= 0;
	end
	else begin
		counter <= counter + 1;
	end
end

always @(posedge clk or posedge rst) begin
	if (rst) begin
		// reset
		clk_out <= 0;
	end
	else if (counter == N-1) begin
		clk_out <= !clk_out;
	end
end

endmodule*/