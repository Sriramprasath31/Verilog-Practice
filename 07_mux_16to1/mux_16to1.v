module mux16to1 (

    input i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,
    input  reg [3:0]sel ,
    output reg y

);

     always @(*)begin
       case(sel)

        4'b0000:assign y = i0 ;
        4'b0001:assign y = i1 ;
        4'b0010:assign y = i2 ;
        4'b0011:assign y = i3 ;
        4'b0100:assign y = i4 ;
        4'b0101:assign y = i5 ;
        4'b0110:assign y = i6 ;
        4'b0111:assign y = i7 ;
        4'b1000:assign y = i8 ;
        4'b1001:assign y = i9 ;
        4'b1010:assign y = i10 ;
        4'b1011:assign y = i11 ;
        4'b1100:assign y = i12 ;
        4'b1100:assign y = i13 ;
        4'b1110:assign y = i14 ;
        4'b1111:assign y = i15 ;
       endcase
     end
endmodule