`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2025 09:15:53 AM
// Design Name: 
// Module Name: demultiplexer
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


module demultiplexer(
    input [3:0] X,
    input  Enable, 
    input [1:0] Sel,
    output [3:0] A,  B,  C,  D
    );
    
    assign A = (Enable && Sel == 2'b00) ? X : 4'b0000;
    assign B = (Enable && Sel == 2'b01) ? X : 4'b0000;
    assign C = (Enable && Sel == 2'b10) ? X : 4'b0000;
    assign D = (Enable && Sel == 2'b11) ? X : 4'b0000;
    
endmodule
