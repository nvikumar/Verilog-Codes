module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 

  // dont care can be 0 or 1, depending upon our use
  assign out = a | (c & ~b);
  
endmodule
