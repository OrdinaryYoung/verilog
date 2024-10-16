// Simple 2-input OR gate
module or_gate(input wire A, B, output wire Y);
  assign Y = A | B;
endmodule