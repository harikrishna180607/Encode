
module Encoder(
    input  wire [7:0] in,   
    output reg  [2:0] out,   
    output wire        valid 
);

    assign valid = |in; // reduction OR

    always @(*) begin
        
        out = 3'b000;
        case (in)
            8'b0000_0001: out = 3'b000; // in[0]
            8'b0000_0010: out = 3'b001; // in[1]
            8'b0000_0100: out = 3'b010; // in[2]
            8'b0000_1000: out = 3'b011; // in[3]
            8'b0001_0000: out = 3'b100; // in[4]
            8'b0010_0000: out = 3'b101; // in[5]
            8'b0100_0000: out = 3'b110; // in[6]
            8'b1000_0000: out = 3'b111; // in[7]
            default: out = 3'bxxx; 
        endcase
    end

endmodule
