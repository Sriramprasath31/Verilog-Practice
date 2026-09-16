module excess32bcd(

    input   [3:0]excess ,
    output  [3:0]bcd 
);

    assign bcd = excess -4'b0011 ;

endmodule