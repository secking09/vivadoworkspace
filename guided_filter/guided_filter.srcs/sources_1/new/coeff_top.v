`timescale 1ns / 1ps

module coeff_top #(

    parameter RADIUS = 10,
    parameter A_FRACBITS = 20,
    parameter DIVIDER_FRACTION = 2

  )
  (
    input clk,
    input reset_n,
    input valid_in,
    output valid_out,
    input [SIGI_BITS-1:0]SigIi,
    input [SIGII_BITS-1:0] SigIiIi,
    output signed [4+A_FRACBITS-DIVIDER_FRACTION-1:0] ak,
    output signed [SIGI_BITS+A_FRACBITS+SIGI_BITS+2-20:0] bk

  );

  parameter SIGI_BITS = $clog2((2*RADIUS+1)*(2*RADIUS+1))+8;
  parameter SIGII_BITS = $clog2((2*RADIUS+1)*(2*RADIUS+1))+16;


  wire valid_out_w; // pipelined to bk_unit
  wire [SIGI_BITS-1:0] SigIi_out_w;// pipelined to bk unit
  wire signed [4+A_FRACBITS-DIVIDER_FRACTION-1:0] ak_out_w; // piped to bk unit



  coeff_ak #(RADIUS,A_FRACBITS,DIVIDER_FRACTION) ak_unit
           (

             .clk (clk),
             .reset_n (reset_n),
             .valid_in(valid_in),
             .valid_out(valid_out_w),
             .SigIi(SigIi),
             .SigIiIi(SigIiIi),
             .SigIi_out_pip(SigIi_out_w),
             .ak(ak_out_w)
           );

  coeff_bk #(RADIUS,A_FRACBITS,DIVIDER_FRACTION) bk_unit
           (
             .clk(clk),
             .reset_n(reset_n),
             .valid_in(valid_out_w),
             .SigIi(SigIi_out_w),
             .ak_in(ak_out_w),
             .valid_out(valid_out),
             .ak_out(ak),
             .bk_out(bk)
           );





endmodule
