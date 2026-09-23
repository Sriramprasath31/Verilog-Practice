module demux_1to8_tb ;
     
    reg x ;
    reg [2:0]sel ;
    wire [7:0]y  ;

    demux_1to8 uut (.x(x),.sel(sel),.y(y));

    initial begin 
        $monitor("x=%b | sel=%b | y=%b  ",x,sel,y);
        $dumpfile("demux_1to8_tb.vcd");
        $dumpvars(0,demux_1to8_tb);

        x=1 ;
        sel=3'b000 ;
        #10

         sel=3'b001 ;
        #10

         sel=3'b010 ;
        #10

         sel=3'b011 ;
        #10

         sel=3'b100 ;
        #10

         sel=3'b101 ;
        #10

         sel=3'b110 ;
        #10

         sel=3'b111 ;
        #10

        $finish;

    end
endmodule