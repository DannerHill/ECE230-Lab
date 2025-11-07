`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2025 09:15:45 AM
// Design Name: 
// Module Name: DFF
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


module DFF(
    input D, clock,
    output reg Q,
    output notQ
    );

    assign notQ = ~Q;

    initial begin   
        Q <= 0;
    end
    
    always @(posedge clock) begin
        Q <= D;
    end
endmodule
