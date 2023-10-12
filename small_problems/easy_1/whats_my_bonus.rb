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
  - If you find that your algorithm doesn't work, return there FIRST if needed and THEN fix your code
  
PROBLEM
Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary.
If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.
  
  EX
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

P 
INPUT: positive integer, boolean
OUTPUT: 0 or half of input integer
RULES
  -The input represent the salary
  -The boolean represents if the worker will receive a bonus 
  -if input boolean is true (return half of input integer) 
  -if input boolean is false return 0
  
D
none needed, just working with a simple calculation

A
if boolean input is true
  -return input integer / 2
if boolean input is false
  -return 0
=end
def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end
  
  
  
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000