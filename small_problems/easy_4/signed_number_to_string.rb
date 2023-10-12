=begin
In the previous exercise, you developed a method that converts non-negative numbers to strings.
In this exercise, you're going to extend that method by adding the ability to represent negative numbers as well.

Write a method that takes an integer, and converts it to a string representation.

You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), 
Kernel#format, etc. You may, however, use integer_to_string from the previous exercise.

ex
p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'

P
input: any integer
output: string representation of the input, include - sign if the input integer is negetive
rules:
  -explicit requirements:
    -the input is any integer; positve, 0 or negative
    -return the string representation of the input integer
      -if the integer is negative return a string with the - sign included 

D 
What data structures could we use to solve this problem?
  in order to reference string values with the integers an array with strings values that match to the index placement would work
  arr = ['0', '1', '2', '3']
  arr[0] == '0' or arr[3] == '3' this is a great way to store integer to numbers since its only 10 digits 
  
  we also need an empty string that will be passed each digit one at a time then returned by the method
  
    - What does our data look like when we get it? (input)
    -32 or 0 or 124
    - What does our data look like when we return it? (output?)
    '-32' or '0' or '124'
  The intermidiate data must be the return value from the helper method integer_to_number
  
A   
create an array named `digits` ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
---helper method integer_to_string---
create an empty string named `number_string`
create a variable named `remainder` and assing it to 0
create a loop that will loop until the value of the method parameter number is equal to 0
  divide the input integer by ten and assing the remainder to `remainder` and the quotient to method parameter that was passed the input
  reference the digits array  at the index number and prepend the return value to `number_string`
-once the loop is broken 
return the value of `number_string`

if the input is negative 
  pass the absolute value of the input to the helper method 
  using the return value prepend the '-' sign to the string 
  return this new string
if the is positve 
  pass the input value to the helper method 
  prepend the '+' to the return value of the helper method 
  return this new string 
otherwise 
  pass the input value to the helper method and return it
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

# def signed_integer_to_string(num)
#   if num < 0
#     "-#{integer_to_string(num.abs)}"
#   elsif  num > 0 
#     "+#{integer_to_string(num)}"
#   else 
#     integer_to_string(num)
#   end 
# end
  
# further exploration
# only use one helper method call

def signed_integer_to_string(num)
  sign = case num <=> 0
         when -1 then '-'
         when 1 then '+'
         end 
      
  "#{sign}#{integer_to_string(num.abs)}"
end 
  
  
  
p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'