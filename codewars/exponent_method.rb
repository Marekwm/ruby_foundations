=begin
Create a method called "power" that takes two integers and returns the value of the first argument raised to the power
of the second. Return nil if the second argument is negative.
Note: The ** operator has been disabled.
Examples:

input:2 integers 
output: integer
explicit requirements:
  -without using the ** operator find the value of the first integer raised to the power of the second
  -if the second argument is 0 return 1
  -if the second argument is a negative number return nil

algorithm 
  return 1 if the second iteger is equal to 0
  return nil if the second integer is less than 0
  create a variable called power and assign it to the first integer
  iterate a given amount of times based on the second argument - 1 
    multiply the value of power by the first integer
  return power
=end
# def power(num1, num2)
#   return nil if num2 < 0
#   return 1 if num2 == 0
#   power_to = num1
#   (num2 - 1).times{power_to *= num1}
#   power_to
# end 
def power(base, exponent)
  (1..exponent).inject(1){|product| product * base} unless exponent < 0
end
p power(2, 3) == 8
p power(10, 0) == 1
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(10, 0) == 1
p power(2, 3) == 8
p power(3, 2) == 9
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(8, -2) == nil