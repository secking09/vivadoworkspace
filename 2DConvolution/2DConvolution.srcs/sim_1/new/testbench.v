module tb_image_frame_generator();

    // Declare clock and reset signals
    reg clk;
    reg reset;
    reg start;
    
    // Frame generator signals
    reg [7:0] tdata;        // 8-bit pixel data
    reg tvalid;             // Valid signal for the pixel data
    reg tlast;              // Last signal for the frame
    reg tuser;              // User signal (optional, can be tied to 0 if not used)
    wire tready;            // Ready signal (from the receiver side)
    
    // File I/O variables
    integer image_file;
    integer byte_count;
    reg [7:0] pixel_data;    // 8-bit pixel data buffer
    integer image_width = 640;  // Example width of the image
    integer image_height = 480; // Example height of the image
    integer total_pixels;
    
    // Instantiate your module (e.g., buffer_CU, CWODSP, etc.)
    convolution_top #(
        .IMG_BIT_WIDTH(8),    // Assuming 8-bit grayscale image
        .IMG_WIDTH(image_width)
    ) controller (
        .clk(clk),
        .reset(reset),
        .start(start),
        .video_in_tdata(tdata),
        .video_tlast(tlast),
        .video_valid(tvalid),
        .video_tuser(tuser),
        .video_tready(tready),
        .sel_mux(),            // Connect mux control signal if needed
        .read_en(),            // Connect read enable signal
        .out_pixels(),         // Connect the output pixel values
        .out_pixels_valid(),   // Connect output valid signal
        .out_pixels_tlast()    // Connect output tlast signal
    );
    
    // Clock generation
    always begin
        #5 clk = ~clk;  // 100MHz clock
    end
    
    // Image frame generator task
    task generate_frames();
        integer i;
        reg [7:0] pixel;
        begin
            // Wait for the start signal
            wait (start == 1);
            
            // Generate frames from the image data
            for (i = 0; i < total_pixels; i = i + 1) begin
                @(posedge clk);
                // Read a pixel from the image file
                pixel = $fgetc(image_file);
                tdata = pixel;         // Send pixel data
                tvalid = 1;            // Set valid signal
                
                // Set tlast for the last pixel in the frame
                if (i == total_pixels - 1) begin
                    tlast = 1;
                end else begin
                    tlast = 0;
                end
                
                // Handle tuser if needed (optional)
                tuser = 0;
                
                // Wait for ready signal from the receiver
                wait (tready == 1);
            end
        end
    endtask
    
    // Testbench initial block
    initial begin
        // Initialize signals
        clk = 0;
        reset = 1;
        start = 0;
        tdata = 0;
        tvalid = 0;
        tlast = 0;
        tuser = 0;
        
        // Open the image file (replace with the actual file path)
        image_file = $fopen("image.raw", "rb");  // Open in binary read mode
        
        if (image_file == 0) begin
            $display("Error opening image file!");
            $finish;
        end
        
        // Calculate the total number of pixels (width * height)
        total_pixels = image_width * image_height;
        
        // Apply reset
        #10 reset = 0;
        
        // Start frame generation after reset
        #10 start = 1;
        
        // Generate the frames (read from file and send)
        generate_frames();
        
        // Finish the simulation
        $fclose(image_file);
        $finish;
    end
    
endmodule
