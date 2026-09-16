module bcd2excess3_tb ;

    reg  [3:0]bcd ;
    wire   [3:0]excess ;

    integer i ;

    bcd2excess3 uut (.bcd(bcd),.excess(excess));

    initial begin
      
      $dumpfile("bcd_to_excess3.vcd");
        $dumpvars(0, bcd2excess3_tb);

        $monitor("Time=%0t | BCD=%b | Excess-3=%b",
                 $time, bcd, excess);

            for(i=0 ; i<16 ; i=i+1 )begin
              
                bcd=i;
                #10;
            end

        $finish;         
    end

endmodule

