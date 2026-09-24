module comp_4bit(

    input [3:0]A  ,
    input [3:0]B ,
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