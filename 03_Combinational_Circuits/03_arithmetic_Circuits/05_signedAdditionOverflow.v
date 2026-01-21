module top_module (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); //
 
    assign s = a + b;

  // Overflow is generated if sign of both the operands are same, and the sign bit of generated result is different.
  // two positive numbers generates a negative sum.
  // two negative numbers generates a positive sum.
    
     assign overflow = (a[7] == b[7]) && (a[7] != s[7]);

  // m = 2:
  // assign overflow = (~(a[7] ^ b[7])) & (s[7] != a[7]);
  
  // m = 3:
  // assign overflow = (a[7] & b[7] & ~s[7]) | (~a[7] & ~b[7] & s[7]);
endmodule
