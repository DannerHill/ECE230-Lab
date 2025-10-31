Bradlee Borgholthaus, Eben Meyer, Danner Hill
# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions
in this lab we designed a d latch and a memory register. We were able to read and write from memory blocks using a select address. The D latch prevents invalid logic from a basic SR latch.

###  Why can we not just use structural Verilog to implement latches?
Because we need an ability to hold memory sequentially. Additionally we would error with combinatorial loops without behavioral logic.

### What is the meaning of always @(*) in a sensitivity block?
The always @(*) means we will update whenever any variable is changed.

### What importance is memory to digital circuits?
Memory in digital circuits enables non-instant behavior. Being able to store bits allows us to read previously input bits, meaning our circuits can operate on greater data and wider timeframes. It also allows the same circuits to operate on different stored inputs, rather than needing an isolated circuit for each input of bits.
