`timescale 1ns / 1ps


module convolution_top #(

    parameter IMG_BIT_WIDTH = 8,
    parameter IMG_WIDTH = 1012
)(

input clk,
input reset, 
input start, 

output valid,
output [7:0] result,
input  [IMG_BIT_WIDTH-1:0] video_in_tdata, 
input                      video_tlast, 
input                      video_valid,
input                      video_tuser,  
output                     video_tready
);



wire [71:0] pixel_values; 
wire done_w;
wire [7:0] result_w;
wire valid_w,valid_w2; 

buffer_CU #(.IMG_BIT_WIDTH(IMG_BIT_WIDTH),
             .IMG_WIDTH(IMG_WIDTH)) controller 
            (
            .clk(clk),
            .reset(reset),
            .start(start),

            .video_in_tdata (video_in_tdata ), 
            .video_tlast    (video_tlast    ), 
            .video_valid    (video_valid    ),
            .video_tuser    (video_tuser    ),     
            .video_tready   (video_tready   ),

            .sel_mux (),
            .read_en (),

            .out_pixels (pixel_values),
            .out_pixels_valid (),
            .out_pixels_tlast ()

);

CWODSP_Gaussian myip (

        .f11        (pixel_values[7:0]),    
        .f12        (pixel_values[15:8]),
        .f13        (pixel_values[23:16]),
        .f21        (pixel_values[31:24]),
        .f22        (pixel_values[39:32]),
        .f23        (pixel_values[47:40]),
        .f31        (pixel_values[55:48]),
        .f32        (pixel_values[63:56]),
        .f33        (pixel_values[71:64]),

        .valid_in (valid_w),
        .valid_out (valid_w2),
        
        .clk (clk),
        .reset (!reset),
        .start (start),

        .done (done_w),
        .result (result_w)
);

assign result = result_w;
assign valid = valid_w2;







endmodule

