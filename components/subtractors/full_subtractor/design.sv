// 2-input Full subtractor;
module full_subtractor(input A, B, Bin, output D, Bout);
  assign D = A ^ B ^ Bin;
  assign Bout = (~A & B) | Bin & (~A ^ B);
endmodule	