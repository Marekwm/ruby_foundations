=begin
Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is
the number of times you must multiply the digits in num until you reach a single digit.
For example:
persistence(39) # returns 3, because 3*9=27, 2*7=14, 1*4=4
# and 4 has only one digit
persistence(999) # returns 4, because 9*9*9=729, 7*2*9=126,
# 1*2*6=12, and finally 1*2=2
persistence(4) # returns 0, because 4 is already a one-digit number

input:
output:
explicit requirements:
  -given a positive number
  - return the number of times you must multiply the digits in num until you reach a single digit
datastructures
input: integer// 26  2*6, 12, 1, 1*2,2 (2)
output: integer//2
intermediate: //[6,2] product, [2,1] product

algorithm
create a counter = 0
loop until num < 10
assing the product of the digits of the current num to num
add 1 to counter
return counter once looping is complete
=end
def persistence(num)
  counter = 0
  while num >= 10
    p num = num.digits.inject(:*)
    counter += 1
  end 
  counter
end

p persistence(39) == 3
p persistence(4) == 0
p persistence(25) == 2
p persistence(999) == 4