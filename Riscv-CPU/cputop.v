`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:47:56 06/16/2021
// Design Name:   cpu
// Module Name:   E:/School/DC_EXP/exp13_Riscv_CPU/cputop.v
// Project Name:  exp13_Riscv_CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cpu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cputop;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire halt;
	wire rd;
	wire wr;
	wire [12:0] addr;
	wire [2:0] opcode;
	wire fetch;
	wire [12:0] ir_addr;
	wire [12:0] pc_addr;

	// Bidirs
	wire [7:0] data;

	// Instantiate the Unit Under Test (UUT)
	cpu uut (
		.clk(clk), 
		.reset(reset), 
		.halt(halt), 
		.rd(rd), 
		.wr(wr), 
		.addr(addr), 
		.data(data), 
		.opcode(opcode), 
		.fetch(fetch), 
		.ir_addr(ir_addr), 
		.pc_addr(pc_addr)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

