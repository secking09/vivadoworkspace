`timescale 1ns / 1ps


module coeff_bk #(

    parameter RADIUS = 10,
    parameter A_FRACBITS = 20,
    parameter DIVIDER_FRACTION = 2
  )
  (
    input clk,
    input reset_n,
    input valid_in,
    input [SIGI_WIDTH-1:0] SigIi,
    input signed [4+A_FRACBITS-DIVIDER_FRACTION-1:0] ak_in,
    output reg valid_out,
    output reg signed [4+A_FRACBITS-DIVIDER_FRACTION-1:0] ak_out,
    output reg signed [SIGI_WIDTH+A_FRACBITS+SIGI_WIDTH+2-20:0] bk_out
  );


  parameter SIGI_WIDTH   = $clog2((2*RADIUS+1)*(2*RADIUS+1))+8;
  parameter ROWS = 512;
  parameter COLS = 512;
  parameter ROWBITS = $clog2(ROWS);
  parameter COLBITS = $clog2(COLS);

  wire signed [SIGI_WIDTH:0] SigIi_signed = {1'b0, SigIi};
  wire signed [SIGI_WIDTH+A_FRACBITS:0] SigIi_extended = SigIi_signed << A_FRACBITS;

  wire signed [SIGI_WIDTH+A_FRACBITS+SIGI_WIDTH+2:0] akIi;
  wire signed [SIGI_WIDTH+A_FRACBITS+SIGI_WIDTH+2:0] result;


  assign  akIi = SigIi_signed * ak_in;
  assign  result = SigIi_extended - akIi;

  always @(posedge clk or negedge reset_n)
  begin
    if(!reset_n)
    begin

      ak_out <= 0;
      bk_out <= 0;
      valid_out <= 0;
    end
    else
    begin
      ak_out <= ak_in;
      valid_out <= valid_in;
      bk_out <= result >> 20;
    end
  end


endmodule
