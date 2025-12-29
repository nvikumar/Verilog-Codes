module top_module(
    input clk,
    input load,
    input [511:0] data,
    output [511:0] q ); 
    
    always @(posedge clk) begin
        if (load) q <= data;
      //        left neighbour     right neighbour  
      else q <= q[511:1] ^ {q[510:0], 1'b0};

        //m = 2
        //else q <= q<<1 ^ q>>1;
    end

endmodule
