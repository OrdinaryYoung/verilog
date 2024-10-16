// Simple 2-input NOR gate
module nor_gate(input wire A, B, output wire Y);
  assign Y = ~(A | B);
endmodule