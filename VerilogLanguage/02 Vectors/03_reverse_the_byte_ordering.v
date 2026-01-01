// reverse the byte ordering of the 4-byte word.
// AaaaaaaaBbbbbbbbCcccccccDddddddd => DdddddddCcccccccBbbbbbbbAaaaaaaa


module top_module( 
    input [31:0] in,
    output [31:0] out );
    
    assign out = {in[7 -: 8],in[8 +: 8] ,in[16 +: 8] , in[24 +: 8]};

endmodule
