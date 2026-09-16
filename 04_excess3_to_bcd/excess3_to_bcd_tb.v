module excess32bcd_tb ;

    reg    [3:0]excess ;
    wire   [3:0]bcd ;

    integer i ;

    excess32bcd uut (.bcd(bcd),.excess(excess));

    initial begin
      
      $dumpfile("excess3_to_bcd.vcd");
      $dumpvars(0, excess32bcd_tb);

        $monitor("Time=%0t | excess=%b | bcd=%b",
                 $time, excess,bcd);

            for(i=3; i<=12 ; i=i+1 )begin
              
                excess=i;
                #10;
            end

        $finish;         
    end

endmodule
