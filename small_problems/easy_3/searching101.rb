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
  

Write a program that solicits 6 numbers from the user, 
then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

P 
Input: 6 numbers from the user
Output: validating statement on if the 6th number appears amongst the first five
Rules
  explicit requirements: 
  -get 6 numbers from the user
  -prints a message that describes whether or not the 6th number appears amongst the first 5 numbers
D 
The data structure that will be used is an array to store the first five user inputs 
[1, 3, 4, 6, 7]

A
create an empty array named `numbers`
1.prompt user to input integer
2.get user input and convert it to integer then push it to numbers
3. repeat steps 1 and 2 five times 

prompt user for a sixth integer
store the user input into `search_num`

if search_num is included within numbers 
  -display a statement that says that search_num appears in numbers
if search_num is not included within numbers 
  -display a statement that says that search_num does not appear in numbers
  
=end 
numbers = []

puts 'Enter a number:'
numbers << gets.to_i

puts 'Enter a number:'
numbers << gets.to_i

puts 'Enter a number:'
numbers << gets.to_i

puts 'Enter a number:'
numbers << gets.to_i

puts 'Enter a number:'
numbers << gets.to_i

puts 'Enter the number you want to search for'
search_num = gets.to_i 

if numbers.include?(search_num)
  puts "The number #{search_num} appears in #{numbers}"
else 
  puts "The number #{search_num} does not appear in #{numbers}"
end 