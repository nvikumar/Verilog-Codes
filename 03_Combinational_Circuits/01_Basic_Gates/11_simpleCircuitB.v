module top_module ( input x, input y, output z );

  // acc to the truth table
	// Two minterms: 
	// assign z = (~x & ~y) | (x & y);

	// Or: Notice this is an XNOR.
    assign z = ~(x ^ y);
endmodule
