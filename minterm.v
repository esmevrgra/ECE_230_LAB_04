module minterm (
    input A, B, C, D,
    output Y
);

assign Y =(C & ~D | D &~A &~B | B & ~D);






 // Enter your equation here

endmodule
