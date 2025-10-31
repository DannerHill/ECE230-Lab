module d_latch(
    input D, E,
    output NotQ,
    output reg Q
    );
    
    assign NotQ = ~Q;

    always @(D, E) begin
        if (E)
            Q <= D;
    end
endmodule