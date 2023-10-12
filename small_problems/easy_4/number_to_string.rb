=begin
In the previous two exercises, you developed methods that convert simple numeric strings to signed Integers. 
In this exercise and the next, you're going to reverse those methods.

Write a method that takes a positive integer or zero, and converts it to a string representation.

You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(),
Kernel#format, etc. Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.

ex:
integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'

P
Input: positve Integer including 0
Output: string representation of input integer
Rules:
-Explicit Requirements
 this method takes any positive integers including 0 as input
 convert the input to a string representation
-Implicit Requirments
  
D 
  - What data structures could we use to solve this problem?
  in order to reference string values with the integers an array with strings values that match to the index placement would work
  arr = ['0', '1', '2', '3']
  arr[0] == '0' or arr[3] == '3' this is a great way to store integer to numbers since its only 10 digits 
  we also need an empty string that will be passed each digit one at a time then returned by the method
    - What does our data look like when we get it? (input)
    0 or 124
    - What does our data look like when we return it? (output?)
    '0' or '124'
A   
create an array named `digits` ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
create an empty string named `number_string`
create a variable named `remainder` and assing it to 0
create a loop that will loop until the value of the method parameter number is equal to 0
  divide the input integer by ten and assing the remainder to `remainder` and the quotient to method parameter that was passed the input
  reference the digits array  at the index number and prepend the return value to `number_string`
-once the loop is broken 
return the value of `number_string`
=end

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  number_string = ''
  loop do 
    number, remainder = number.divmod(10)
    number_string.prepend(DIGITS[remainder])
    break if number == 0
  end 
  number_string
end 

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
