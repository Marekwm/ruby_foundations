=begin
P - Understanding the Problem:
- Goal: understand what you're being asked to do
  - Read the problem description
  - Identify expected input and output
  - Establish rules/requirements/define the boundaries of the problem
  - Ask clarifying questions
  - Take your time on this step!

E - Examples and Test Cases:
- Goal: further expand and clarify understanding about what you're being asked to do 
  - Use examples/test cases to confirm or refute assumptions made about the problem in the previous step

D - Data Structures:
- Goal: begin to think logically about the problem
  - What data structures could we use to solve this problem?
    - What does our data look like when we get it? (input)
    - What does our data look like when we return it? (output?)
    - What does our data need to look like in the intermediate steps?

A - Algorithm:
- Goal: write out steps to solve the given problem in plain English
  - A logical sequence of steps for accomplishing a task/objective
  - Start high level, but make sure you've thought through and have provided sufficient detail for working through the most difficult parts of the problem
  - Stay programming-language-agnostic
  - Can create substeps for different parts or separate concerns into a helper method
  - You can (and should) revisit your algorithm during the implementation stage if you need to refine your logic
  - Before moving onto implementing the algorithm, check it against a few test cases

C - Implementing a Solution in Code:
- Goal: translate the algorithm into your programming language of choice
  - Code with intent. Avoid hack and slash 
- TEST FREQUENTLY
  - Use the REPL or run your code as a file
  - When testing your code, always have an idea in place of what you're expecting
  - If you find that your algorithm doesn't work, return there FIRST if needed and THEN fix your code]

PROBLEM
  
  Write a method that takes one integer argument, which may be positive, negative, or zero. 
  This method returns true if the number's absolute value is odd. You may assume that the argument is a valid integer value.


puts is_odd?(2)   == false
puts is_odd?(5)   == true
puts is_odd?(-17) == true
puts is_odd?(-8)  == false
puts is_odd?(0)   == false
puts is_odd?(7)   == true

Keep in mind that you're not allowed to use #odd? or #even? in your solution.

P

INPUT: any integer, positive negative or zero
OUTPUT:boolean true if the input is odd, returns boolean false if the input is even
RULES
  Explicit Requirements:
    The input is any integer
    The output is true if the input is odd, false if the input is even
    The problem cannot use the #odd? or #even? methods 
    
D
There is not a need for a data structure in this case since we are just determining if an integer is odd.
Example of input and output
is_odd?(5)  => true
Input is 5
Output is true

We go from an integer to a boolean, in order to do this without the methods #odd? or #even? we determine if the remainder of the division by 2 is 1 or 0

A
Determine if the input is positve zero is included or negative
-if positive evaluate the remainder of the input when divided by 2
  -  if it's equal to 1 
      -return true
  - if it's equal to 2 
      -return false
-if negative multiply the number by -1 to get a positive number in order to perform division to evaluate remainder
  -  if it's equal to 1 
      -return true
  - if it's equal to 2 
      -return false
=end 



# def is_odd?(num)
#   if num >= 0
#     num % 2 == 1 
#   else 
#     -num % 2 == 1 
#   end
# end 


# further factoring
# when looking at the modulo operator, when the divdend is negative or positive the remainder will always return positive if the 
# argumemt is positive, knowing this only one line of code is needed.


def is_odd?(num)
  num % 2 == 1 
end 


puts is_odd?(2)   == false
puts is_odd?(5)   == true
puts is_odd?(-17) == true
puts is_odd?(-8)  == false
puts is_odd?(0)   == false
puts is_odd?(7)   == true