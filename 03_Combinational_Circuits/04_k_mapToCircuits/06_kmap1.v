module top_module (
    input [4:1] x, 
    output f );
    
    // there will be only two implicant groups
    assign f = x[3] & ~x[1] | ~x[3] & x[1] & x[2];

endmodule
