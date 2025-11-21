module binary(
    input w,
    input clk,
    input reset,
    output z,
    output [2:0] y
);

    wire [2:0] Next;

    dff zero(
        .Default(1'b0),
        .D(Next[0]),
        .clk(clk),
        .Q(y[0]),
        .reset(reset)
    );

    dff one(
        .Default(1'b0),
        .D(Next[1]),
        .clk(clk),
        .Q(y[1]),
        .reset(reset)
    );
    
    dff two(
        .Default(1'b0),
        .D(Next[2]),
        .clk(clk),
        .Q(y[2]),
        .reset(reset)
    );

    assign z = (y[2] & ~y[1] & ~y[0]) | (~y[2] & y[1] & ~y[0]);
//    assign Next[0] = ~w & ((~y[1] & ~y[0]) | (~y[2] & y[1] & y[0])) | w & ((~y[1] & ~y[2]) | (~y[2] & y[0]));
    assign Next[0] = (~w & ~y[1] & ~y[0]) | (w & ~y[2] & ~y[1]) | (~y[2] & ~y[0] & w) | (~y[2] & y[1] & y[0] & ~w);
//    assign Next[1] = ~y[2] & ((~y[1] & y[0]) | (w & ~y[1]) | (y[1] & ~y[0]));
    assign Next[1] = (~y[2] & y[1] & ~y[0]) | (~y[2] & ~y[1] & w) | (~y[2] & ~y[1] & y[0]);
//    assign Next[2] = w & ((~y[2] & y[1] & y[0]) | (y[2] & ~y[1] & ~y[0]));
    assign Next[2] = (~y[2] & y[1] & y[0] & w) | (y[2] & ~y[1] & ~y[0] & w);
endmodule