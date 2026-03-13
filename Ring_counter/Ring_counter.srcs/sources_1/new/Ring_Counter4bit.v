`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2026 20:36:22
// Design Name: 
// Module Name: Ring_Counter4bit
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


module Ring_Counter4bit(
    input clk,
    input rst,
    output reg [3:0] q
    );
    always@(posedge clk)
    begin
    if(!rst)
q=4'b0001;
else
q<={q[2:0], q[3]};
end

endmodule
