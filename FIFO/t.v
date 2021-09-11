`timescale 1ns / 1ps
`define FIFO_SIZE 8
`include "sram.v" // 有的仿真工具不需要加这句 , 只要 sram.v 模块编译过就可以了 `timescale 1ns/1ns
module t;
	reg [7:0] in_data; //FIFO数据总线
	reg fiford,fifowr; //FIFO控制信号
	wire[7:0] out_data;
	wire nfull, nempty; //FIFO状态信号
	reg clk,rst;
	wire[7:0] sram_data; //SRAM数据总线
	wire[10:0] address; //SRAM的地址总线
	wire rd,wr; //SRAM读写控制信号
	reg [7:0] data_buf[`FIFO_SIZE:0]; //数据缓存,用于结果检查
	integer index; //用于读写 data_buf的指针
	//系统时钟
	initial clk=0;
	always #25 clk=~clk;
	//测试激励序列
	initial
		begin
			fiford=1;
			fifowr=1;
			rst=1;
			#40 rst=0;
			#42 rst=1;
			if (nempty) $display($time,"Error: FIFO be empty, nempty should be low.\n");
			//连续写 FIFO
			index = 0;
			repeat(`FIFO_SIZE) 
				begin
				data_buf[index]=$random;
				write_fifo(data_buf[index]);
				index = index + 1;
				end
			if (nfull) $display($time,"Error: FIFO full, nfull should be low.\n");
			repeat(2) write_fifo($random);
			#200
			//连续读 FIFO
			index=0;
			read_fifo_compare(data_buf[index]);
			if (~nfull) $display($time,"Error: FIFO not full, nfull should be high.\n");
			repeat(`FIFO_SIZE-1 )
				begin
				index = index + 1;
				read_fifo_compare(data_buf[index]);
				end
			if (nempty) $display($time,"Error: FIFO be empty, nempty should be low.\n");
			repeat(2) read_fifo_compare(8'bx);
			reset_fifo;
			//写后读 FIFO
			repeat(`FIFO_SIZE*2)
			begin
				data_buf[0] = $random;
				write_fifo(data_buf[0]);
				read_fifo_compare(data_buf[0]);
			end
			//异常操作
			reset_fifo;
			read_fifo_compare(8'bx);
			write_fifo(data_buf[0]);
			read_fifo_compare(data_buf[0]);
			$stop;
		end
fifo_interface fifo_interface(.in_data(in_data), .out_data(out_data),
										.fiford(fiford),   .fifowr(fifowr),
										.nfull(nfull),     .nempty(nempty),
										.address(address), .sram_data(sram_data),
                              .rd(rd),           .wr(wr),
										.clk(clk),.rst(rst))
;
sram m1( .Address(address),.Data(sram_data),
			.SRG(rd), //SRAM读使能
			.SRE(1'b0), //SRAM片选 , 低有效
			.SRW(wr)); //SRAM写使能
task write_fifo;
input [7:0] data;
	begin
		in_data=data;
		#50 fifowr=0; //往 SRAM 中写数
		#200 fifowr=1;
		#50;
	end
endtask
task read_fifo_compare;
input [7:0] data;
	begin
		#50 fiford=0; //从 SRAM 中读数
		#200 fiford=1;
	if (out_data != data)
			$display($time,"Error: Data retrieved (%h not match the one stored (%h. \n", out_data, data);
	#50;
	end
endtask
task reset_fifo;
	begin
		#40 rst=0;
		#40 rst=1;
	end
endtask
endmodule



