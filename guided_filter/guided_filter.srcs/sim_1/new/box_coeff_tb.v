`timescale 1ns / 1ps

module box_coeff_tb;
    parameter IMG_WIDTH = 512;
    parameter IMG_HEIGHT = 512;
    parameter WINDOW_SIZE = 11; // Adjust as needed
    parameter RADIUS = 5;
    parameter A_BITS = 22;
    parameter B_BITS = 16;
    
    reg clk;
    reg rst_n;
    reg valid_in_pip;
    reg [A_BITS-1:0] ak_s;
    reg [A_BITS-1:0] ak_q;
    reg [B_BITS-1:0] bk_s;
    reg [B_BITS-1:0] bk_q;

    wire valid_out;
    wire [A_BITS-1:0] SigAk;
    wire [B_BITS-1:0] SigBk;

    reg [A_BITS:0] image_mem_a [0:IMG_WIDTH*IMG_HEIGHT-1]; // Image memory for a.txt
    reg [B_BITS:0] image_mem_b [0:IMG_WIDTH*IMG_HEIGHT-1]; // Image memory for b.txt

    integer i, j, file_a, file_b, output_file;
    
    // Instantiate DUT (Device Under Test)
    box_coeff  #(RADIUS, IMG_WIDTH, IMG_HEIGHT, A_BITS, B_BITS) uut(
        .clk(clk),
        .reset_n(rst_n),
        .ak_s(ak_s),
        .ak_q(ak_q),
        .bk_s(bk_s),
        .bk_q(bk_q),
        .valid_in(valid_in_pip),
        .SigAk(SigAk),
        .SigBk(SigBk),
        .valid_out(valid_out)
    );

    // Clock generation
    always #5 clk = ~clk;

    // Read image files a.txt and b.txt into memory
    initial begin
        file_a = $fopen("a.txt", "r");
        file_b = $fopen("b.txt", "r");
        output_file = $fopen("yes.txt", "w");
        
        if (file_a == 0) begin
            $display("Failed to open a.txt!");
            $finish;
        end
        if (file_b == 0) begin
            $display("Failed to open b.txt!");
            $finish;
        end
        if (output_file == 0) begin
            $display("Failed to open output file!");
            $finish;
        end

        for (i = 0; i < IMG_WIDTH * IMG_HEIGHT; i = i + 1) begin
            $fscanf(file_a, "%d", image_mem_a[i]);
            $fscanf(file_b, "%d", image_mem_b[i]);
        end
        
        $fclose(file_a);
        $fclose(file_b);
    end

    // Test sequence
    initial begin
        clk = 0;
        rst_n = 0;
        ak_s = 0;
        ak_q = 0;
        bk_s = 0;
        bk_q = 0;
        valid_in_pip = 0;
        
        #100 rst_n = 1; // Release reset
        
        for (i = 0; i < IMG_HEIGHT; i = i + 1) begin
            for (j = 0; j < IMG_WIDTH; j = j + 1) begin
                ak_s = image_mem_a[i * IMG_WIDTH + j]; 
                ak_q = ((i >= WINDOW_SIZE) ? image_mem_a[(i - WINDOW_SIZE) * IMG_WIDTH + j] : 0);
                bk_s = image_mem_b[i * IMG_WIDTH + j]; 
                bk_q = ((i >= WINDOW_SIZE) ? image_mem_b[(i - WINDOW_SIZE) * IMG_WIDTH + j] : 0);

                valid_in_pip = 1;
                #10;
            end
            valid_in_pip = 0;
            #10;
        end
        
        valid_in_pip = 0;
        #100;
        $fclose(output_file);
        $finish;
    end

    // Write output to file when valid_out is high
    always @(posedge clk) begin
        if (valid_out) begin
            $fwrite(output_file, "%d %d\n", SigAk, SigBk);
        end
    end
    
endmodule
