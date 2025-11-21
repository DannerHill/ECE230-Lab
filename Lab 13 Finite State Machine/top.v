module top(
    input sw, // w
    output [9:0] led, // see IO table
    input btnC, // clk
    input btnU // reset
);

    binary bnr(
        .w(sw),
        .clk(btnC),
        .z(led[1]),
        .reset(btnU),
        .y(led[9:7])
    );
    
    onehot hot(
        .w(sw),
        .clk(btnC),
        .reset(btnU),
        .z(led[0]),
        .y(led[6:2])
        );
    
    

endmodule