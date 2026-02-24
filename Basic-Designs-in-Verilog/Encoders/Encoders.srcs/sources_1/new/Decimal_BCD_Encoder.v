`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2026 22:38:04
// Design Name: 
// Module Name: Decimal_BCD_Encoder
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


module Decimal_BCD_Encoder(
    input [9:0] in,
    output reg [3:0] out
    );
    
    always @(*) begin
    casez (in) // 'casez' allows us to use '?' as "don't care"
        10'b1????????? : out = 4'd9; // If bit 9 is 1, ignore others
        10'b01???????? : out = 4'd8; 
        10'b001??????? : out = 4'd7;
        10'b0001?????? : out = 4'd6;
        10'b00001????? : out = 4'd5;
        10'b000001???? : out = 4'd4;
        10'b0000001??? : out = 4'd3;
        10'b00000001?? : out = 4'd2;
        10'b000000001? : out = 4'd1;
        default        : out = 4'd0;
    endcase
    end
endmodule
