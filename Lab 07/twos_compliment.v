module twos_compliment(
    input [7:0] A,
    output [7:0] Y
);
    wire [7:0] notA;
    assign notA = ~A;
    wire carry0_1;
    
    full_add add0(
        .A(notA[0]),
        .B(1'b1),
        .Cin(1'b0),
        .Cout(carry0_1),
        .Y(Y[0])
    );
    
    wire carry1_2;
    full_add add1(
        .A(notA[1]),
        .B(1'b0),
        .Cin(carry0_1),
        .Cout(carry1_2),
        .Y(Y[1])
    );
    
    wire carry2_3;
    full_add add2(
        .A(notA[2]),
        .B(1'b0),
        .Cin(carry1_2),
        .Cout(carry2_3),
        .Y(Y[2])
    );
    
    wire carry3_4;
    full_add add3(
        .A(notA[3]),
        .B(1'b0),
        .Cin(carry2_3),
        .Cout(carry3_4),
        .Y(Y[3])
    );
    
    wire carry4_5;
    full_add add4(
        .A(notA[4]),
        .B(1'b0),
        .Cin(carry3_4),
        .Cout(carry4_5),
        .Y(Y[4])
    );
    
    wire carry5_6;
    full_add add5(
        .A(notA[5]),
        .B(1'b0),
        .Cin(carry4_5),
        .Cout(carry5_6),
        .Y(Y[5])
    );
    
    wire carry6_7;
    full_add add6(
        .A(notA[6]),
        .B(1'b0),
        .Cin(carry5_6),
        .Cout(carry6_7),
        .Y(Y[6])
    );
    
    full_add add7(
        .A(notA[7]),
        .B(1'b0),
        .Cin(carry6_7),
//        .Cout(),
        .Y(Y[7])
    );
    
endmodule