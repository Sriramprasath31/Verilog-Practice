module booth_multiplier_tb;

    reg signed [3:0]A ;
    reg signed [3:0]B ;
    wire signed [7:0]P ;

    booth_multiplier uut (.A(A),.B(B),.P(P));

    initial begin 

        $monitor(" A=%b |B=%b |P=%b ",A,B,P);
        $dumpfile("booth_multiplier_tb.vcd");
        $dumpvars(0,booth_multiplier_tb);

        A=4'sd3;
        B=4'sd2;
        #10;

        A=4'sd6;
        B=4'sd2;
        #10;

        $finish;
    end
endmodule