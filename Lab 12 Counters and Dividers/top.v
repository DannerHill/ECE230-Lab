module top(
	input btnC,
	input btnU,
	output [6:0] led

);

//Part 1: Ripple Counter (Divide by 8)

wire [2:0] ripple_clk;
assign ripple_clk[0] = btnC;
assign ripple_clk[1] = led[0];
assign ripple_clk[2] = led[1];

genvar i;
generate
	for (i = 0; i < 3; i = i + 1) begin
		TFF tff(
			.T(1'b1),
        		.clock(ripple_clk[i]),
			.reset(btnU),
        		.Q(led[i]),
        		.notQ(notQ)

);

end
endgenerate
			


//Part 2: Modulo Counter (Divide by 12)

// Internal wires
wire [2:0] count;
wire [2:0] next_count;
wire [2:0] adder_out;
wire [2:1] carry;
wire compare_reset;
wire modulo_output;
wire output_next;

// Comparator
assign compare_reset = (count == 3'b101);

// Use generate loop for 3-bit adder
genvar j;
generate
    for (j = 0; j < 3; j = j + 1) begin : adder_stage
        if (j == 0) begin
            // First stage: add 1
            full_adder fa(
                .A(count[j]),
                .B(1'b1),
                .Cin(1'b0),
                .Y(adder_out[j]),
                .Cout(carry[j+1])
            );
        end else if (j == 1) begin
            // Middle stage
            full_adder fa(
                .A(count[j]),
                .B(1'b0),
                .Cin(carry[j]),
                .Y(adder_out[j]),
                .Cout(carry[j+1])
            );
        end else begin
            // Last stage
            full_adder fa(
                .A(count[j]),
                .B(1'b0),
                .Cin(carry[j]),
                .Y(adder_out[j]),
                .Cout()
            );
        end
    end
endgenerate

// Mux
assign next_count = compare_reset ? 3'b000 : adder_out;

// Use generate loop for counter D-FlipFlops
genvar k;
generate
    for (k = 0; k < 3; k = k + 1) begin : counter_storage
        DFF dff(
            .D(next_count[k]),
            .clock(btnC),
            .reset(btnU),
            .Q(count[k])
        );
    end
endgenerate

// Display counter on LEDs
assign led[3] = count[0];
assign led[4] = count[1];
assign led[5] = count[2];

// Output toggle
assign output_next = compare_reset ? ~modulo_output : modulo_output;

DFF output_ff(
    .D(output_next),
    .clock(btnC),
    .reset(btnU),
    .Q(modulo_output)
);

assign led[6] = modulo_output;

endmodule
