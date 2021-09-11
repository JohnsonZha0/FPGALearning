`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:04:10 04/09/2021 
// Design Name: 
// Module Name:    addsub 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module addsub(
input [3:0] A,
input [3:0] B,
output reg [3:0] Y1,
output reg [3:0] Y2 
);

always @(A or B)
begin
Y1=A+B;
Y2=A-B;
end
endmodule
