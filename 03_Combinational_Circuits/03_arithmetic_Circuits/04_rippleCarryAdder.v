module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);

  	// This circuit is a 4-bit ripple-carry adder with carry-out.
	assign sum = x+y;	// Verilog addition automatically produces the carry-out bit.

	// Verilog quirk: Even though the value of (x+y) includes the carry-out, (x+y) is still considered to be a 4-bit number (The max width of the two operands).
	// This is correct: // assign sum = (x+y);
  
	// But this is incorrect:
	// assign sum = {x+y};	// Concatenation operator: This discards the carry-out

  // m = 2 : using module instantiation
  /*
    wire [2:0] cout;
    fa fa0(x[0], y[0], 1'b0, sum[0], cout[0]);
    fa fa1(x[1], y[1], cout[0], sum[1], cout[1]);
    fa fa2(x[2], y[2], cout[1], sum[2], cout[2]);
    fa fa3(x[3], y[3], cout[2], sum[3], sum[4]);
*/

  // m = 3 : using generate
  /*  
  wire [4:0] c;
    assign c[0] = 1'b0;
    
    genvar i;
    generate
        for (i = 0; i<4; i++) 
            begin : add
                fadd f(x[i], y[i], c[i], c[i+1], sum[i]);
            end        
    endgenerate
    
    assign sum[4] = c[4];
  */
endmodule

// module declaration
// -------------------------------------------------------
module fa(input x, y,cin, output sum, cout);
    assign {cout, sum} = x+y+cin;    
endmodule
