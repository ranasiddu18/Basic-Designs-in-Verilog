`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2026 19:10:03
// Design Name: 
// Module Name: RS_latch_Nor_G_tb
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


module RS_latch_Nor_G_tb();
reg Reset,Set;
wire Q,Q0;
R_S_latch_Nor_G uut(Reset,Set,Q,Q0);
initial begin
Set=0; Reset=0; #10
Set=0; Reset=1; #10
Set=1; Reset=0; #10
Set=1; Reset=1; #10
$finish;
end
endmodule
