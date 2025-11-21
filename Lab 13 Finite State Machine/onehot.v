// Implement one-hot state machine
module onehot(
    input w,
    input clk,
    output z,
    output [4:0] y,
    input reset
);
    wire [4:0] Y;

    dff Adff(
        .Default(1'b1),
        .D(Y[0]),
        .clk(clk),
        .Q(y[0]),
        .reset(reset)
    );

    dff Bdff(
        .Default(1'b0),
        .D(Y[1]),
        .clk(clk),
        .Q(y[1]),
        .reset(reset)
    );

    dff Cdff(
        .Default(1'b0),
        .D(Y[2]),
        .clk(clk),
        .Q(y[2]),
        .reset(reset)
    );
    
    dff Ddff(
        .Default(1'b0),
        .D(Y[3]),
        .clk(clk),
        .Q(y[3]),
        .reset(reset)
    );
    
    dff Edff(
        .Default(1'b0),
        .D(Y[4]),
        .clk(clk),
        .Q(y[4]),
        .reset(reset)
    );

    assign z = y[2] | y[4];

    assign Y[0] = 1'b0;
    assign Y[1] = ~w & (y[0] | y[3] | y[4]);
    assign Y[2] = ~w & (y[1] | y[2]);
    assign Y[3] = w & (y[0] | y[1] | y[2]);
    assign Y[4] = w & (y[3] | y[4]);
    
endmodule