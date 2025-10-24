`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2025 09:15:53 AM
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
    input [15:0] sw, 
    input btnL, btnU, btnD, btnR, btnC,
    output [15:0] led
    );
    
    wire [1:0] mul_select;
    wire [1:0] demul_select;
    assign mul_select = {btnU, btnL};
    assign demul_select = {btnR, btnD};
    
    //assign Enable = {btnC};
    wire [3:0] MUX_to_DEMUX;
    
    multiplexer MUX(
      .A(sw[3:0]),
      .B(sw[7:4]),
      .C(sw[11:8]),
      .D(sw[15:12]),
      .Sel(mul_select),
      .Enable(btnC),
      .Y(MUX_to_DEMUX)
    );
    
    demultiplexer DEMUX(
        .X(MUX_to_DEMUX),
        .Sel(demul_select),
        .Enable(btnC),
        .A(led[3:0]),
        .B(led[7:4]),
        .C(led[11:8]),
        .D(led[15:12])
    );
endmodule
