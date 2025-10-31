module output_mux(
    input [7:0] A,  B,  C, D, 
    input Enable,
    input [1:0] Sel,
    output [7:0] Y
    );
    
    assign Y = (Sel == 2'b00 && Enable) ? A :
         (Sel == 2'b01 && Enable) ? B :
         (Sel == 2'b10 && Enable) ? C : D;
endmodule