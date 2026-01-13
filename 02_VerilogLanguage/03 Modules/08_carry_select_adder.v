module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cout;
    wire [15:0] temp1, temp2;
    add16 a0 (a[15:0], b[15:0], 1'b0, sum[15:0], cout);
    add16 a1 (a[31:16], b[31:16], 1'b0, temp1);
    add16 a2 (a[31:16], b[31:16], 1'b1, temp2);
    
    assign sum[31:16] = cout ? temp2 : temp1;

  // m = 2
  /*
    wire c, c1,c2;
    wire [15:0] s[1:0];
    
    add16 a1 (a[15:0], b[15:0], 0, sum[15:0], c);
    add16 a2 (a[31:16], b[31:16], 0, s[0], c1);
    add16 a3 (a[31:16], b[31:16], 1, s[1], c2);
    
    assign sum[31:16] = s[c];
    */

endmodule
