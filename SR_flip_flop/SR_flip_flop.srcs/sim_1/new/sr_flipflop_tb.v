`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2026 17:41:32
// Design Name: 
// Module Name: sr_flipflop_tb
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


module sr_flipflop_tb();
reg set,reset,clk;
wire q,q0;

sr_flip_flop uut(set,reset,clk,q,q0);

initial
begin
clk=0;
forever #5 clk=~clk;
end
initial
begin
 set=0; reset=0; #10
 set=0; reset=1; #10
 set=1; reset=0; #10
 set=1; reset=1; #10
 set=0; reset=0; #10
 set=0; reset=1; #10
 set=1; reset=0; #10
$finish;
end

endmodule
