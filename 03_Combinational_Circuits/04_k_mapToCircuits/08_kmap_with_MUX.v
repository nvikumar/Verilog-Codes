module top_module (
    input c,
    input d,
    output [3:0] mux_in
); 
  
  // m = 1: using 2:1 multiplexer and no logic gates
  // split truth table in four columns
  // here using ternary operator (conditional operator) as mux
  assign mux_in[0] = c ? 1 : d;        
  assign mux_in[1] = 1'b0;            // no mux required
    assign mux_in[2] = d ? 0 : 1;
    assign mux_in[3] = c ? d : 0;

  // if we are allowed to use logic gates
  // m = 2:
  // -----------------------------------------
  /*
    assign mux_in[0] = c |d;
    assign mux_in[1] = 1'b0;
    assign mux_in[2] = !d;
    assign mux_in[3] = c&d;
    */

  // m = 3:
  // ----------------------------------------
  /*
    assign mux_in = {
        c&d,		// 11 (3)
        ~d,			// 10 (2)
        1'b0,		// 01 (1)
        c|d			// 00 (0)
    };
8?

endmodule
