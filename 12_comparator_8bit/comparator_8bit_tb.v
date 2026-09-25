module comp_8bit_tb ;

    reg [7:0]A ;
    reg [7:0]B ;

    wire grt ;
    wire less ;
    wire eql ;

    comp_8bit uut (.A(A),.B(B),.grt(grt),.less(less),.eql(eql));

    initial begin 

        $monitor(" A=%b | B=%b | grt = %b | less = %b | eql = %b ", A,B,grt,less,eql);
        $dumpfile("comp_8bit_tb.vcd");
        $dumpvars(0,comp_8bit_tb);

        A=8'b10000011 ;
        B=8'b11001001 ;
        #10;

        A=8'b10111011 ;
        B=8'b10011111 ;
        #10;

        A=8'b00001101 ;
        B=8'b10110001 ;
        #10;

        $finish;

    end
endmodule