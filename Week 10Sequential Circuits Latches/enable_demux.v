module enable_demux (
    input btn_c,
    input [1:0] Sel,
    output reg A, B, C, D
    );

    always @(*) begin
        case(Sel)
            2'b00: {D, C, B, A} <= {1'b0, 1'b0, 1'b0, btn_c}; 
            2'b01: {D, C, B, A} <= {1'b0, 1'b0, btn_c, 1'b0};
            2'b10: {D, C, B, A} <= {1'b0, btn_c, 1'b0, 1'b0};
            2'b11: {D, C, B, A} <= {btn_c, 1'b0, 1'b0, 1'b0};
        endcase
   end
endmodule;