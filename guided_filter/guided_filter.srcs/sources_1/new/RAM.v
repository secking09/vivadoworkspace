`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 02/10/2025 05:51:44 PM
// Design Name:
// Module Name: RAM
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


module RAM
  #(parameter DATA_WIDTH=100, parameter WORD_WIDTH=1080)
   (clk, rst_n, wen, waddr, wdata, ren, raddr, rdata);

  parameter ADDR_WIDTH = $clog2(WORD_WIDTH);	//9

  input wen, ren, clk, rst_n;
  input [(ADDR_WIDTH-1):0] waddr, raddr;
  input [(DATA_WIDTH-1):0] wdata;
  output reg [(DATA_WIDTH-1):0] rdata;

  integer i;

  // Declare the RAM variable
  reg [DATA_WIDTH-1:0] ram[WORD_WIDTH-1:0];
  // Port A
  always @ (posedge clk or negedge rst_n)
  begin
    if(!rst_n)
    begin
      for(i=0; i< WORD_WIDTH; i= i+1)
      begin
        ram[i] <= 0;
        rdata  <= 32'b0;
      end
    end
    else
    begin
      if (wen)
      begin
        ram[waddr] <= wdata;
      end
      if (ren)
      begin
        rdata <= ram[raddr];
      end
    end
  end
endmodule
