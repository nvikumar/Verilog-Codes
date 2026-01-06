module top_module ( input a, input b, output out );
    
    // m =1 : using named port connection (ordering doesn't matter)
    mod_a a1 (.in1(a), .out(out), .in2(b));
    
    // (Note: mod_a's port "out" is not related to top_module's wire "out". 
	// It is simply coincidence that they have the same name)
    
    // m = 2: positional port connection (easy but ordering matters hence may break if ports are updated)
    // mod_a a0 (a, b, out);
    
    
endmodule
