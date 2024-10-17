module test;
  
  reg [3:0] A, B;
  reg Bin;
  
  wire [3:0] D;
  wire Bout;
  
  ripple_borrow_subtractor  rbs(.A(A), .B(B), .Bin(Bin), .D(D), .Bout(Bout));
  
  initial begin
    $dumpfile("ripple_borrow_subtractor.vcd");
    $dumpvars(1, test);
    
    
    A = 4'b1010; B = 4'b0101; Bin = 0; #10; // D = 5 ; Bout = 0
    A = 4'b1111; B = 4'b1010; Bin = 1; #10; // D = 4 ; Bout = 0
    A = 4'b0100; B = 4'b0010; Bin = 1; #10; // D = 1; Bout = 0
    A = 4'b0000; B = 4'b0110; Bin = 0; #10; // D = A; Bout = 1
    
    
    $finish;
  end
endmodule