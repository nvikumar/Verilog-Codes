module top_module( 
    input [99:0] in,
    output [99:0] out
);
    integer i;	//use integer for pure verilog
    always @(*)
        for (i = 0; i<100; i++) out[i] = in[99-i];

endmodule
