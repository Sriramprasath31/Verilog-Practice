module bcd_sub(

    input [7:0]a ,
    input [7:0]b ,
    output reg [7:0]diff ,
    output reg  barrow   

);

    reg[4:0] ones ;
    reg[4:0] tens ;

    always@(*)begin
      
      barrow=0 ;

      #ones
      if(a[3:0]>=b[3:0])begin
        ones=a[3:0]-b[3:0] ;
        barrow=0 ;
      end
      else begin
        ones=a[3:0]+10-b[3:0] ;
        barrow=1 ;
      end

      #tens
      if(a[7:4]>=(b[7:4]+barrow))begin 
        tens=a[7:4]-b[7:4]-barrow ;
        barrow=0 ;
      end
      else begin
        tens=a[7:4]+10-b[7:4]-barrow ;
        barrow= 1;
      end

         diff = {tens[3:0], ones[3:0]};

     
    end
endmodule
     


