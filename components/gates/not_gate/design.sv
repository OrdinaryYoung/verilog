// Simple 2-input NOT gate
module not_gate(input wire A, output wire Y);
  assign Y = ~A;
endmodule