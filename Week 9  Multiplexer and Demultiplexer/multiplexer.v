`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2025 09:15:53 AM
// Design Name: 
// Module Name: multiplexer
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


module multiplexer(
    input [3:0] A,  B,  C, D, 
    input Enable,
    input [1:0] Sel,
    output [3:0] Y
    );
    
    assign Y = (Sel == 2'b00 && Enable) ? A :
         (Sel == 2'b01 && Enable) ? B :
         (Sel == 2'b10 && Enable) ? C : D;
endmodule
