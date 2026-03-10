`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2026 16:41:30
// Design Name: 
// Module Name: asyn_count_T_ff
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


module asyn_count_T_ff(
    input t,
    input clk,
    input rst,
    output [3:0] q,
    output [3:0] q0
    );
    assign t=1;
t_ff t1(t,clk,rst,q[0]);
t_ff t2(t,q[0],rst,q[1]);
t_ff t3(t,q[1],rst,q[2]);
t_ff t4(t,q[2],rst,q[3]);
assign q={q[3],q[2],q[1],q[0]};
assign q0=~q;
endmodule

