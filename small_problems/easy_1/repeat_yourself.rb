=begin

Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

repeat('Hello', 3)


P - Understanding the Problem:
- Goal: understand what you're being asked to do
  - Read the problem description
  - Identify expected input and output
  
  INPUT: A string and a positive integer
  OUTPUT: the input string as many times specified by the positive input integer
  
  - Establish rules/requirements/define the boundaries of the problem
  The first input will always be a string
  the second input is a positive integer so no need to worry about any other outcomes in this case

E - Examples and Test Cases:
- Goal: further expand and clarify understanding about what you're being asked to do 
  - Use examples/test cases to confirm or refute assumptions made about the problem in the previous step
repeat('Hello', 3)
The repeat method is passed a string as it's first argument and a positive integer as the second. This method will output
the string `'Hello'` 3 times.


D - Data Structures:
- Goal: begin to think logically about the problem
  - What data structures could we use to solve this problem?
  We are using the string object
    - What does our data look like when we get it? (input)
    Our data looks like a string when we get it 
    - What does our data look like when we return it? (output?)
    this is a display method so the method will display the input string a given amount of times 
    specified by the positive input integer
    - What does our data need to look like in the intermediate steps?
    There are no selections or transformations being performed so the data looks the same
A - Algorithm:
- Goal: write out steps to solve the given problem in plain English
  - A logical sequence of steps for accomplishing a task/objective
  - Start high level, but make sure you've thought through and have provided sufficient detail for working through the most difficult parts of the problem
  - Stay programming-language-agnostic
  
  -given the string as input
  -display it n times based on the positive integer output
    -create a variable named counter and assign it 0
    -while counter is less then the input integer
    -display the string
    -increment counter by 1
    -/
  -/
  
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
=end 
  
def repeat(str, int)
  counter = 0
  while counter < int
    puts str
    counter += 1
  end 
end 
repeat('Hello', 3)