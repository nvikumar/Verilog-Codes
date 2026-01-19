module top_module( 
    input [1023:0] in,
    input [7:0] sel,
    output [3:0] out );

  // m = 1 : "indexed vector part select" works better, but has an unfamiliar syntax:
    assign out = in[sel*4 +: 4];

  // m = 2 : using concatenation operator
  // ------------------------------------------------------------------
  // We can't part-select multiple bits without an error, eg:
  // assign out = in[((sel * 4)+ 3) : (sel *4)];  
  // Error (10734): Verilog HDL error at top_module.v(6): sel is not a constant File
 
  
  // but we can select one bit at a time, four times, then concatenate them together.
	// assign out = {in[sel*4+3], in[sel*4+2], in[sel*4+1], in[sel*4+0]};


endmodule
