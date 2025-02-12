`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 02/10/2025 01:03:12 PM
// Design Name:
// Module Name: IIE
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


module IIE
  #( parameter IMAGE_WIDTH = 8,
     parameter RADIUS = 15,
     parameter INTEGRAL_WIDTH = 21,
     parameter SUM_BITS = 18,
     parameter ROWS =1095,
     parameter COLS = 180)	//S = 2*RADIUS+1
   (
     input clk,
     input reset,
     // Pixel Input
     input [IMAGE_WIDTH-1:0] Iq,  // Leftover pixel
     input [IMAGE_WIDTH-1:0] Is,  // Current pixel
     input valid_in,              // Valid_in
     // Window Sum Result
     output reg [SUM_BITS-1:0] SigIi, // Box Filter Sum
     output reg valid_out,
     // RAM interface
     output reg wen,
     output reg ren1,
     output reg ren2,
     output reg [COLBITS-1:0] waddr,
     output reg [COLBITS-1:0] raddr1,
     output reg [COLBITS-1:0] raddr2,
     output reg [INTEGRAL_WIDTH-1:0] wdata,
     input [INTEGRAL_WIDTH-1:0] rdata1,
     input [INTEGRAL_WIDTH-1:0] rdata2

   );

  parameter WINDOW_S = (2*RADIUS+1);
  parameter ROWBITS = $clog2(ROWS);
  parameter COLBITS = $clog2(COLS);

  reg [SUM_BITS-1:0] SigIi_nxt;

  reg [ROWBITS-1:0] row_count, row_count_nxt;
  reg [COLBITS-1:0] col_count, col_count_nxt;

  reg [INTEGRAL_WIDTH-1:0] II_upper_row, II_upper_row_next;
  reg [INTEGRAL_WIDTH-1:0] IIs;
  reg [INTEGRAL_WIDTH-1:0] IId; //IId <= IIs
  reg [INTEGRAL_WIDTH-1:0] prev_window, prev_window_nxt;


  reg 			  valid_in_pip, valid_in_pip_nxt;

  always@(*)
  begin
    row_count_nxt = row_count;
    col_count_nxt = col_count;
    wen = 0;
    ren1 = 1;
    ren2 = 1;
    raddr1 = col_count;
    raddr2 = col_count-(WINDOW_S);
    IIs =  ((col_count==0)?0:IId)                   +	// IId
        ((row_count==0)?0:rdata1)                   -	// IIs_delayed
        ((row_count==0||col_count==0)?0:II_upper_row)   -	// IId_delayed
        ((row_count<WINDOW_S)?0:Iq)                 +	// Iq left over Pixel
        ((row_count>=1080)?0:Is);                   	// Is Right-bottom corner pixel of the current window


    prev_window_nxt = ((col_count<WINDOW_S)?0:rdata2);
    SigIi_nxt 	= IId-prev_window;
    II_upper_row_next = rdata1;
    waddr = col_count;
    wdata = IIs;
    valid_in_pip_nxt = (row_count>=(2*RADIUS) && col_count>=(2*RADIUS)) ?  valid_in :  0;
    if(valid_in)
    begin
      row_count_nxt = (col_count==(COLS-1))?((row_count==(ROWS-1))?0:row_count+1):row_count;
      col_count_nxt = (col_count==(COLS-1))?0:col_count+1;
      raddr1 = col_count_nxt;				// rdata1 : IIs_apos
      raddr2 = col_count_nxt-(WINDOW_S);	// rdata2 : IIa
      wen = 1;
    end
  end

  always@(posedge clk or negedge reset)
  begin
    if(!reset)
    begin
      row_count     	<= 0;
      col_count     	<= 0;
      II_upper_row      	<= 0;
      IId		      	  <= 0;
      valid_out     	<= 0;
      valid_in_pip  	<= 0;
      SigIi	      		<= 0;
      prev_window       	<= 0;
    end
    else
    begin
      row_count     	<= row_count_nxt;
      col_count     	<= col_count_nxt;
      II_upper_row      	<= II_upper_row_next;
      IId		        	<= IIs;
      valid_out     	<= valid_in_pip;
      valid_in_pip  	<= valid_in_pip_nxt;
      SigIi	      		<= SigIi_nxt;
      prev_window       	<= prev_window_nxt;
    end
  end


endmodule
