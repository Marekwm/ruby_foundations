=begin
Given an integer n, find the maximal number you can obtain by deleting exactly one digit of the given number.
Example
For n = 152, the output should be 52;
For n = 1001, the output should be 101.
Input/Output
[input] integer n
Constraints: 10 ≤ n ≤ 1000000.
[output] an integer

input: integer
Output: integer

rules:
  explicit requirements:
    - you are given an integer 
    -find the largest number you can get by deleting exaclty one digit without changing the order
datastructure
input: integer // 432
output: integer // 43
intermediate: array of integer that are one digit less then the argued integer [43,32]

algorithm
create an emtpy array named numbers 
convert the argued integer to string then to an array of digits 
iterate over the array and the index
  add the integer represented as a string with the digit at the current index deleted
find the largest number in numbers after converting the strings to integers
=end
def delete_digit(num)
  numbers = []
  num.to_s.chars.each do |int|
    numbers << num.to_s.sub!(int, '')
  end 
  numbers.map(&:to_i).max
end 
    

p delete_digit(152) == 52
p delete_digit(1001) == 101
p delete_digit(10) == 1
