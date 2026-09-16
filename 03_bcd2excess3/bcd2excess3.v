module bcd2excess3(

    input   [3:0]bcd ,
    output  [3:0]excess 
);

    assign excess = bcd +4'b0011 ;

endmodule