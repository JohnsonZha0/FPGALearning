module LED (key,sw,led);
input [3:0] key;
input [3:0] sw;
output [7:0] led;
assign led = {key,sw};
endmodule