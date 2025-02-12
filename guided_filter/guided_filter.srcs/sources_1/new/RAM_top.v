`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/10/2025 05:53:18 PM
// Design Name: 
// Module Name: RAM_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module RAM_top #(parameter DATA_WIDTH=24, parameter WORD_WIDTH=1080)
(clk, rst_n, wen, waddr, wdata, ren1, raddr1, rdata1, ren2, raddr2, rdata2);

parameter ADDR_WIDTH = $clog2(WORD_WIDTH)-1;

input wen, ren1, ren2, clk, rst_n;
input [ADDR_WIDTH:0] waddr, raddr1, raddr2;
input [(DATA_WIDTH-1):0] wdata;
output [(DATA_WIDTH-1):0] rdata1, rdata2;
	
wire ren_even = (ren1&&(!raddr1[0])) || (ren2&&(!raddr2[0]));
wire ren_odd  = (ren1&&(raddr1[0]))  || (ren2&&(raddr2[0]));
wire [ADDR_WIDTH-1:0] raddr_even = (ren1&&(!raddr1[0]))?(raddr1[(ADDR_WIDTH):1]):(raddr2[(ADDR_WIDTH):1]);
wire [ADDR_WIDTH-1:0] raddr_odd  = (ren1&&(raddr1[0]))? (raddr1[(ADDR_WIDTH):1]):(raddr2[(ADDR_WIDTH):1]);

wire [(DATA_WIDTH-1):0] rdata_even, rdata_odd;

//pipelined memory address to match output data
reg raddr1_is_odd;

assign rdata1 = (raddr1_is_odd)?rdata_odd:rdata_even;
assign rdata2 = (raddr1_is_odd)?rdata_even:rdata_odd;

wire wen_even = (wen&&(!waddr[0]));
wire wen_odd  = (wen&&(waddr[0]));


always@(posedge clk or negedge rst_n)begin
	if(!rst_n)begin
		raddr1_is_odd <= 0;
	end
	else begin
		raddr1_is_odd <= raddr1[0];
	end
end


RAM  #(DATA_WIDTH, WORD_WIDTH>>1) register_file_even	//even addr (0, 2, 4, 6)
(.clk(clk), .rst_n(rst_n), .wen(wen_even), .waddr(waddr[(ADDR_WIDTH):1]), .wdata(wdata), .ren(ren_even), .raddr(raddr_even), .rdata(rdata_even));

RAM  #(DATA_WIDTH, WORD_WIDTH>>1) register_file_odd //odd addr (1, 3, 5, 7)
(.clk(clk), .rst_n(rst_n), .wen(wen_odd), .waddr(waddr[(ADDR_WIDTH):1]), .wdata(wdata), .ren(ren_odd), .raddr(raddr_odd), .rdata(rdata_odd));

endmodule
