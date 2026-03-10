`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2026 17:02:23
// Design Name: 
// Module Name: testbench
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


module testbench();
reg t,clk,rst;
wire[3:0]q,q0;
asyn_count_T_ff uut(t,clk,rst,q,q0);
initial
begin
clk=0;
forever #5 clk=~clk;
end
initial
begin
t=1;rst=1; #5
t=1;rst=0;#10
t=1;rst=1;#120
$finish;
end
endmodule
