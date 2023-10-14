=begin
Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

P 
Input: positive integer
Output: Array that represents the integers in placement order 123 == [1, 2, 3]
Rules:
  Explicit Requirements:
    -return an array that contains the each individual integer from the input in order based off of there placement
    
D 
Input: 1234
Output: [1, 2, 3, 4]
we go from an integer to an array 
we will need an empty array prepend the digits from last to first using division

A
create an empty array named `digits`
while the input is greater then 0
  perform division by 10 on the input number in order to get the last integer from the input
  reassign the quotient to the variable of the argued string
  add the remainder to the front of `digits` 
  /
return `digits`

=end 
def digit_list(number)
  digits = []
  while number > 0
    number, remainder = number.divmod(10)
    digits.prepend(remainder)
  end 
  digits
end 

# quick approache to this problem
def digit_list(number)
  return [] if number == 0
  number.to_s.chars.map(&:to_i)
end

#another

def digit_list(number)
  return [] if number == 0
  number.digits.reverse
end 

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]      # => true
puts digit_list(0) == []