module comp_8bit(

    input [7:0]A  ,
    input [7:0]B ,
    output reg grt  ,
    output reg eql ,
    output reg less 
);


     always@(*)begin 

        grt = 0 ;
        less= 0 ;
        eql = 0 ;

        if(A>B)

            grt= 1 ;

        if(A<B)

            less= 1 ;

        else 

            eql= 1 ;

     end
endmodule        