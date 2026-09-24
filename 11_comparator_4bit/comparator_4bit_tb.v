module comp_4bit_tb ;

    reg [3:0]A ;
    reg [3:0]B ;

    wire grt ;
    wire less ;
    wire eql ;

    comp_4bit uut (.A(A),.B(B),.grt(grt),.less(less),.eql(eql));

    initial begin 

        $monitor(" A=%b | B=%b | grt = %b | less = %b | eql = %b ", A,B,grt,less,eql);
        $dumpfile("comp_4bit_tb.vcd");
        $dumpvars(0,comp_4bit_tb);

        A=4'b0011 ;
        B=4'b1001 ;
        #10;

        A=4'b1011 ;
        B=4'b1001 ;
        #10;

        A=4'b0001 ;
        B=4'b1001 ;
        #10;

        $finish;

    end
endmodule