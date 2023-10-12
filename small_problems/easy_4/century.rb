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
  

Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number,
and ends with st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

ex. 
century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

P
Input: year as integer
Output: century of the input as a string with ordinal indicator(th or rd)
Rules: 
  -Explicit requirements
    -The input is any positive integer
    -The return value is a string represents the century of the input and must have an ordinal indicator after it.
    -century start in years that end with 01 , so 1702 is the 18th century but 1700 is the 17th century
D
- What data structures could we use to solve this problem?
We need to go from an integer to a string so, strings it is 
- What does our data look like when we get it? (input)
ex: 1201
- What does our data look like when we return it? (output?)
ex: '13th'
 - What does our data need to look like in the intermediate steps?
it needs to go from 1201 to 13 to '13th'

A 
first we need to get the century by dividing the input by 100
asign the quotient to `century` and the remainder to `remainder`
  -we then evaluate if the remainder is greater then 0 if so add 1 to `century`
  -if not then leave it
--helper method for ordinal_indicator
  assign the last digit of century to last_digit
    -divide century by 10 and the remainder is the last digit
  evaluate the century passed to it
  if last_digit is equal to 1 return 'st'
  if last_digit is equal to 2 return 'nd'
  if last_digit is equal to 3 return 'rd'
    otherwise return 'th'
using the return value from the helper method concatenate it to the end of the string represention of century 
return this string value


######remember to look at alll cases for things like ordinal indicator 11 12 13 do not have the same as 21 or 41
=end 
def find_ordinal_indicator(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  
  last_digit = century % 10
  case last_digit 
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 
    'th'
  end 
  
  
end 
def century(year)
  century, remainder = year.divmod(100)
  century += 1 if remainder > 0
  
  
  century.to_s + find_ordinal_indicator(century)
  
end 

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'