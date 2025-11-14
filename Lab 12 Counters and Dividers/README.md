Danner Hill, Bradlee Borgholthaus, Eben Meyer
# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions
In this lab we made a ripple counter that divides by 8 using 3 T flip-flops and a modulo 12 divider built from
a 3-bit adder, D flip-flops with an added reset, a comparator = 6, and a toggle output and verified that it works.

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
Modulo counter divides by 2 times count because the 3-bit counter produces a cycle of length Count and a sperate flip-flop, 
toggles once per counter cycle, doubling the period. Net divide = Count 2[1].

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
A ring counter may appear as all 1s on the first cycle unless it's reset to a one-hot state, because of all-zero start with feedback, button bounce,
or resets forcing 1s; preventing it by seeding 000... 1 or using a Johnson counter with a defined reset.

### 3 - What width of ring counter would you use to get to an output of ~1KHz?
Pick the number of stages equal to your clock speed divided by 1,000. Example: with a 100 MHz clock you'd need about 100,000 stages; with 50MHz, about 50,000.
If you use a Johnson counter, you need half as many.

