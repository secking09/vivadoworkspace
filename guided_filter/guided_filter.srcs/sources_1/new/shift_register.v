`timescale 1ns / 1ps

module shift_register#(
    parameter BIT_LENGTH = 128,
    parameter SHIFT = 8
  )
  (
    input clk,
    input reset_n,
    input [BIT_LENGTH-1:0] in_data,
    output wire [BIT_LENGTH-1:0] out_data
  );

  reg [BIT_LENGTH-1:0] buffer [0:SHIFT-1]; // Shift Register Buffer
  integer i;

  assign out_data = buffer[SHIFT-1]; // Output the last shifted value

  always @(posedge clk or negedge reset_n)
  begin
    if (!reset_n)
    begin
      for (i = 0; i < SHIFT; i = i + 1)
        buffer[i] <= 0; // Reset all buffer values to zero
    end
    else
    begin
      for (i = 0; i < SHIFT-1; i = i + 1)
        buffer[i+1] <= buffer[i]; // Shift values down the buffer

      buffer[0] <= in_data; // Load new input data
    end
  end

endmodule
