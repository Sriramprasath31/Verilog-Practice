module mux_8to1(
     input i0,
    input i1,
    input i2,
    input i3,
    input i4,
    input i5,
    input i6,
    input i7,
    input  reg  [0:2]sel ,
    output reg  y 
);

   always@(*)begin
     
    case(sel)
    4'b0000 : assign y = i0 ;
    4'b0001 : assign y = i1 ;
    4'b0010 : assign y = i2 ;
    4'b0011 : assign y = i3 ;
    4'b0100 : assign y = i4 ;
    4'b0101 : assign y = i5 ;
    4'b0110 : assign y = i6 ;
    4'b0111 : assign y = i7 ;
    default : y = 1'b0 ;

    endcase
   end
endmodule