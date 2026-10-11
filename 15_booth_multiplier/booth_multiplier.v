
module booth_multiplier(
    input signed [3:0] A,
    input signed [3:0] B,
    output reg signed [7:0] P
);

    integer i;
    reg signed [4:0] M;
    reg signed [4:0] acc;
    reg signed [3:0] Q;
    reg Q_1;

    always @(*) begin
        M = {A[3], A};
        acc = 5'b00000;
        Q = B;
        Q_1 = 1'b0;

        for (i = 0; i < 4; i = i + 1) begin
            case ({Q[0], Q_1})
                2'b01: acc = acc + M;
                2'b10: acc = acc - M;
                default: acc = acc;
            endcase

            {acc, Q, Q_1} = {acc[4], acc, Q, Q_1} >>> 1;
        end

        P = {acc[3:0], Q};
    end

endmodule
                            
        
   


    