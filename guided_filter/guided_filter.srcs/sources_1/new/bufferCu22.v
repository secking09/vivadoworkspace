`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/12/2025 10:31:35 AM
// Design Name: 
// Module Name: bufferCu22
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


module bufferCu22 #(
    parameter IMG_BIT_WIDTH = 8,
    parameter IMG_WIDTH = 1920
)(
    input clk, 
    input reset, 
    input start,
    input  [IMG_BIT_WIDTH-1:0] video_in_tdata, 
    input                      video_tlast, 
    input                      video_valid,
    input                      video_tuser,  
    output                     video_tready,
    output [4:0] sel_mux, 
    output [21:0] read_en, 
    output [IMG_BIT_WIDTH*9-1:0] out_pixels, 
    output                       out_pixels_valid,
    output                       out_pixels_tlast
);

    reg [12:0] pixelCount; 
    reg [21:0] buffer_read_enable; 
    reg [21:0] line_enable_reg;
    reg [21:0] flush_buffer_reg;
    reg [21:0] prev_empty;
    reg refresh_pixel;
    reg [4:0] state;
    reg start_convol;
    reg conv_started;
    reg [IMG_BIT_WIDTH*9-1:0] out_pixels_reg;
    reg out_pixels_valid_reg;
    reg tlast_reg;
    reg [7:0] data_reg; 
    reg valid_reg;
    reg [31:0] t_last_counter;

    localparam IDLE = 0;
    localparam FILL_START = 1;
    localparam FILL_END = 22;

    always @(posedge clk) begin 
        if (!reset) begin
            data_reg <= 8'b0;
            valid_reg <= 1'b0;
        end else begin
            data_reg <= video_in_tdata; 
            valid_reg <= video_valid;
        end
    end

    always @(posedge clk) begin
        if (!reset) begin 
            state <= IDLE; 
            refresh_pixel   <= 1'b0;
            start_convol    <= 1'b0;
            conv_started    <= 1'b0;
            buffer_read_enable <= 22'b0;
            line_enable_reg <= 22'b0;
        end else begin 
            case(state)
                IDLE: begin 
                    if (video_valid & start) begin
                        state <= FILL_START; 
                        line_enable_reg[0] <= 1'b1;
                    end
                end
                default: begin
                    if (state < FILL_END) begin
                        refresh_pixel <= 1'b0;
                        if (start_convol) begin
                            if (pixelCount >= IMG_WIDTH - 1)
                                buffer_read_enable <= 22'b0;
                            else
                                buffer_read_enable[state] <= 1'b1;
                        end else begin
                            buffer_read_enable <= 22'b0;
                        end
                        if (pixelCount == IMG_WIDTH - 1) begin
                            state <= state + 1;
                            refresh_pixel <= 1'b1;
                            line_enable_reg[state] <= 1'b1;
                        end
                    end else begin
                        state <= FILL_START;
                        start_convol <= 1'b1;
                        conv_started <= 1'b1;
                    end
                end
            endcase
        end
    end

    always @(posedge clk) begin
        if (!reset) begin
            pixelCount <= 0;
        end else if (valid_reg & start & !refresh_pixel) begin
            pixelCount <= pixelCount + 1;
        end else begin
            pixelCount <= 12'b0;
        end
    end

    genvar i;
    generate
        for (i = 0; i < 22; i = i + 1) begin : line_buffers
            linebuffer #(.IMG_BIT_WIDTH(IMG_BIT_WIDTH), .IMG_WIDTH(IMG_WIDTH)) lB (
                .clk           (clk),
                .reset         (reset),
                .read_en       (buffer_read_enable[i]),
                .data_in       (data_reg),
                .data_valid_in (valid_reg),
                .flush         (flush_buffer_reg[i]),
                .line_en       (line_enable_reg[i]),
                .buffer_full   (),
                .empty         (),
                .data_out      (),
                .data_valid_out()
            );
        end
    endgenerate

    always @(posedge clk) begin 
        case (buffer_read_enable)
            default: begin
                out_pixels_reg       <= 0;
                out_pixels_valid_reg <= 0;
            end
        endcase
    end 

    always @(posedge clk) begin
        if (!reset) begin
            flush_buffer_reg <= 22'b0;
            prev_empty <= 22'b0;
        end else begin
            flush_buffer_reg <= prev_empty & ~prev_empty;
            prev_empty <= prev_empty;
        end
    end

    always @(posedge clk) begin
        if (!reset) begin
            tlast_reg <= 1'b0;
            t_last_counter <= 32'b0;
        end else begin
            if (out_pixels_valid_reg) begin
                tlast_reg <= 1'b1;
                t_last_counter <= t_last_counter + 1; 
                if (t_last_counter == IMG_WIDTH-2) begin
                    tlast_reg <= 1'b1;
                    t_last_counter <= 32'b0;
                end
            end else begin
                t_last_counter <= 32'b0; 
                tlast_reg <= 1'b0;
            end
        end
    end

    assign out_pixels = out_pixels_reg;
    assign out_pixels_tlast = tlast_reg;
    assign out_pixels_valid = out_pixels_valid_reg;
endmodule

