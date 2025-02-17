`timescale 1ns / 1ps

module coeff_ak_tb;

  // Parameters
  parameter RADIUS = 5;
  parameter FRACBITS = 20;
  parameter DIVIDER_FRAC= 2;

  // Input and output registers
  reg clk;
  reg reset_n;
  reg valid_in;
  reg [SIGI_BITS-1:0] SigIi;
  reg [SIGII_BITS-1:0] SigIiIi;

  // Output register
  wire signed [4+FRACBITS:0] ak;

  // File pointers
  integer first_file, second_file, output_file;
  integer i, j, status1, status2;

  // Define the signal bit widths
  parameter SIGI_BITS = $clog2((2*RADIUS+1)*(2*RADIUS+1))+8;
  parameter SIGII_BITS = $clog2((2*RADIUS+1)*(2*RADIUS+1))+16;

  // Instantiate the DUT (Device Under Test)
  coeff_ak #(RADIUS, FRACBITS,DIVIDER_FRAC ) uut (
    .clk(clk),
    .reset_n(reset_n),
    .valid_in(valid_in),
    .SigIi(SigIi),
    .SigIiIi(SigIiIi),
    .ak(ak)
  );

  // Clock generation
  always begin
    #5 clk = ~clk; // 100 MHz clock (10ns period)
  end

  // Stimulus process
  initial begin
    // Initialize signals
    clk = 0;
    reset_n = 0;
    valid_in = 0;
    SigIi = 0;
    SigIiIi = 0;

    // Open input files for SigIi and SigIiIi
    first_file = $fopen("first.txt", "r");
    if (first_file == 0) begin
      $display("Error: Unable to open first.txt.");
      $finish;
    end

    second_file = $fopen("second.txt", "r");
    if (second_file == 0) begin
      $display("Error: Unable to open second.txt.");
      $finish;
    end

    // Open output file
    output_file = $fopen("coeff_ak.txt", "w");
    if (output_file == 0) begin
      $display("Error: Unable to open coeff_ak.txt.");
      $finish;
    end

    // Reset the DUT
    #10 reset_n = 1;
    #10 reset_n = 0;
    #10 reset_n = 1;

    // Process each line of SigIi and SigIiIi values
    for (i = 0; i < 492; i = i + 1) begin // Assuming 492 lines
      valid_in = 1; // Set valid_in high to start processing
      for (j = 0; j < 492; j = j + 1) begin // Assuming image width is 492
        // Read values from both files and ensure they advance
        status1 = $fscanf(first_file, "%d\n", SigIi);
        status2 = $fscanf(second_file, "%d\n", SigIiIi);

        if (status1 != 1 || status2 != 1) begin
            $display("Error reading files at i=%d, j=%d", i, j);
            $finish;
        end

        // Apply the values to the DUT
        #10; // Wait for 1 clock cycle before moving to the next pixel
      end

      // After reading an entire line, set valid_in to low
      valid_in = 0;
      #10; // Wait for 1 clock cycle before moving to the next line
    end

    // Close the files
    $fclose(first_file);
    $fclose(second_file);
    $fclose(output_file);

    // End simulation
    $finish;
  end

endmodule