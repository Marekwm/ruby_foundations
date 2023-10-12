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
  
  
  Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. 
  The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle,
  and the other end at the upper-right.
  
triangle(5)

    *
   **
  ***
 ****
*****
P
INPUT: Positive integer
OUTPUT: display a right angle triangle 
RULES
  -Explicit Requirements
  The input is used as an argument to shape the triangle
  The triangle is display one line at a time
    -the first line starts n- 1 spaces and then 1 *
    -the second line has 2 starts and one less space
    this goes on until there are n * and no spaces
    -The triangles height, width, and stars with space is determined by the  integer input
  
D
The data structure used here is a string 
The input starts as a positive integer
The output ends up as a triangle whose height and width using * and spacing is determined by the input

A
create a variable `star_count` to store the amount of the triangles structure character'*'
create a variable `space` to represent the spacing using the input - 1

iterate using the input value in order to get the specific size of the triangle equal to the input
  -display the `space` with `star_count` multiplied by '*' on one line 
  -add 1 to the value of `star_count` 
  -subtract 1 from `space`
    (this addition of star_count will incrementally increase the value of starts on each line)
    (this subtraction of space will incrementally decrease the spacing on each line)
      *this increasing and decreasing is specified to the wanted right and triangle that is requested to create
-The method does not need to return any important values since its a display method

=end 
def triangle(num)
  star_count = 1
  space = num - 1
  num.times do 
    puts "#{' ' * space}#{'*' * star_count}"
    star_count += 1
    space -= 1
  end 
end 
triangle(9)
