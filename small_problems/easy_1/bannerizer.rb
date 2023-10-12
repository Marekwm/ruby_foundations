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
  
  
  
Write a method that will take a short line of text, and print it within a box. 
You may assume that the input will always fit in your terminal window.

ex.  


print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

print_in_box('')
+--+
|  |
|  |
|  |
+--+

P
INPUT: a string that represents a message, empty string
OUTPUT: the input string encapsulated in a banner
RULES
  -Explicit requirements
    -The method takes a message 
    -Displays the message within a box 
    
  -Implicit requirements
    -The box has 3 different lines 
    -The 1st line and the 5th line are the same
    -The 2nd and 4th are the same
    -The 3rd line is where the message is placed with a padding space of 1 on either side
    -Every other line is the same length as the 3rd line
      -this means the each other line is 2 spaces extra then the message based on the padding added on line 3 
D
The data structure used for this will be strings to contain each different line
The input is a string that represents a short message 
The output is the string within the box
Each pair of lines for the exeption of 3, will have a preset structure based on the length of the string + 2

A 
Algorithm

create a variable `horizontal_line that will represent the first and fith lines
  -The dashes will be the same length of the string input + 2 and the '+' will be adde on either end
  -*the addition of 2 for the length will also insure that even if the string is empty the desired output will still be displayed*
create a variable `empty_line` that will represent the second and fourth lines
  -The space in between the pipes will be determined by the length of the string input + 2

display horizontal_line
display empty_line
display 3rd string, add '|' on either end of the message with a space for padding specified by the example provided 
display empty_line
display horizontal_line

=end

def print_in_box(message)
  horizontal_line = "+#{'-' * (message.length + 2)}+"
  empty_line = "|#{' '  * (message.length + 2)}|"
  
  puts horizontal_line
  puts empty_line
  puts "| #{message} |"
  puts empty_line
  puts horizontal_line
end

print_in_box('')
print_in_box('To boldly go where no one has gone before.')