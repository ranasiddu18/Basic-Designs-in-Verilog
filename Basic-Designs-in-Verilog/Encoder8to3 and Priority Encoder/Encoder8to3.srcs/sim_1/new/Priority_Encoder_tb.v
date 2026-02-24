`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.02.2026 18:13:21
// Design Name: 
// Module Name: Priority_Encoder_tb
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


module Priority_Encoder_tb();
reg [3:0] Iin;
wire [1:0] O;
wire V;
Priority_Encoder4_2 uut(Iin,O,V);
initial
begin
Iin=4'b0000; #5
Iin=4'b1001; #10
Iin=4'b0011; #10
Iin=4'b1101; #10
Iin=4'b0101; #10
Iin=4'b0001; #10
$finish;
end
endmodule
