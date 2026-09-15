module gray2bin_tb ;
      
    reg   [3:0]g ;
    wire  [3:0]b ;

    integer i ;

    gray2bin uut (.g(g),.b(b));

    initial begin
      
        $dumpfile("gray2bin.vcd");
        $dumpvars(0,gray2bin_tb);

        $monitor("Time=%0t | Gray=%b | Binary=%b",
                 $time, g, b);

            for(i=0 ; i<16 ; i=i+1 )begin

                g=i;
                #10;
            end
        $finish; 

    end
endmodule