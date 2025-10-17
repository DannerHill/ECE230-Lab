module top(
    input [9:0] sw,
    output [13:0] led
    
);

half_sub Hsub(
    .A(sw[0]),
    .B(sw[1]),
    .Y(led[0]),
    .Borrow(led[1])
 );
 
 ones_compliment OnesComp(
     .A0(sw[2]),
     .A1(sw[3]),
     .A2(sw[4]),
     .A3(sw[5]),
     .B0(sw[6]),
     .B1(sw[7]),
     .B2(sw[8]),
     .B3(sw[9]),
     .Y0(led[2]),
     .Y1(led[3]),
     .Y2(led[4]),
     .Y3(led[5])
 );
 
 twos_compliment TwosComp(
    .A(sw[9:2]),
    .Y(led[13:6])
 );
 

endmodule 