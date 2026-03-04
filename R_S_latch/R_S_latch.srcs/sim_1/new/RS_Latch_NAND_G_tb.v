`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.03.2026 19:12:46
// Design Name: 
// Module Name: RS_Latch_NAND_G_tb
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


module RS_Latch_NAND_G_tb();
reg Reset,Set;
wire Q,Q0;

RS_latch_NAND_G uut(Reset,Set,Q,Q0);
initial begin
Set=0; Reset=0; #10
Set=0; Reset=1; #10
Set=1; Reset=0; #10
Set=1; Reset=1; #10
$finish;
end
endmodule
