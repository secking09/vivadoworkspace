`timescale 1ns / 1ps

module buffer_CU #(

    parameter IMG_BIT_WIDTH = 8,
    parameter IMG_WIDTH = 100
)(

    input clk, 
    input reset, 

    input start,

    input  [IMG_BIT_WIDTH-1:0] video_in_tdata, 
    input                      video_tlast, 
    input                      video_valid,
    input                      video_tuser,  
    output                     video_tready,

    output [1:0] sel_mux, 
    output [3:0] read_en, 




    output [IMG_BIT_WIDTH*9-1:0] out_pixels, 
    output                       out_pixels_valid,
    output                       out_pixels_tlast

    );

    reg [12:0] pixelCount; 
    reg read_enable; 
    reg [3:0] state; 

    reg[3:0] prev_empty;
 
    reg start_convol;
    reg conv_started;

    reg [IMG_BIT_WIDTH*9-1:0] out_pixels_reg;
    reg out_pixels_valid_reg;


    reg tlast_reg;
    reg [7:0] data_reg; 
    reg valid_reg;
    reg refresh_pixel;
    //control signals 
    reg [3:0] buffer_read_enable; 
    reg [3:0] valid_in_reg; 
    reg [3:0] flush_buffer_reg;
    reg [3:0] line_enable_reg;

    reg[31:0] t_last_counter;

    //incoming data signals
    wire [23:0] lB0data; 
    wire [23:0] lB1data; 
    wire [23:0] lB2data; 
    wire [23:0] lB3data; 

    wire lB0valid;
    wire lB1valid;    
    wire lB2valid;    
    wire lB3valid;    

    localparam IDLE = 'd0,
               FILLB0 = 'd1,
               FILLB1 = 'd2,
               FILLB2 = 'd3,
               FILLB3 = 'd4;


    always @(posedge clk) begin 

        if(!reset) begin
        data_reg <= 8'b0;
        valid_reg <= 1'b0;
        end
        else begin
        data_reg <= video_in_tdata; 
        valid_reg <= video_valid;
        end
    end

    always @(posedge clk) begin
        

        if(!reset) begin 
            state <= IDLE; 
            refresh_pixel <= 1'b0;
            start_convol <= 1'b0;
            conv_started <= 1'b0;
        end
        else begin 

            case(state)

            IDLE:begin 
            
            state <= IDLE; 
            if (video_valid & start) begin
                
                state <= FILLB0; 
                line_enable_reg <= 4'b0001;
            end
                
            end

            FILLB0: begin
                refresh_pixel <= 1'b0;
             
                //flush_buffer_reg <= 4'b0000;
                if(start_convol) begin 
                    if(pixelCount >= IMG_WIDTH - 1) 
                    buffer_read_enable <= 4'b0000;
                    else
                    buffer_read_enable <= 4'b1110;
            
                end 
                else begin
                    buffer_read_enable <= 4'b0000;
                end

                if(pixelCount == IMG_WIDTH - 1) begin 
                    
                    state <= FILLB1;
                    refresh_pixel <= 1'b1;
                    line_enable_reg <= 4'b0010;

                end
                else
                    state <= FILLB0;
            
            end
            
            FILLB1: begin
                //flush_buffer_reg <= 4'b0000;
                line_enable_reg <= 4'b0010;
                refresh_pixel <= 1'b0;
                if(start_convol) begin 
                    if(pixelCount >= IMG_WIDTH - 1) 
                    buffer_read_enable <= 4'b0000;
                    else
                    buffer_read_enable <= 4'b1101;
            
                end 
               
                //flush_buffer_reg <= 4'b1110;

                else begin
                    buffer_read_enable <= 4'b0000;
                end

                if(pixelCount == IMG_WIDTH - 1) begin 
                    
                    state <= FILLB2;
                    refresh_pixel <= 1'b1;
                  //  flush_buffer_reg <= 4'b0000;

                end
                else
                    state <= FILLB1;
            
            end
            FILLB2: begin
                //flush_buffer_reg <= 4'b0000;
                line_enable_reg <= 4'b0100;
                refresh_pixel <= 1'b0;
                if(start_convol) begin 
                    if(pixelCount >= IMG_WIDTH - 1) 
                    buffer_read_enable <= 4'b0000;
                    else
                    buffer_read_enable <= 4'b1011;
            
                end 
                else begin
                    buffer_read_enable <= 4'b0000;
                end

                if(pixelCount == IMG_WIDTH - 1) begin 
                    
                    state <= FILLB3;
                    refresh_pixel <= 1'b1;

                end
                else
                    state <= FILLB2;
                
            
            
            end
            FILLB3: begin
                
                line_enable_reg <= 4'b1000;
                refresh_pixel <= 1'b0;
                start_convol <= 1'b1;
              
                //flush_buffer_reg <= 4'b0000;
                if(pixelCount >= IMG_WIDTH - 1) begin
                    buffer_read_enable <= 4'b0000;
                end
                else begin
                    buffer_read_enable <= 4'b0111;
                end
                
                if(pixelCount == IMG_WIDTH - 1) begin 
                    
                    state <= FILLB0;
                    refresh_pixel <= 1'b1;
                    conv_started <= 1'b1;
                    line_enable_reg <= 4'b0001;

                end
                else
                    state <= FILLB3;
            
            end
            endcase
        end
    end


    always @(posedge clk) begin
        
        if(!reset) begin
            
            pixelCount <= 0;

        end
        else begin 

        if(valid_reg & start & !refresh_pixel ) begin
        pixelCount <= pixelCount + 1;
        end
        else begin 
            pixelCount <= 12'b0;
        end 
        end
        
    end



linebuffer #(.IMG_BIT_WIDTH(IMG_BIT_WIDTH), .IMG_WIDTH(IMG_WIDTH)) lB0(

.clk           (clk) ,           
.reset         (reset) , 
.read_en       (buffer_read_enable[0]) , 
.data_in       (video_in_tdata) ,
.data_valid_in (valid_reg) ,
.flush         (flush_buffer_reg[0]) ,
.line_en       (line_enable_reg[0]) ,     
.buffer_full   () ,
.empty         (lB0empty) ,
.data_out      (lB0data) ,
.data_valid_out(lB0valid) 
    
);

linebuffer #(.IMG_BIT_WIDTH(IMG_BIT_WIDTH), .IMG_WIDTH(IMG_WIDTH)) lB1(

.clk           (clk) ,           
.reset         (reset) , 
.read_en       (buffer_read_enable[1]) , 
.data_in       (video_in_tdata) ,
.data_valid_in (valid_reg)  ,
.flush         (flush_buffer_reg[1]) ,
.line_en       (line_enable_reg[1]) ,     
.buffer_full   () ,
.empty         (lB1empty) ,
.data_out      (lB1data) ,
.data_valid_out(lB1valid) 
    
);
linebuffer #(.IMG_BIT_WIDTH(IMG_BIT_WIDTH), .IMG_WIDTH(IMG_WIDTH)) lB2(

.clk           (clk) ,           
.reset         (reset) , 
.read_en       (buffer_read_enable[2]) , 
.data_in       (video_in_tdata) ,
.data_valid_in (valid_reg) ,
.flush         (flush_buffer_reg[2]) ,
.line_en       (line_enable_reg[2]) ,     
.buffer_full   () ,
.empty         (lB2empty) ,
.data_out      (lB2data) ,
.data_valid_out(lB2valid) 
    
);
linebuffer #(.IMG_BIT_WIDTH(IMG_BIT_WIDTH), .IMG_WIDTH(IMG_WIDTH)) lB3(

.clk           (clk) ,           
.reset         (reset) , 
.read_en       (buffer_read_enable[3]) , 
.data_in       (video_in_tdata) ,
.data_valid_in (valid_reg) ,
.flush         (flush_buffer_reg[3]) ,
.line_en       (line_enable_reg[3]) ,     
.buffer_full   () ,
.empty         (lB3empty) ,
.data_out      (lB3data) ,
.data_valid_out(lB3valid) 
    
);
///////////// CREATES A LATCH /////////////
always @(posedge clk) begin 

    case (buffer_read_enable)
        
    4'b0000: begin
    out_pixels_reg        <= 0;
    out_pixels_valid_reg  <= 0;
    end
    4'b0111: begin
    out_pixels_reg        <= {lB2data,lB1data,lB0data};
    out_pixels_valid_reg  <= {lB2valid};
    end
    4'b1011: begin
    out_pixels_reg       <= {lB1data,lB0data,lB3data};
    out_pixels_valid_reg <= {lB0valid};
    end    
    4'b1101: begin
    out_pixels_reg       <= {lB0data,lB3data,lB2data};
    out_pixels_valid_reg <= {lB0valid};
    end 
    4'b1110: begin
    out_pixels_reg       <= {lB3data,lB2data,lB1data};
    out_pixels_valid_reg <= {lB1valid};
    end        
    endcase

end 
always @(posedge clk) begin
    if (!reset) begin
        flush_buffer_reg <= 4'b0000;
        prev_empty <= 4'b0000;
    end else begin
        // Generate a 1-clock cycle pulse for each flush bit based on corresponding empty signal
        flush_buffer_reg[0] <= lB0empty & ~prev_empty[0];
        flush_buffer_reg[1] <= lB1empty & ~prev_empty[1];
        flush_buffer_reg[2] <= lB2empty & ~prev_empty[2];
        flush_buffer_reg[3] <= lB3empty & ~prev_empty[3];

        // Update previous state
        prev_empty <= {lB3empty, lB2empty, lB1empty, lB0empty};
    end
end

always @(posedge clk) begin
    
    if(!reset) begin 

        tlast_reg <= 1'b0;
        t_last_counter <= 32'b0;

    end
    else begin
        if(out_pixels_valid_reg)begin
            
            tlast_reg <= 1'b1;
            t_last_counter <= t_last_counter + 1; 
            if(t_last_counter == IMG_WIDTH-2) begin
                
                tlast_reg <= 1'b1;
                t_last_counter <= 32'b0;

            end

            



        end
        else begin
            t_last_counter <= 32'b0; 
            tlast_reg <= 1'b0;
        end
       

    end

end


assign out_pixels = out_pixels_reg;
assign out_pixels_tlast = tlast_reg;
assign out_pixels_valid = out_pixels_valid_reg;

















endmodule