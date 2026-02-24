`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2026 21:25:35
// Design Name: 
// Module Name: Gray_Binary_tb
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


module Gray_Binary_tb();
reg [3:0] Gin;
wire [3:0] Bout;

Gray__Binary uut(Gin,Bout);
initial begin
Gin=4'b1010; #10
Gin=4'b1000; #10
Gin=4'b0101; #10
Gin=4'b1110; #10
Gin=4'b0010; #10
$finish;
end
endmodule
