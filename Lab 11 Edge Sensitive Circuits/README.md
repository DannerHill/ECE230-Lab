Bradlee borgholthaus, Eben meyer, Danner Hill
# Sequential Circuits: Latches

In this lab, you’ve learned about edge sensitive circuits and explored some of the power therein.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions
In this lab we implemented a DFF, then a JKFF with a DFF in it, and further a TFF using the JKFF. It shows us how the JKFF is a unversal FF, and also how it is implemented with a DFF inside it. 

### What is different between edge and level sensitive circuits?
Level sensitive allows output to be changed during the entire duration that the enable signal is high (clock in this case). Edge sensitive only changes output in the moment that the 
clock changes from low to high in this case. 

### Why is it important to declare initial state?
The initial state makes the simulation and the hardware match. Avoids unknown or nonsense output from prior use. 

### What do edge sensitive circuits let us build?
Edge sensitive circuits allow us to build things such as counters. If we used level sensitivity instead, the counter would icnrement as fast as it is limited by the electronic constraints.
