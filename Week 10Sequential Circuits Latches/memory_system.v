module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);

    wire sel[3:0];
    enable_demux DMUX_SEL(
        .btn_c(store),
        .Sel(addr),
        .A(sel[0]),
        .B(sel[1]),
        .C(sel[2]),
        .D(sel[3])
    );

    // This should instantiate 4 instances of
    // byte_memory, and then demultiplex
    // data and store into the one selected by
    // addr
        
    wire [7:0] data_wire[3:0];
    demux DMUX_DATA(
        .X(data),
        .Enable(1'b1),
        .Sel(addr),
        .A(data_wire[0]),
        .B(data_wire[1]),
        .C(data_wire[2]),
        .D(data_wire[3])
    );
    
    wire [7:0] wire_out[3:0];
    
    byte_memory byte1(
        .data(data_wire[0]),
        .store(sel[0]),
        .memory(wire_out[0])
    );
    
    
    byte_memory byte2(
        .data(data_wire[1]),
        .store(sel[1]),
        .memory(wire_out[1])
    );
    
    
    byte_memory byte3(
        .data(data_wire[2]),
        .store(sel[2]),
        .memory(wire_out[2])
    );
    
    
    byte_memory byte4(
        .data(data_wire[3]),
        .store(sel[3]),
        .memory(wire_out[3])
    );

    // It should then multiplex the output of the
    // memory specified by addr into the memory
    // output for display on the LEDs

    
    


    // you will need 2 demultiplexers:
    // 1. Demultiplex data -> selected byte
    // 2. Demultiplex store -> selected byte

    // and one multiplexer:
    // 1. Multiplex selected byte -> memory
    output_mux MUX(
        .Sel(addr),
        .A(wire_out[0]),
        .B(wire_out[1]),
        .C(wire_out[2]),
        .D(wire_out[3]),
        .Enable(1'b1), // might be wrong :(
        .Y(memory)
    );

endmodule