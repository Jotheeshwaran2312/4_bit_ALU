# 4-Bit ALU using Verilog HDL

## Overview

This project implements a **4-Bit Arithmetic Logic Unit (ALU)** using Verilog HDL. The ALU performs both arithmetic and logical operations based on a 3-bit select signal. The design is verified using a Verilog testbench and simulated with Icarus Verilog and GTKWave.



## Features

The ALU supports the following operations:

| Select (sel) | Operation |
|--------------|-----------|
| 000 | Addition (A + B) |
| 001 | Subtraction (A - B) |
| 010 | Bitwise AND |
| 011 | Bitwise OR |
| 100 | Bitwise XOR |
| 101 | Bitwise NOT (A) |
| 110 | Left Shift (A << 1) |
| 111 | Right Shift (A >> 1) |



## Inputs

- **A** : 4-bit input
- **B** : 4-bit input
- **sel** : 3-bit operation select

## Outputs

- **result** : 4-bit output
- **carry** : Carry output for arithmetic operations




## Tools Used

- Verilog HDL
- Visual Studio Code
- Icarus Verilog
- GTKWave
- GitHub





## Sample Test Cases

| A | B | sel | Operation | Result |
|---|---|-----|-----------|--------|
| 0101 | 0011 | 000 | Addition | 1000 |
| 1000 | 0010 | 001 | Subtraction | 0110 |
| 1100 | 1010 | 010 | AND | 1000 |
| 1100 | 1010 | 011 | OR | 1110 |
| 1100 | 1010 | 100 | XOR | 0110 |
| 1010 | ---- | 101 | NOT | 0101 |
| 0011 | ---- | 110 | Left Shift | 0110 |
| 1100 | ---- | 111 | Right Shift | 0110 |

---

## Learning Outcomes

- Designed a combinational circuit using Verilog HDL.
- Implemented arithmetic and logical operations using a case statement.
- Learned the use of continuous and procedural assignments.
- Developed a Verilog testbench for functional verification.
- Generated VCD files and analyzed waveforms using GTKWave.
- Improved understanding of RTL design and digital system implementation.

---

## Future Improvements

- Add Zero Flag
- Add Overflow Flag
- Add Negative Flag
- Add Equality Comparison
- Add Multiplication and Division operations
- Extend the ALU to 8-bit and 16-bit versions

---

## Author

**Jotheesh**

VLSI | Verilog HDL | RTL Design | Digital Design | RISC-V Enthusiast
