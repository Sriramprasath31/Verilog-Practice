module bin2gray_tb ;
      
    reg   [3:0]b ;
    wire  [3:0]g ;

    integer i ;

    bin2gray uut (.b(b),.g(g));

    initial begin
      
        $dumpfile("bin2gray.vcd");
        $dumpvars(0,bin2gray_tb);

        $monitor("Time=%0t | Binary=%b | Gray=%b",
                 $time, b, g);

            for(i=0 ; i<16 ; i=i+1 )begin

                b=i;
                #10;
            end
        $finish; 

    end
endmodule