`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2025 09:15:45 AM
// Design Name: 
// Module Name: JKFF
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


module JKFF(
    input J, K, clock,
    output Q,
    output notQ
    );
    
    wire innrD;
    assign innrD = (J & notQ) | (~K & Q);
    
    DFF innerD(
        .D(innrD),
        .clock(clock),
        .Q(Q),
        .notQ(notQ)
    );
    
    
endmodule
