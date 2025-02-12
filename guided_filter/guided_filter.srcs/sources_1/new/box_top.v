`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 02/11/2025 12:12:29 PM
// Design Name:
// Module Name: box_top
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


module box_top #(
    // Parameters
    parameter RADIUS = 10,
    parameter INTEGRAL_WIDTH = 21,
    parameter III_BITS = 29,
    parameter SUM_BITS = 18,
    parameter ROWS = 512,
    parameter COLS = 512
  )(
    input clk,
    input rst_n,

    // Signals for IIE module
    input [7:0] Iq_pip,  // Example signal, replace with correct input width
    input [7:0] Is_pip,  // Example signal, replace with correct input width
    input valid_in_pip,  // Signal to indicate valid input

    // Signals from IIE to be connected to RAM
    output [SUM_BITS-1:0] SigIi,
    output valid_out
  );
  parameter ROWBITS = $clog2(ROWS);
  parameter COLBITS = $clog2(COLS);
  wire wen_w;
  wire [COLBITS-1:0] waddr_w;
  wire [COLBITS-1:0] raddr1_w;
  wire [COLBITS-1:0] raddr2_w;
  wire [INTEGRAL_WIDTH-1:0] wdata_w;
  wire ren1_w;
  wire ren2_w;
  wire [INTEGRAL_WIDTH-1:0] rdata1_w;
  wire [INTEGRAL_WIDTH-1:0] rdata2_w;







  // Instance of IIE (Integral Image Engine)
  IIE #(
        .IMAGE_WIDTH(8),
        .RADIUS(RADIUS),
        .INTEGRAL_WIDTH(INTEGRAL_WIDTH),
        .SUM_BITS(SUM_BITS),
        .ROWS(ROWS),
        .COLS(COLS)
      ) IIE_Ii (
        .clk(clk),
        .reset(rst_n),
        .Iq(Iq_pip),
        .Is(Is_pip),
        .valid_in(valid_in_pip),
        .SigIi(SigIi),
        .valid_out(valid_out),
        .wen(wen_w),
        .ren1(ren1_w),
        .ren2(ren2_w),
        .waddr(waddr_w),
        .raddr1(raddr1_w),
        .raddr2(raddr2_w),
        .wdata(wdata_w),
        .rdata1(rdata1_w),
        .rdata2(rdata2_w)
      );

  // RAM instance
  RAM_top #(
            .DATA_WIDTH(INTEGRAL_WIDTH), // Total width of the concatenated data
            .WORD_WIDTH(COLS)
          ) mem (
            .clk(clk),
            .rst_n(rst_n),
            .wen(wen_w),
            .waddr(waddr_w),
            .wdata(wdata_w),  // Concatenated write data
            .ren1(ren1_w),
            .raddr1(raddr1_w),
            .rdata1(rdata1_w),  // Concatenated read data
            .ren2(ren2_w),
            .raddr2(raddr2_w),
            .rdata2(rdata2_w)   // Concatenated read data
          );

  // Additional signals like `wdata_Ii`, `wdata_pi`, `wdata_IiIi`, `wdata_Iipi` should be
  // properly defined or sourced from other parts of your design.

endmodule
