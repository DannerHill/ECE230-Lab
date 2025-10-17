Eben Meyer

# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

##Lab Summary
In this lab I learned how subtraction works. A half subtractor gives a result bit and a borrow when subtracting one bit from another. For multi-bit subtract, one's complement does A + (bit-flipped B) and, if a carry pops out, adds it back to the LSB, which makes it a bit awkard and creates the looping problem so I had to create more adders just for a 4 bit addition. Two's compliment fixes that by flipping the bits and adding one, so addition and subtraction use the same adder, but the most negative value can't be negated within the same bit width. I then verified that it works on the Basys 3 by flipping the switches and making sure the correct led's are outputed.

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
Half adder adds two bits. It gives you a result bit and a "carry" which means both inputs were 1 so 1 spills over. Whereass a Half Subtractor subtracts one bit from another. It gives you a result bit and a "borrow" which essentially means you tried to borrow 1 from 0 and had to borrow from the next place. So a adder reports a carry where as a subtractor reports a borrow.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
After adding, sometimes you have to take the extra bit that falls off the left and add it back into the right-most bit. So in order to wire the output back to the input and avoid the looping problem I created 8 full adders for just 4 bit addition.

### 3 - What is the edge case and problem with Two’s Complement number representation?
Two's complement has the ability to have more negatives than positives.
