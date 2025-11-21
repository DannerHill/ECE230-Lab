Brad Borgholthaus, Danner Hill, Eben Meyer
# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### Summary

In this lab, we learned how to design and implement finite state machines (FSMs) in Verilog using two different state encoding methods: one-hot encoding (where each state gets its own flip-flop for simpler logic) and binary encoding (which uses fewer flip-flops but requires K-map simplification for more complex next-state logic). We practiced deriving next-state equations from state transition tables, instantiating D flip-flops to hold state information, and tested it to make sure it works as intended

### Compare and contrast One Hot and Binary encodings

One-Hot encoding uses one flip-flop per state with only one active at a time, making the logic simple but using more flip-flops (5 flip-flops for 5 states). Binary encoding represents states as binary numbers using fewer flip-flops (3 flip-flops for 5 states) but requires more complex combinational logic and has unused states.

### Which method did your team find easier, and why?

One-Hot encoding is easier because we wrote the next-state logic by inspection—just look at which states transition to each state and OR them together.

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.

Use Binary encoding when flip-flops are limited on your FPGA since it uses ⌈log₂(n)⌉ flip-flops instead of n flip-flops for n states. Use One-Hot encoding when you have plenty of flip-flops but need faster performance with simpler logic, or when the FPGA has abundant flip-flops but limited combinational logic resources.
