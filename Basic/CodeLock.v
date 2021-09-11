module CodeLock(q,u,n,b,led);
input wire q,u,n,b;    
assign code = {q,u,n,b}; 
output wire led;   
wire [3:0] code;   
reg open;  
always @(code)	
		begin
			if(code == 4'b0101)
				begin
					open  = 1'b1;
				end				
			else
				begin
					open  = 1'b0;
				end
		end
assign led =~open; //led 0==open 1==开
endmodule