`timescale 1ns / 1ps
module rom(data,addr,read,ena);
output[7:0]data;
input[12:0]addr;
input ena;
input read;
reg[7:0] memory[13'h1fff:0];
wire[7:0] data;
assign data=(read&&ena)?memory[addr]:8'bzzzzzzzz;
endmodule

