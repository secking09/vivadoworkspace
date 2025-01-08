`timescale 1ns / 1ps

module linebuffer #(
    parameter IMG_WIDTH = 100,
    parameter IMG_BIT_WIDTH = 8
)(
    input clk,
    input reset, 

    input read_en, 
    input [IMG_BIT_WIDTH-1:0] data_in,
    input data_valid_in,

    input flush,
    input line_en,  
    
    output buffer_full,
    output empty,

    output reg [IMG_BIT_WIDTH*3-1:0] data_out,
    output reg                       data_valid_out
);

    // Line buffer memory
    reg [IMG_BIT_WIDTH-1:0] line [0:IMG_WIDTH-1];

    reg [IMG_BIT_WIDTH-1:0] data_in_reg;
    // Pointers
    reg [$clog2(IMG_WIDTH)-1:0] read_ptr; 
    reg [$clog2(IMG_WIDTH)-1:0] write_ptr; 

    reg buffer_full_reg;
    reg empty_reg; 

    // Write data to the line buffer
    always @(posedge clk) begin
        if (!reset) begin
            write_ptr <= 0;
            buffer_full_reg <= 0; 
        end 
        else begin 
            data_in_reg <= data_in; 
            if (data_valid_in & line_en & !buffer_full) begin
                
                line[write_ptr] <= data_in_reg; // Write input data to the buffer
                write_ptr <= write_ptr+1;
                if (write_ptr == IMG_WIDTH -1) begin 
    
                write_ptr <= 'd0;
                buffer_full_reg <= 1'b1;
                   
                end
            end
            if (flush) 
                buffer_full_reg <= 1'b0;



        
           
        end
    end

    // Update read pointer
    always @(posedge clk) begin
        if (!reset) begin
            read_ptr <= 0;
            empty_reg <= 0;
        end else begin
            
        if (read_en & !empty_reg) begin
            read_ptr <= read_ptr + 1; 
            empty_reg <= 0;

            
            if(read_ptr == IMG_WIDTH-3)begin 

            read_ptr <= 0; 
            empty_reg <= 1; 

            end
        
        end
        if (flush)
            empty_reg <= 1'b0;
    end
    end

    // Generate data_out (3 consecutive pixels)
    always @(posedge clk) begin
        if (!reset) begin
            data_out <= 0;
            data_valid_out <= 1'b0;
        end else begin
            if(read_en & !empty_reg) begin
            data_out <= {line[read_ptr], line[read_ptr+1], line[read_ptr+2]};
            data_valid_out <= 1'b1;

            end
            else begin
            
            data_out <= 0;
            data_valid_out <= 1'b0;  

            end
        end
    end
assign buffer_full = buffer_full_reg; 
assign empty = empty_reg;
endmodule
