`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2025 09:15:45 AM
// Design Name: 
// Module Name: TFF
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


module TFF(
    input T, clock,
    output Q,
    output notQ
    );
    
    JKFF innerJK(
        .J(T),
        .K(T),
        .clock(clock),
        .Q(Q),
        .notQ(notQ)
    );
    
endmodule
