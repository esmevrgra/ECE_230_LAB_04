module maxterm (
    input A, B, C, D,
    output Y
);

assign Y = (~D |~B)& (C | D | B) & (~D | ~A );// Enter your equation here

endmodule
