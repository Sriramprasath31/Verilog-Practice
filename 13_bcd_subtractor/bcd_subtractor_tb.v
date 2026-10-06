module bcd_sub_tb;
      
    reg [7:0]a ;
    reg [7:0]b ;

    wire [7:0]diff ;
    wire barrow    ;


    bcd_sub uut (.a(a),.b(b),.diff(diff),.barrow(barrow));

    initial begin 

        $monitor(" a=%b | b=%b | barrow=%b | diff=%b ",a,b,diff,barrow);
        $dumpfile("bcd_sub_tb.vcd");
        $dumpvars(0,bcd_sub_tb);


         // 52 - 27 = 25
        a = 8'b0101_0010;
        b = 8'b0010_0111;
        #10;

        // 75 - 32 = 43
        a = 8'b0111_0101;
        b = 8'b0011_0010;
        #10;

        // 48 - 19 = 29
        a = 8'b0100_1000;
        b = 8'b0001_1001;
        #10;
        $finish;

    end
endmodule