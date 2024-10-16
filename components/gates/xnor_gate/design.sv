// Simple 2-input XNOR gate
// XNOR operation: Y is high when A and B are equal

module xnor_gate(input wire A, B, output wire Y);
//   assign Y = (A & B) | (~A & ~B);  // XNOR operation using basic gates
  assign Y = ~(A ^ B);
endmodule