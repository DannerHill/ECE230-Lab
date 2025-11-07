`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2025 09:15:45 AM
// Design Name: 
// Module Name: top
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


module top(
    input [3:0] sw,
    input btnC,
    output [5:0] led
    );
    
    DFF dFlip(
        .D(sw[0]),
        .clock(btnC),
        .Q(led[0]),
        .notQ(led[1])
    );
    
    JKFF jkFlip(
        .J(sw[1]),
        .K(sw[2]),
        .clock(btnC),
        .Q(led[2]),
        .notQ(led[3])
    );
    
    TFF tFlip(
        .T(sw[3]),
        .clock(btnC),
        .Q(led[4]),
        .notQ(led[5])
    );
    
endmodule
