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
  Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument.
  If the argument has an odd length, you should return exactly one character.
  If the argument has an even length, you should return exactly two characters.
  
ex.
  center_of('I love ruby') == 'e'
  center_of('Launch School') == ' '
  center_of('Launch') == 'un'
  center_of('Launchschool') == 'hs'
  center_of('x') == 'x'
  
P
INPUT: string 
OUTPUT: 2 middle characters of the input if it's length is even, and 1 middle character of the input string if it's length is odd.
RULES
  Explicit Requirements:
    The string input will never be empty
    If the string inputs length is even, return the 2 middle characters of the input
    If the string inputs length is odd, return the middle character of the input

D
The data structure used for this example will be a string 
input: 'dog'
output: 'o'
The middle character is 'o' and only returned 1 character because the strings length is even

A
create a variable named `middle_length` that represents the strings size / 2
if the string size is odd
  return the character at string[middle_length]
if the string size is even 
  return the characters at index middle_length - 1 and the one after it.
    (we need to subtract 1 from middle index for even division because the index is 1 to high)
    
  
=end 
def center_of(str)
  middle_length = (str.size / 2)
  if str.size.odd?
    str[middle_length]
  else
    str[middle_length - 1 , 2]
  end 
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'