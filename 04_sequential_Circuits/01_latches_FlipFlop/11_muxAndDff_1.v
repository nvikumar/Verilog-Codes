module top_module (
	input clk,
	input L,
	input r_in,
	input q_in,
	output reg Q);
    
    always @(posedge clk) 
        Q <= L ? r_in : q_in;

  // this can be done as declaring a wire also
  /*
    wire d;
    assign d = L ? r_in : q_in;
    always @(posedge clk)
        Q <= d;
  */

endmodule
