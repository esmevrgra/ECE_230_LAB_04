# Lab 04 - SOP/POS and KMaps
Esmeralda Vergara & Nazifa Bakhshi

In this lab, you’ve learned how to apply KMaps, Sum Of Products and Products of
sums to simplify digital logic equations. Then, you’ve proven out that they work
using an implemented design on your Basys3 boards.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Summary

In this lab, we learned how to apply KMaps in Verilog by simplifying complex logic equations. We worked with four inputs: A, B, C, and D, and used the truth table to determine the correct output. First, we wrote a direct “naive” Sum of Products (SOP) expression by OR-ing all the minterms where the output was 1. Then, we converted the same truth table into a Karnaugh Map and simplified it into an optimized SOP by grouping the 1’s (minterms). After that, we created an optimized Product of Sums (POS) by grouping the 0’s (maxterms). Next, we wrote the final logic equations in Verilog and implemented each version (naive.v, minterm.v, maxterm.v). We created a new Vivado project, followed the instructions, connected the Basys3 switches sw[3:0] to inputs A–D, and drove three LEDs with the three outputs so they matched for every input combination. Finally, we generated the bitstream and tested the design on the board by changing the switches and checking that the LEDs behaved correctly. We had some issues during testing, but we solved them and got the desired result.


## Lab Questions

### Why are the groups of 1’s (or 0’s) that we select in the KMap able to go across edges?
Because a KMap “wraps around.” The squares on the left edge are considered next to the squares on the right edge, and the top edge is next to the bottom edge. 
This works because the KMap is arranged in Gray-code order, so those edge squares still differ by only one input bit but they’re still adjacent cases.
Since grouping means combining adjacent cases to cancel the variable that changes, groups are allowed to cross the edges.

### Why are the names Sum of Products and Products of Sums?
Because Sum of Products means you make a bunch of AND groups first, then connect them with OR.
Product of Sums means you make a bunch of OR groups first, then connect them with AND.


### Open the test.v file – how are we able to check that the signals match using XOR?
XOR tells if two signals are different: if they match, XOR = 0; if they don’t match, XOR = 1. So in test.v we XOR the outputs,
and if the result stays 0 for all inputs, the signals match.
