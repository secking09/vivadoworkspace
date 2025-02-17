`timescale 1ns / 1ps

module box_top_tb;
    parameter IMG_WIDTH = 512;
    parameter IMG_HEIGHT = 512;
    parameter window_Size = 11; // Adjust as needed
    
    reg clk;
    reg rst_n;
    reg [7:0] image_mem [0:IMG_WIDTH*IMG_HEIGHT-1]; // Memory to store image data
    reg [7:0] Is_pip;
    reg valid_in_pip;
    wire [7:0] Iq_pip;
    wire [17:0] SigIi;
    wire [25:0] SigIiIi;
    wire valid_out;
    
    integer i, j, file, output_file;
    
    // Instantiate DUT (Device Under Test)
    box_top uut (
        .clk(clk),
        .rst_n(rst_n),
        .Iq(Iq_pip),
        .Is(Is_pip),
        .valid_in(valid_in_pip),
        .SigIi(SigIi),
        .SigIiIi(SigIiIi),
        .valid_out(valid_out)
    );
    
    // Clock generation
    always #5 clk = ~clk;
    
    // Read image file
    initial begin
        file = $fopen("correct.txt", "r");
        output_file = $fopen("yes.txt", "w");
        if (file == 0) begin
            $display("Failed to open image file!");
            $finish;
        end
        if (output_file == 0) begin
            $display("Failed to open output file!");
            $finish;
        end
        for (i = 0; i < IMG_WIDTH * IMG_HEIGHT; i = i + 1) begin
            $fscanf(file, "%d", image_mem[i]);
        end
        $fclose(file);
    end
    
    // Test sequence
    initial begin
        clk = 0;
        rst_n = 0;
        Is_pip = 0;
        valid_in_pip = 0;
        
        #100 rst_n = 1; // Release reset
        
        for (i = 0; i < IMG_HEIGHT; i = i + 1) begin
            for (j = 0; j < IMG_WIDTH; j = j + 1) begin
                Is_pip = image_mem[i * IMG_WIDTH + j];
                valid_in_pip = 1;
                #10;
            end
            valid_in_pip = 0;
            #10;
            
        end
        
        valid_in_pip = 0;
        #100;
        $finish;
    end
    
    // Assign Iq_pip from the memory, taking `window_Size` rows above in the same column
    assign Iq_pip = ((i >= window_Size) ? image_mem[(i - window_Size) * IMG_WIDTH + j] : 0);
    
    // Write SigIi to file when valid_out is high
    always @(posedge clk) begin
        if (valid_out) begin
            $fwrite(output_file, "%d\n", SigIi);
        end
    end
    
endmodule
