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

In this Lab how to apply KMaps to the verilog, We learned how to simplify the complex logic aquation. We had 4 inputs A,B,C,D .In the first we
check the truth table with output of that. first by writing a direct “naive” sum-of-products expression that ORs together all minterms where 
the output is 1, and then by converting the same truth table into a Karnaugh Map to simplify the logic into an optimized SOP, which we grouped
all ones also it called  minterms.then we optimized POS which we grouped all zeros or maxterms.then we write the finall output from the truth table in the verilog.
the same of lab 2  we created a new project and we followed all instruction. Then we implemented each version in Verilog (naive.v, minterm.v, maxterm.v), connected 
Basys3 switches sw[3:0] to inputs A–D, and drove three LEDs with the three outputs so they should match for every input combination. at the finall we looked our logic
equation how it simplified in verilog. then we tested our code  by generate bitstream and applying the truoth  table and see how led and sw will work correctly or not.
we had some issues during the testing but then we solved and we got the desired result.


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
