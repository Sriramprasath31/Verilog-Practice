module bit4_array_multi(

    input [3:0]A,
    input [3:0]B,
    output [7:0]P
);

    wire [3:0] W0,W1,W2,W3 ;

    //PRODUCT
    assign W0 = A & {4{B[0]}} ;
    assign W1 = A & {4{B[1]}} ;
    assign W2 = A & {4{B[2]}} ;
    assign W3 = A & {4{B[3]}} ;
 
    //ADD THE PRODUCT VALUE

    assign P= W0 + (W1<<1) + (W2<<2) + (W3<<3) ;

endmodule
