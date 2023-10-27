=begin
Create a method that takes two integers as arguments. The first argument is a count,
and the second is the first number of a sequence that your method will create.
The method should return an Array that contains the same number of elements as the count argument, 
while the values of each element will be multiples of the starting number.

You may assume that the count argument will always have a value of 0 or greater,
while the starting number can be any integer value. If the count is 0, an empty list should be returned.
  
example:
p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []

P 
Input: 2 integers
Output: array

Rules:
  Explicit Requirements:
    -the input is 2 integers 
      -the first integer represents a count
      -the second integer represents the first number of a sequence that will be made
    -the returned array should be:
      -the length of the count
      -the values of each element will be multiples of the second integer input
D
Input: (3, 5)
Output: [5, 10, 15]

A 
create an emtpy array named `result`
until the size of `result` is equal to the first argued integer
add incrementing multiples of the second argued integer to `result`

return `result`
=end 
# def sequence(count, multiple)
#   result = []
#   (1..count).each do |num|
#     result << num * multiple
#   end 
#   result
# end 

def sequence(count,multiple)
  (1..count).map {|num| num * multiple}
end 
p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []