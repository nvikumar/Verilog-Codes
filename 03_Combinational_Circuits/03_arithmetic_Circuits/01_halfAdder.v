module top_module( 
    input a, b,
    output cout, sum );

  // m = 1 : using behavioural Modeling
    assign {cout, sum} = a + b;

  // m = 2 : using structural modeling
    assign sum = a ^ b;
    assign cout = a & b; 

endmodule
