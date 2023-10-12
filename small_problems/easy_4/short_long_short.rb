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
  

Write a method that takes two strings as arguments, determines the longest of the two strings, 
and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. 
You may assume that the strings are of different lengths.

examples: 
short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

P
Input: 2 strings, the strings can be empty
Output: new string that is a combination of concatenating the short string long string then short string
Rules:
  Explicit requirements: 
  -if the first string is longer than the second
    -return a new string that is the combination of concatenating the second, first then second string all together
  -if the second string is longer than the first
    -return a new string that is the combination of concatenating the first, second then first string all together
  -The strings being compared will always be different length
  
D
What data structures could we use to solve this problem?
The strings are simply being compared then concatenated so just using a string will do 
-string1 + string2 + string1

    - What does our data look like when we get it? (input)
  'aba' 'defg'
    - What does our data look like when we return it? (output?)
  'abadefgaba'
A
First compare the length of the two strings with one another
if the first string is longer than the second string
  return a new string that represents the concatenation of the second, first then second string together
if the second string is longer than the first string
  return a new string that represents the concatenation of the first, second then first string together
=end

def short_long_short(str1, str2)
  if str1.size > str2.size
    str2 + str1 + str2
  else 
    str1 + str2 + str1
  end 
end 

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"