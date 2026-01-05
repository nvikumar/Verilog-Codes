`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    
    wire w1, w2; // decalaring two wires
    
    // m = 1: using structural modeling
    not n0(out_n,out);
    or or0(out,w1,w2);
    
    and and0(w1,a,b);
    and and1(w2,c,d);
    
    // m = 2, can also done using DataFlow Modeling
    // More concise and easier to maintain for complex logic.
 /*
    assign w1 = a & b;
    assign w2 = c & d;
    assign out = w1 | w2;
    assign out_n = ~out;
 */
    
    // m = 3; can be written more consisely, without using any wires.
/*    
    assign out = (a & b) | (c & d);
    assign out_n = ~out;
*/
endmodule
