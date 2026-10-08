module bit4_array_multi_tb ;

    reg  [3:0]A ;
    reg  [3:0]B ;
    wire [7:0]P ; 

    bit4_array_multi uut (.A(A),.B(B),.P(P));


    initial begin

        $monitor(" A=%b | B=%b | P=%b ", A,B,P);
        $dumpfile("bit4_array_multi_tb.vcd");
        $dumpvars(0,bit4_array_multi_tb);  

        A=4'b1001 ;
        B=4'B1100 ;
        #10; 

        A=4'b1101 ;
        B=4'B1101 ;
        #10;

        A=4'b1011 ;
        B=4'B1110 ;
        #10;

        A=4'b1111 ;
        B=4'B1110 ;
        #10;
        $finish;

    end
endmodule