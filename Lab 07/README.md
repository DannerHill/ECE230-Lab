# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Summary
In this lab, we worked through creating a half subtractor, then creating a one's complement subtractor, and then a two's complement converter. Being hands on with the implementations between one's and two's complement shows how much simpler it is to use two's complement instead, but I'm not quite sure it conveyed _why_ exactly two's complement works better. It was interesting to repurpose the full adder from last lab, it clearly conveyed how we just simply manipulate the adder to do something else.

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
The half adder had a carry out, while the half subtractor had a borrow. 

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
The end around carry was hard to implement, because it's needed as the carry in for the very first adder! To avoid looping, we ended up having to create 8 full adders for just 4 bit addition-- the first four for the initial adding, then the second for the potential end around carry. 

### 3 - What is the edge case and problem with Two’s Complement number representation?
Twos complement has more negative positions than positive position. 

