`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2026 22:47:03
// Design Name: 
// Module Name: Decimal_BCD_Encoder
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


module Decimal_BCD_Encoder_tb();
 


    reg [9:0] in;
    wire [3:0] out ;

    Decimal_BCD_Encoder uut(in,out);
    initial begin
        $display("Time\t Input (Hex)\t Output (BCD)");
        $monitor("%0t\t %h\t\t %d", $time, in,out);
        in = 10'b0000000000; #10;
        in = 10'b0000000001; #10; // Decimal 0 (Note: our code maps in[0] to 0)
        in = 10'b0000000010; #10; // Decimal 1
        in = 10'b0000000100; #10; // Decimal 2
        in = 10'b0100000000; #10; // Decimal 8
        in = 10'b1000000000; #10; // Decimal 9
      
        
        $display("Testing Priority: in[9] and in[1] are both 1...");
        in = 10'b1000000010; #10; 
        
      
        $display("Testing Priority: in[6], in[5], and in[4] are all 1...");
        in = 10'b0001110000; #10;

     
        in = 10'b0000000000; #10;

        $display("Simulation Finished.");
        $finish;
    end
endmodule
