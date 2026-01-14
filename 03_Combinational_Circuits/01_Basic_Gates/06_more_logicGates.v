module top_module( 
    input a, b,
    output out_and,
    output out_or,
    output out_xor,
    output out_nand,
    output out_nor,
    output out_xnor,
    output out_anotb
);
    // since out is not reg, hence can't use always block, so we need to write assign multiple times.
    assign out_and = a & b;
    assign out_or = a|b;
    assign out_xor = a^b;
    assign out_nand = ~(a & b);
    assign out_nor = ~(a|b);
    assign out_xnor = ~(a^b);
    assign out_anotb = a & ~b;   

endmodule
