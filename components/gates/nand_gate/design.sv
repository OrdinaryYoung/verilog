// Simple 2-input NAND gate
module nand_gate(input wire A, B, output wire Y);
  assign Y = ~(A & B);
endmodule