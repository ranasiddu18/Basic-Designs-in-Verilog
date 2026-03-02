`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.03.2026 18:42:16
// Design Name: 
// Module Name: tristate_buffer_tb
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


module tristate_buffer_tb();
reg in,en;
wire out;
tristate_buffer uut(in,en,out);

initial begin
in=0; en=0; #10
in=1; en=0; #10
in=0; en=1; #10
in=1; en=1; #10
$finish;
end
endmodule
