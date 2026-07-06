`timescale 1ns/1ps

module four_bit_alu_tb;

reg [3:0] A;
reg [3:0] B;
reg [2:0] sel;

wire [3:0] result;
wire carry;

// Instantiate ALU
four_bit_alu uut(
    .A(A),
    .B(B),
    .sel(sel),
    .result(result),
    .carry(carry)
);

initial begin

    // Generate waveform
    $dumpfile("four_bit_alu.vcd");
    $dumpvars(0, four_bit_alu_tb);

    $display("----------------------------------------------------------");
    $display("Time\tSel\tA\tB\tResult\tCarry");
    $display("----------------------------------------------------------");

    $monitor("%0t\t%b\t%b\t%b\t%b\t%b",
              $time, sel, A, B, result, carry);

    // Addition
    A = 4'b0101;
    B = 4'b0011;
    sel = 3'b000;
    #10;

    // Subtraction
    A = 4'b1000;
    B = 4'b0010;
    sel = 3'b001;
    #10;

    // AND
    A = 4'b1100;
    B = 4'b1010;
    sel = 3'b010;
    #10;

    // OR
    A = 4'b1100;
    B = 4'b1010;
    sel = 3'b011;
    #10;

    // XOR
    A = 4'b1100;
    B = 4'b1010;
    sel = 3'b100;
    #10;

    // NOT
    A = 4'b1010;
    B = 4'b0000;
    sel = 3'b101;
    #10;

    // Left Shift
    A = 4'b0011;
    B = 4'b0000;
    sel = 3'b110;
    #10;

    // Right Shift
    A = 4'b1100;
    B = 4'b0000;
    sel = 3'b111;
    #10;

    $finish;

end

endmodule