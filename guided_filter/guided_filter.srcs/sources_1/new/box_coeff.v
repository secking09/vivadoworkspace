`timescale 1ns / 1ps


module box_coeff #(

    parameter RADIUS = 5,
    parameter ROWS = 512,
    parameter COLS = 512,
    parameter A_BITS = 22,
    parameter B_BITS = 16
  )

  (
    input clk,
    input reset_n,

    // Signals for IIE module
    input [A_BITS-1:0] ak_s,
    input [A_BITS-1:0] ak_q,
    input [B_BITS-1:0] bk_s,
    input [B_BITS-1:0] bk_q,

    input valid_in, // same valid for both of them.

    output [SIGIA_BITS-1:0] SigAk,
    output [SIGIB_BITS-1:0] SigBk,

    output valid_out
  );


  parameter IA_BITS = $clog2((2*RADIUS+1)*(COLS+4*RADIUS))+A_BITS;
  parameter IB_BITS = $clog2((2*RADIUS+1)*(COLS+4*RADIUS))+B_BITS;

  parameter SIGIA_BITS = $clog2((2*RADIUS+1)*(2*RADIUS+1))+(A_BITS);
  parameter SIGIB_BITS =  $clog2((2*RADIUS+1)*(2*RADIUS+1))+(B_BITS);

  parameter ROWBITS = $clog2(ROWS);
  parameter COLBITS = $clog2(COLS);

  //RAM CONNECTIONS
  wire wen_w;
  wire [COLBITS-1:0] waddr_w;
  wire [COLBITS-1:0] raddr1_w;
  wire [COLBITS-1:0] raddr2_w;
  wire ren1_w;
  wire ren2_w;

  wire [IA_BITS-1:0] wdata_w_Ak;
  wire [IA_BITS-1:0] rdata1_w_Ak;
  wire [IA_BITS-1:0] rdata2_w_Ak;

  wire [IB_BITS-1:0] wdata_w_Bk;
  wire [IB_BITS-1:0] rdata1_w_Bk;
  wire [IB_BITS-1:0] rdata2_w_Bk;
  // ******************************


  wire valid_out_SigAk;
  wire valid_out_SigBk;

  reg              valid_in_reg ;
  reg [A_BITS-1:0] ak_q_reg     ;
  reg [A_BITS-1:0] ak_s_reg     ;
  reg [B_BITS-1:0] bk_q_reg     ;
  reg [B_BITS-1:0] bk_s_reg     ;

  always @(posedge clk or negedge reset_n)
  begin

    if(!reset_n)
    begin

      valid_in_reg <= 0;
      ak_q_reg     <= 0;
      ak_s_reg     <= 0;
      bk_q_reg     <= 0;
      bk_s_reg     <= 0;

    end
    else
    begin

      valid_in_reg <= valid_in;
      ak_q_reg     <= ak_q;
      ak_s_reg     <= ak_s;
      bk_q_reg     <= bk_q;
      bk_s_reg     <= bk_s;

    end
  end

  IEE_signed #(A_BITS,RADIUS,IA_BITS,SIGIA_BITS,ROWS,COLS)

             IEE_ak (

               .clk(clk),
               .reset(reset_n),
               .Iq(ak_q_reg),
               .Is(ak_s_reg),
               .valid_in(valid_in_reg),
               .SigIi(SigAk),
               .valid_out(valid_out_SigAk),
               .wen(wen_w),
               .ren1(ren1_w),
               .ren2(ren2_w),
               .waddr(waddr_w),
               .raddr1(raddr1_w),
               .raddr2(raddr2_w),
               .wdata(wdata_w_Ak),
               .rdata1(rdata1_w_Ak),
               .rdata2(rdata2_w_Ak)
             );
  IEE_signed #(B_BITS,RADIUS,IB_BITS,SIGIB_BITS,ROWS,COLS)

             IEE_bk (

               .clk(clk),
               .reset(reset_n),
               .Iq(bk_q_reg),
               .Is(bk_s_reg),
               .valid_in(valid_in_reg),
               .SigIi(SigBk),
               .valid_out(valid_out_SigBk),
               .wen(),
               .ren1(),
               .ren2(),
               .waddr(),
               .raddr1(),
               .raddr2(),
               .wdata(wdata_w_Bk),
               .rdata1(rdata1_w_Bk),
               .rdata2(rdata2_w_Bk)
             );
  // RAM instance
  RAM_top #(
            .DATA_WIDTH(IB_BITS+IA_BITS), // Total width of the concatenated data
            .WORD_WIDTH(COLS)
          ) mem (
            .clk(clk),
            .rst_n(reset_n),
            .wen(wen_w),
            .waddr(waddr_w),
            .wdata({wdata_w_Ak,wdata_w_Bk}),  // Concatenated write data
            .ren1(ren1_w),
            .raddr1(raddr1_w),
            .rdata1({rdata1_w_Ak,rdata1_w_Bk}),  // Concatenated read data
            .ren2(ren2_w),
            .raddr2(raddr2_w),
            .rdata2({rdata2_w_Ak,rdata2_w_Bk})   // Concatenated read data
          );

  // Additional signals like `wdata_Ii`, `wdata_pi`, `wdata_IiIi`, `wdata_Iipi` should be
  // properly defined or sourced from other parts of your design.




endmodule
