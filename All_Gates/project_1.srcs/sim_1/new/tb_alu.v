`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2026 23:12:59
// Design Name: 
// Module Name: tb_alu
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


module tb_alu();
reg [3:0] A, B;
    reg [2:0] Sel;
    wire [7:0] Out;
// Instantiate the Unit Under Test (UUT)
    alu_4bit uut (
        .A(A), 
        .B(B), 
        .Sel(Sel), 
        .Out(Out)
    );
  initial begin
        // Initialize Inputs
        A = 4'b1010; B = 4'b0101; Sel = 3'b000; #10; // Add: 10 + 5 = 15
        Sel = 3'b001; #10; // Subtract: 10 - 5 = 5
        Sel = 3'b010; #10; // Multiply: 10 * 5 = 50
        Sel = 3'b011; #10; // AND: 1010 & 0101 = 0
        Sel = 3'b100; #10; // OR: 1010 | 0101 = 15
        Sel = 3'b101; #10; // XOR: 1010 ^ 0101 = 15
        Sel = 3'b110; #10; // NOT A: ~1010 = 0101
        Sel = 3'b111; #10; // Shift Left: 1010 << 1 = 0100 (in 4-bit)
        $stop; // End simulation
    end
endmodule
