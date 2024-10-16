// Simple 2-input XOR gate
// XOR operation: Y is high when A and B are different

module xor_gate(input wire A, B, output wire Y);
  //   assign Y = (~A & B) | (A & ~B); // XOR operation using basic gates
  assign Y = A ^ B;
endmodule