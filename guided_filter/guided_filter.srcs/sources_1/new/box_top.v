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
    parameter RADIUS = 5,
    parameter ROWS = 512,
    parameter COLS = 512
  )(
    input clk,
    input rst_n,

    // Signals for IIE module
    input [7:0] Iq,  // Example signal, replace with correct input width
    input [7:0] Is,  // Example signal, replace with correct input width
    input valid_in,  // Signal to indicate valid input

    // Signals from IIE to be connected to RAM
    output [SIGI_WIDTH-1:0] SigIi,
    output [SIGII_WIDTH-1:0] SigIiIi,
    output valid_out
  );

  parameter SUM_BITS     = $clog2((2*RADIUS+1)*(COLS+4*RADIUS))+8;
  parameter SUM_I_SQUARE = $clog2((2*RADIUS+1)*(COLS+4*RADIUS))+16;
  parameter SIGI_WIDTH   = $clog2((2*RADIUS+1)*(2*RADIUS+1))+8;
  parameter SIGII_WIDTH  = $clog2((2*RADIUS+1)*(2*RADIUS+1))+16;
  parameter ROWBITS = $clog2(ROWS);
  parameter COLBITS = $clog2(COLS);

  wire wen_w;
  wire [COLBITS-1:0] waddr_w;
  wire [COLBITS-1:0] raddr1_w;
  wire [COLBITS-1:0] raddr2_w;
  wire ren1_w;
  wire ren2_w;


  reg [15:0] IqIq;
  reg [15:0] IsIs;
  reg valid_in_reg;
  reg [7:0] Iq_reg;
  reg [7:0] Is_reg;


  wire valid_out_sigIiIi;
  wire valid_out_sigIi;






  always @(posedge clk or negedge rst_n)
  begin

    if(!rst_n)
    begin

      IqIq <= 16'b0;
      IsIs <= 16'b0;
      valid_in_reg  <= 0;
      Iq_reg        <= 0;
      Is_reg        <= 0;

    end
    else
    begin

      IqIq          <= Iq * Iq;
      IsIs          <= Is * Is;
      valid_in_reg  <= valid_in;
      Iq_reg        <= Iq;
      Is_reg        <= Is;

    end
  end





  // Instance of IIE (Integral Image Engine)
  IIE #(
        .IMAGE_WIDTH(8),
        .RADIUS(RADIUS),
        .INTEGRAL_WIDTH(SUM_BITS),
        .SUM_BITS(SIGI_WIDTH),
        .ROWS(ROWS),
        .COLS(COLS)
      ) IIE_Ii (
        .clk(clk),
        .reset(rst_n),
        .Iq(Iq_reg),
        .Is(Is_reg),
        .valid_in(valid_in_reg),
        .SigIi(SigIi),
        .valid_out(valid_out_sigIi),
        .wen(wen_w),
        .ren1(ren1_w),
        .ren2(ren2_w),
        .waddr(waddr_w),
        .raddr1(raddr1_w),
        .raddr2(raddr2_w),
        .wdata(wdata_w_Ii),
        .rdata1(rdata1_w_Ii),
        .rdata2(rdata2_w_Ii)
      );

  IIE #(
        .IMAGE_WIDTH(16),
        .RADIUS(RADIUS),
        .INTEGRAL_WIDTH(SUM_I_SQUARE),
        .SUM_BITS(SIGII_WIDTH),
        .ROWS(ROWS),
        .COLS(COLS)
      ) IIE_IiIi (
        .clk(clk),
        .reset(rst_n),
        .Iq(IqIq),
        .Is(IsIs),
        .valid_in(valid_in_reg),
        .SigIi(SigIiIi),
        .valid_out(valid_out_sigIiIi),
        .wen(),
        .ren1(),
        .ren2(),
        .waddr(),
        .raddr1(),
        .raddr2(),
        .wdata(wdata_w_IiIi),
        .rdata1(rdata1_w_IiIi),
        .rdata2(rdata2_w_IiIi)
      );


  wire [SUM_BITS-1:0] wdata_w_Ii;
  wire [SUM_BITS-1:0] rdata1_w_Ii;
  wire [SUM_BITS-1:0] rdata2_w_Ii;

  wire [SUM_I_SQUARE-1:0] wdata_w_IiIi;
  wire [SUM_I_SQUARE-1:0] rdata1_w_IiIi;
  wire [SUM_I_SQUARE-1:0] rdata2_w_IiIi;



  // RAM instance
  RAM_top #(
            .DATA_WIDTH(SUM_BITS+SUM_I_SQUARE), // Total width of the concatenated data
            .WORD_WIDTH(COLS)
          ) mem (
            .clk(clk),
            .rst_n(rst_n),
            .wen(wen_w),
            .waddr(waddr_w),
            .wdata({wdata_w_Ii,wdata_w_IiIi}),  // Concatenated write data
            .ren1(ren1_w),
            .raddr1(raddr1_w),
            .rdata1({rdata1_w_Ii,rdata1_w_IiIi}),  // Concatenated read data
            .ren2(ren2_w),
            .raddr2(raddr2_w),
            .rdata2({rdata2_w_Ii,rdata2_w_IiIi})   // Concatenated read data
          );

  // Additional signals like `wdata_Ii`, `wdata_pi`, `wdata_IiIi`, `wdata_Iipi` should be
  // properly defined or sourced from other parts of your design.

endmodule
