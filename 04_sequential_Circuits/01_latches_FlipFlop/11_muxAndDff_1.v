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

	// m = 3: if else statement also creates a mux
	/*
	always @(posedge clk) begin
     if(L)
        Q <= r_in;
     else
        Q <= q_in;
  	end
  */

endmodule
