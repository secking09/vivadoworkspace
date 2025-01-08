`timescale 1ns / 1ps

module CU(

    input clk, 
    input reset, 

    input start,

    output [1:0] sel_mux, 

    output [3:0] read_en 

    );

    reg [3:0] state; 

    reg [3:0] read_en_reg; 
    reg [1:0] sel_mux_reg; 


    
    always @(posedge clk) begin 

        if (!reset) begin
            
            read_en_reg <= 3'd0; 
            sel_mux_reg <= 2'd0; 

        end
        else begin
            case (state)

            IDLE: begin
                
                



            end


            endcase
        end



    end
    




endmodule
