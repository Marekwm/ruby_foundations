=begin
A double number is a number with an even number of digits whose left-side digits
are exactly the same as its right-side digits. For example, 44, 3333, 103103, 7676 are all double numbers.
444, 334433, and 107 are not.

Write a method that returns 2 times the number provided as an argument,
unless the argument is a double number; double numbers should be returned as-is.

ex:
p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10


input: integer
output: same integer or double the integer value
rules
  explicit requirements
    -if the number is a double double then return that number
    -otherwise return the number timese 2

algorithm
save the string representation of the input to `string`
if the string length is even and the each half of the string are equal to one another
  return the string as a number
otherwise 
  return the number * 2
  
=end 
def twice(number)
  string = number.to_s
  half_length = string.length / 2
  first_half =  half_length.zero? ? '' : string[0, half_length]
  second_half =  string[half_length..-1]
  
  return number if first_half == second_half
  return number * 2
end 
    
p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
