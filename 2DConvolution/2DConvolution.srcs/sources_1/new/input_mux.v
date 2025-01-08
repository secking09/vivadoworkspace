`timescale 1ns / 1ps

module input_mux #(
    parameter IMG_WIDTH = 100,
    parameter IMG_BIT_WIDTH = 8
)(
    //////// incoming data ////// 
    input  [IMG_BIT_WIDTH-1:0] video_in_tdata, 
    input                      video_tlast, 
    input                      video_valid, 
    output                     video_tready,

    input  [1:0]               sel, // Selector for 4 channels (2 bits needed for 4 channels)

    //////// channel 1 ////////
    output [IMG_BIT_WIDTH-1:0] video_out_tdata_channel1,
    output                     video_tlast_channel1, 
    output                     video_valid_channel1, 
    input                      video_tready_channel1,

    //////// channel 2 ////////
    output [IMG_BIT_WIDTH-1:0] video_out_tdata_channel2,
    output                     video_tlast_channel2, 
    output                     video_valid_channel2, 
    input                      video_tready_channel2,

    //////// channel 3 ////////
    output [IMG_BIT_WIDTH-1:0] video_out_tdata_channel3,
    output                     video_tlast_channel3, 
    output                     video_valid_channel3, 
    input                      video_tready_channel3,

    //////// channel 4 ////////
    output [IMG_BIT_WIDTH-1:0] video_out_tdata_channel4,
    output                     video_tlast_channel4, 
    output                     video_valid_channel4, 
    input                      video_tready_channel4
);

    // Registers for internal storage
    reg [IMG_BIT_WIDTH-1:0] video_data_reg; 
    reg                     t_last_reg;
    reg                     tvalid_reg; 

    // Assignments to manage ready signal
    assign video_tready = (sel == 2'd0 && video_tready_channel1) ||
                          (sel == 2'd1 && video_tready_channel2) ||
                          (sel == 2'd2 && video_tready_channel3) ||
                          (sel == 2'd3 && video_tready_channel4);

    // Default output assignments
    assign video_out_tdata_channel1 = (sel == 2'd0) ? video_data_reg : 0;
    assign video_tlast_channel1     = (sel == 2'd0) ? t_last_reg : 0;
    assign video_valid_channel1     = (sel == 2'd0) ? tvalid_reg : 0;

    assign video_out_tdata_channel2 = (sel == 2'd1) ? video_data_reg : 0;
    assign video_tlast_channel2     = (sel == 2'd1) ? t_last_reg : 0;
    assign video_valid_channel2     = (sel == 2'd1) ? tvalid_reg : 0;

    assign video_out_tdata_channel3 = (sel == 2'd2) ? video_data_reg : 0;
    assign video_tlast_channel3     = (sel == 2'd2) ? t_last_reg : 0;
    assign video_valid_channel3     = (sel == 2'd2) ? tvalid_reg : 0;

    assign video_out_tdata_channel4 = (sel == 2'd3) ? video_data_reg : 0;
    assign video_tlast_channel4     = (sel == 2'd3) ? t_last_reg : 0;
    assign video_valid_channel4     = (sel == 2'd3) ? tvalid_reg : 0;

    // Process incoming video data
    always @(posedge video_valid) begin
        if (video_valid && video_tready) begin
            video_data_reg <= video_in_tdata; // Store incoming data
            t_last_reg     <= video_tlast;   // Store last signal
            tvalid_reg     <= video_valid;  // Store valid signal
        end
    end

endmodule
