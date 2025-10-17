module ones_compliment(
input A0, A1, A2, A3, B0, B1, B2, B3,
output Y0, Y1, Y2, Y3
); 

wire carry0_1;
wire out0;

full_adder bit0(
    .A(A0),
    .B(B0),
    .Y(out0),
    .Cin(0),
    .Cout(carry0_1)
);

wire carry1_2;
wire out1;
full_adder bit1(
    .A(A1),
    .B(B1),
    .Y(out1),
    .Cin(carry0_1),
    .Cout(carry1_2)
);

wire carry2_3;
wire out2;
full_adder bit2(
    .A(A2),
    .B(B2),
    .Y(out2),
    .Cin(carry1_2),
    .Cout(carry2_3)
);

wire carry3_0;
wire out3;
full_adder bit3(
    .A(A3),
    .B(B3),
    .Y(out3),
    .Cin(carry2_3),
    .Cout(carry3_0)
);

wire ecarry0_1;
full_adder ebit0(
    .A(out0),
    .B(0),
    .Y(Y0),
    .Cin(carry3_0),
    .Cout(ecarry0_1)
);

wire ecarry1_2;
full_adder ebit1(
    .A(out1),
    .B(0),
    .Y(Y1),
    .Cin(ecarry0_1),
    .Cout(ecarry1_2)
);

wire ecarry2_3;
full_adder ebit2(
    .A(out2),
    .B(0),
    .Y(Y2),
    .Cin(ecarry1_2),
    .Cout(ecarry2_3)
);

wire ecarry3_0;
full_adder ebit3(
    .A(out3),
    .B(0),
    .Y(Y3),
    .Cin(ecarry2_3),
    .Cout(ecarry3_0)
);
endmodule    