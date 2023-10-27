=begin
Write a method that determines the mean (average) of the three scores passed to it,
and returns the letter value associated with that grade.

Numerical Score Letter	Grade
90 <= score <= 100	'A'
80 <= score < 90	'B'
70 <= score < 80	'C'
60 <= score < 70	'D'
0 <= score < 60	'F'

Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.

Example:
p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"

Input: 3 scores represented as integers
Output: string that represents letter value associated with average grade

Rules:
  Explicit Requirements:
    -all input values are between 0 and 100
D 
input: (80, 85, 89) 
output: 'B'

A 
assign the average of the score to a variable named `average_score`
evaluate where in the range of grades does the average_score land
return the associated letter value of the average grade
=end
def get_grade(num1,num2,num3)
  average_grade = (num1 + num2 + num3) / 3
  case average_grade
  when 90..100 then 'A'
  when 80...90 then 'B'
  when 70...80 then 'C'
  when 60...70 then 'D'
  else                'F'
  end 
end 

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"