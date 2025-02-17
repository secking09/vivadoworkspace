`timescale 1ns / 1ps


module coeff_ak #(

    parameter RADIUS = 10,
    parameter FRACBITS = 20,
    parameter DIVIDER_FRACTION = 2
  )

  (
    input   clk,
    input   reset_n,
    input   valid_in,
    output  valid_out,
    input [SIGI_BITS-1:0] SigIi,
    input [SIGII_BITS-1:0] SigIiIi,
    output [SIGI_BITS-1:0] SigIi_out_pip,
    output reg signed [4+FRACBITS-DIVIDER_FRACTION-1:0] ak

  );

  parameter SIGI_BITS = $clog2((2*RADIUS+1)*(2*RADIUS+1))+8;
  parameter SIGII_BITS = $clog2((2*RADIUS+1)*(2*RADIUS+1))+16;
  parameter AREA_BITS = $clog2((2*RADIUS+1)*(2*RADIUS+1));
  parameter DENOM_BITS = SIGII_BITS+AREA_BITS+1;

  parameter SCALED_EPS = (36'd190406205);    //Scale the EPS so that we dont use redundant division blocks.

  parameter NUMOFROWS = 512 - RADIUS;
  parameter NUMOFCOLS = 512 - RADIUS;

  parameter ROWBITS = $clog2(NUMOFROWS);
  parameter COLBITS = $clog2(NUMOFCOLS);

  parameter NUM_STAGES = 10;



  reg [ROWBITS-1:0] row_count, row_count_nxt;
  reg [COLBITS-1:0] col_count, col_count_nxt;
  reg [AREA_BITS-1:0] area_count = (2*RADIUS+1)*(2*RADIUS+1);
  reg [SIGI_BITS-1:0] SigIi_reg;

  wire signed [DENOM_BITS-1:0] Ii2Area, IipiArea, IiIi, Iipi;
  wire signed [DENOM_BITS-1:0] dividend, divisor;

  wire signed [DENOM_BITS+FRACBITS-1:0] result; //20+31

  wire result_valid;


  reg signed [DENOM_BITS+FRACBITS-1:0] axi_dividend;
  reg  axi_dividend_valid;

  reg signed [DENOM_BITS-1:0] axi_divisor;
  reg  axi_divisor_valid;


  reg signed [4+FRACBITS-DIVIDER_FRACTION-1:0]	ak_nxt;

  //reg div_in_en;

  assign Ii2Area  = area_count*SigIiIi;
  assign IiIi     = SigIi*SigIi;
  assign divisor  = SCALED_EPS + Ii2Area - IiIi;
  assign dividend = Ii2Area - IiIi;

  always@(*)
  begin

    row_count_nxt = row_count;
    col_count_nxt = col_count;
    ak_nxt        = result[3+FRACBITS:DIVIDER_FRACTION]; //25 bit ?

    if (valid_in)
    begin
      row_count_nxt = (col_count==(NUMOFCOLS-1))?((row_count==(NUMOFROWS-1))?0:row_count+1):row_count;
      col_count_nxt = (col_count==(NUMOFCOLS-1))?0:col_count+1;
    end
  end
  always@(posedge clk or negedge reset_n)
  begin

    if(!reset_n)
    begin

      row_count             <= 0;
      col_count             <= 0;
      axi_dividend_valid    <= 0;
      axi_divisor_valid     <= 0;
      ak                    <= 0;
      axi_dividend          <= 0;
      SigIi_reg             <= 0;
      axi_divisor           <= 0;
    end
    else
    begin

      row_count             <= row_count_nxt;
      col_count             <= col_count_nxt;
      axi_dividend_valid    <= valid_in;
      SigIi_reg             <= SigIi;
      axi_divisor_valid     <= valid_in;
      axi_dividend          <= {dividend,{FRACBITS{1'b0}}};
      axi_divisor           <= divisor;
      ak                    <= ak_nxt;
    end
  end



  div_gen_0 divider_unit (
              .aclk(clk),                                      // input wire aclk
              .aresetn(reset_n),                                // input wire aresetn
              .s_axis_divisor_tvalid(axi_divisor_valid),    // input wire s_axis_divisor_tvalid
              .s_axis_divisor_tdata(axi_divisor),      // input wire [39 : 0] s_axis_divisor_tdata
              .s_axis_dividend_tvalid(axi_dividend_valid),  // input wire s_axis_dividend_tvalid
              .s_axis_dividend_tdata(axi_dividend),    // input wire [39 : 0] s_axis_dividend_tdata
              .m_axis_dout_tvalid(result_valid),          // output wire m_axis_dout_tvalid
              .m_axis_dout_tdata(result)            // output wire [47 : 0] m_axis_dout_tdata
            );


  shift_register #(1,11) shift1(

                   .clk(clk),
                   .reset_n(reset_n),
                   .in_data(axi_dividend_valid),
                   .out_data(valid_out)
                 );

  shift_register #(SIGI_BITS,11) shift2 (

                   .clk(clk),
                   .reset_n(reset_n),
                   .in_data(SigIi_reg),
                   .out_data(SigIi_out_pip)
                 );





endmodule
