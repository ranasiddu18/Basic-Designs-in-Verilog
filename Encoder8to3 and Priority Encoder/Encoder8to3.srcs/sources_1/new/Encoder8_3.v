`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2026 23:56:42
// Design Name: 
// Module Name: Encoder8_3
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


module Encoder8_3(
    input [7:0] Ain,
    output reg [2:0] Bout
    );
  always@(*)
  begin
  case(Ain)
   8'b00000000: begin Bout=3'b000; end
   8'b00000001: begin Bout=3'b000; end 
   8'b00000010: begin Bout=3'b001; end
   8'b00000100: begin Bout=3'b010; end
   8'b00001000: begin Bout=3'b011; end
   8'b00010000: begin Bout=3'b100; end
   8'b00100000: begin Bout=3'b101; end
   8'b01000000: begin Bout=3'b110; end
   8'b10000000: begin Bout=3'b111; end
   default : begin Bout=3'b000; end
  endcase
  end
endmodule
