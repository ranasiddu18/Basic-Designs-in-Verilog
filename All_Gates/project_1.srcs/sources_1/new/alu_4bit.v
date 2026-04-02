`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2026 23:09:40
// Design Name: 
// Module Name: alu_4bit
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


 

    module alu_4bit(
    input [3:0] A, B,  // 4-bit inputs
    input [2:0] Sel,   // 3-bit selection line
    output reg [7:0] Out // 8-bit output to handle multiplication
    );
    always @(*) begin
        case(Sel)
            3'b000: Out = A + B;
            3'b001: Out = A - B;
            3'b010: Out = A * B;
            3'b011: Out = A & B;
            3'b100: Out = A | B;
            3'b101: Out = A ^ B;
            3'b110: Out = ~A;
            3'b111: Out = A << 1;
            default: Out = 8'b0;
        endcase
    end
endmodule
