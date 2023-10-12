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
Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s,
always starting with 1. The length of the string should match the given integer.
  
  
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'


P
INPUT: a positive integer
OUTPUT: a string of alternating 1s and 0s starting with 1s and is the length of the input number.
RULES
  explicit: 
  -the method takes one positive integer as an argument
  -the return value will be a string of alternating 1s and 0s 
    -the returnd string length must be equal to the integer argument 
    
E
if the input is 5 then the output should be a string of alternating 1s and 0s starting with 1s
that has the length of 5 
  '10101'
D
The data structure for this problem will be a string
our data is a positve integer for the input
our data is a string of alternating 1s and 0s for the output
our data needs to start as an empty string during the intermediate process and be appended the 1s and 0s as we go

A
create an empty string and name it `result`
create variable `counter` and asign it to 0
create a loop with the condition of  while counter is less than the input value
  -if the counter is even
    -append the string value of 1 to result
    
  -if the counter is odd
    -append the string value of 0 to result
  
  add 1 to the value of counter 

-once the loop is broken the return the value of `result`
    
=end 
  
# def stringy(num)
#   result = ''
#   counter = 0 
#   while counter < num
#     result << '1' if counter.even?
#     result << '0' if counter.odd?
#     counter += 1
#   end 
#   result
# end 

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

=begin 
A
create an empty string and name it `numbers`
using the input, iterate  n amount of times 
  if the blocks parameter is even
    append '1' to numbers
  if the blocks parameter is odd
    append '0' to number
once the iterations are complete
-return numbers
=end   
def stringy(num)
  numbers = ''
  num.times do |index|
    if index.odd? 
      numbers << '0'
    else
      numbers << '1'
    end 
  end
  numbers
end 

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
