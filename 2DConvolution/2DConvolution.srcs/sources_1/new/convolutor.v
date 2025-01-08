`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2025 10:16:13 AM
// Design Name: 
// Module Name: convolutor
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


module convolutor(

    );
endmodule
// Behavioral Multiplication

module MULTB(
	input clk,reset,start,
	input [7:0] A,B,
	output reg [15:0] result,
    output reg done
	);
	always@(posedge clk) begin
		if(reset || ~start) begin
			done   <= 0;
			result <= 0;
		end
		else if(start) begin
			result <= A * B;
			done   <= 1;
		end
	end			
endmodule


module CWODSP
	(
	input [7:0] f11,f12,f13,f21,f22,f23,f31,f32,f33,w11,w12,w13,w21,w22,w23,w31,w32,w33,
	input clk,reset,start,
	output [23:0] result,
	output done
	);
	wire [15:0] m1,m2,m3,m4,m5,m6,m7,m8,m9;
	wire done1,done2,done3,done4,done5,done6,done7,done8,done9;
	wire [23:0] sum1,sum2,sum3,sum4,sum5,sum6,sum7;
	wire cout1,cout2,cout3,cout4,cout5,cout6,cout7,cout8;

MULTB mult1(clk,reset,start,f11,w11,m1,done1);
MULTB mult2(clk,reset,start,f12,w12,m2,done2);
MULTB mult3(clk,reset,start,f13,w13,m3,done3);
MULTB mult4(clk,reset,start,f21,w21,m4,done4);
MULTB mult5(clk,reset,start,f22,w22,m5,done5);
MULTB mult6(clk,reset,start,f23,w23,m6,done6);
MULTB mult7(clk,reset,start,f31,w31,m7,done7);
MULTB mult8(clk,reset,start,f32,w32,m8,done8);
MULTB mult9(clk,reset,start,f33,w33,m9,done9);

parametric_RCA #(24) rca0({8'b00000000,m1},{8'b00000000,m2},1'b0,cout1,sum1);		
parametric_RCA #(24) rca1({8'b00000000,m3},{8'b00000000,m4},1'b0,cout2,sum2);		
parametric_RCA #(24) rca2({8'b00000000,m5},{8'b00000000,m6},1'b0,cout3,sum3);		
parametric_RCA #(24) rca3({8'b00000000,m7},{8'b00000000,m8},1'b0,cout4,sum4);
		
parametric_RCA #(24) rca4(sum1,{8'b00000000,m9},1'b0,cout5,sum5);		
parametric_RCA #(24) rca5(sum2,sum3,1'b0,cout6,sum6);
		
parametric_RCA #(24) rca6(sum4,sum5,1'b0,cout7,sum7);

parametric_RCA #(24) rca7(sum6,sum7,1'b0,cout8,result);
assign done = done1 & done2 & done3 & done4 & done5 & done6 & done7 & done8 & done9;		
endmodule


module CWODSP_Gaussian(
    input [7:0] f11, f12, f13, f21, f22, f23, f31, f32, f33,
    input clk, reset, start, valid_in,
    output reg [7:0] result, // 8-bit output pixel
    output reg done,
    output reg valid_out
);
    wire [15:0] m1, m2, m3, m4, m5, m6, m7, m8, m9;
    wire done1, done2, done3, done4, done5, done6, done7, done8, done9;
    wire [23:0] sum1, sum2, sum3, sum4, sum5, sum6, sum7, final_sum;
	wire cout1,cout2,cout3,cout4,cout5,cout6,cout7,cout8;

    reg valid_d1,valid_d2;
    // Gaussian weights
    localparam [7:0] w11 = 8'd1, w12 = 8'd2, w13 = 8'd1;
    localparam [7:0] w21 = 8'd2, w22 = 8'd4, w23 = 8'd2;
    localparam [7:0] w31 = 8'd1, w32 = 8'd2, w33 = 8'd1;

    // Multiplications
    MULTB mult1(clk, reset, start, f11, w11, m1, done1);
    MULTB mult2(clk, reset, start, f12, w12, m2, done2);
    MULTB mult3(clk, reset, start, f13, w13, m3, done3);
    MULTB mult4(clk, reset, start, f21, w21, m4, done4);
    MULTB mult5(clk, reset, start, f22, w22, m5, done5);
    MULTB mult6(clk, reset, start, f23, w23, m6, done6);
    MULTB mult7(clk, reset, start, f31, w31, m7, done7);
    MULTB mult8(clk, reset, start, f32, w32, m8, done8);
    MULTB mult9(clk, reset, start, f33, w33, m9, done9);

    // Adders
    parametric_RCA #(24) rca0({8'b0, m1}, {8'b0, m2}, 1'b0,cout1, sum1);
    parametric_RCA #(24) rca1({8'b0, m3}, {8'b0, m4}, 1'b0,cout2, sum2);
    parametric_RCA #(24) rca2({8'b0, m5}, {8'b0, m6}, 1'b0,cout3, sum3);
    parametric_RCA #(24) rca3({8'b0, m7}, {8'b0, m8}, 1'b0,cout4, sum4);

    parametric_RCA #(24) rca4(sum1, {8'b0, m9}, 1'b0, cout5 , sum5);
    parametric_RCA #(24) rca5(sum2, sum3, 1'b0, cout6 , sum6);
    parametric_RCA #(24) rca6(sum4, sum5, 1'b0,cout7 , sum7);

    parametric_RCA #(24) rca7(sum6, sum7, 1'b0,cout8 , final_sum);

    // Final scaling
    always @(posedge clk) begin
        if (reset) begin
            result <= 0;
            done <= 0;
        end else if (done1 & done2 & done3 & done4 & done5 & done6 & done7 & done8 & done9) begin
            result <= final_sum[23:4]; // Scale by dividing by 16
            done <= 1;
        end
    end

    always @(posedge clk) begin
        
        if (reset) begin
            
            valid_d1 <= 1'b0;
            valid_d2 <= 1'b0;
            valid_out <= 1'b0;
        end
        else begin
            
            valid_d1 <= valid_in; 
            valid_d2 <= valid_d1; 
            valid_out <= valid_d2;


            end



    end
endmodule