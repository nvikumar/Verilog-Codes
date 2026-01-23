module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 

  // there are two groups of 4 minterms
  assign out = (~a & ~d) | (~c & ~b) | (c & d & (a | b));

  //  which is equivalent to 
  // assign out = (~b & ~c) | (~a & ~d) | (~a & b & c) | (a & c & d);

endmodule
