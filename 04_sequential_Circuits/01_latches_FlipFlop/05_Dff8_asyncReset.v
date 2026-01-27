module top_module (
    input clk,
    input areset,   // active high asynchronous reset
    input [7:0] d,
    output [7:0] q
);
  // only difference between sync, and async reset is in sensitivity list.
  // in this case output also changes with the positive edge of the areset also.
    always @(posedge clk, posedge areset) begin
        q <= areset ? 8'b0 : d;
    end

  // m = 2: using if else
  /*
  always @(posedge clk, posedge areset)
		if (areset)
			q <= 0;
		else
			q <= d;
  */

endmodule
