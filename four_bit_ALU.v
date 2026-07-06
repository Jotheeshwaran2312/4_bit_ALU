module four_bit_alu(
    input  [3:0] A,
    input  [3:0] B,
    input  [2:0] sel,
    output reg [3:0] result,
    output reg carry
);

always @(*) begin

    carry = 0;

    case(sel)

        // Addition
        3'b000:
        begin
            {carry, result} = A + B;
        end

        // Subtraction
        3'b001:
        begin
            {carry, result} = A - B;
        end

        // AND
        3'b010:
        begin
            result = A & B;
        end

        // OR
        3'b011:
        begin
            result = A | B;
        end

        // XOR
        3'b100:
        begin
            result = A ^ B;
        end

        // NOT
        3'b101:
        begin
            result = ~A;
        end

        // Left Shift
        3'b110:
        begin
            result = A << 1;
        end

        // Right Shift
        3'b111:
        begin
            result = A >> 1;
        end

        default:
        begin
            result = 4'b0000;
            carry = 0;
        end

    endcase

end

endmodule