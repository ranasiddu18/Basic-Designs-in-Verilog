`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2026 12:00:52
// Design Name: 
// Module Name: Even_Parity_Checker_tb
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


module Even_Parity_Checker_tb();
reg [3:0] IN;
wire P,Even;
Even_Parity_Checker uut(IN,P,Even);
initial begin
IN = 4'b0010; #10
IN = 4'b0110; #10
IN = 4'b1110; #10
IN = 4'b1111; #10
IN = 4'b0000; #10
$finish;
end
endmodule
