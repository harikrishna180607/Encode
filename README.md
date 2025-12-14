# Encode

ENCODER 8TO3 DATAFLOW Modelling
AIM:

To implement Encoder 8 To 3 in Dataflow Modelling using verilog and validating their functionality using their functional tables

SOFTWARE REQUIRED: Quartus prime

THEORY

Encoder 8 To 3 program:

```
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



```

The 8 to 3 line Encoder is also known as Octal to Binary Encoder. In 8 to 3 line encoder, there is a total of eight inputs, i.e., D0, D1, D2, D3, D4, D5, D6, and D7 and three outputs, i.e., A0, A1, and A2. In 8-input lines, one input-line is set to true at a time to get the respective binary code in the output side. Below are the block diagram and the truth table of the 8 to 3 line encoder.


The logical expression of the term A0, A1, and A2 are as follows:

A0 = D1 + D3 + D5 + D7

A1 = D2 + D3 + D6 + D7

A2 = D4 + D5 + D6 + D7

Logical circuit of the above expressions is given below:


Truth Table for Encoder 8:3:

<img width="595" height="446" alt="image" src="https://github.com/user-attachments/assets/cf6dd9a9-93cd-404e-b130-81a4a522d81f" />

RTl Image:
<img width="857" height="455" alt="Screenshot 2025-12-13 215600" src="https://github.com/user-attachments/assets/1743576d-4ac6-4869-8a6e-51c26b0b7b77" />

Wave Image:
[unknown.bmp](https://github.com/user-attachments/files/24143246/unknown.bmp)

<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/d887b48e-3d13-438f-80d4-91d4b95d7352" />

Result :

We got the expected and the RTLIMage and wave image


