=begin
In the previous exercise, you developed a method that converts simple numeric strings to Integers.
In this exercise,you're going to extend that method to work with signed numbers.

Write a method that takes a String of digits, and returns the appropriate number as an integer.
The String may have a leading + or - sign; if the first character is a +,
your method should return a positive number; if it is a -, your method should return a negative number.
If no sign is given, you should return a positive number.

You may assume the string will always contain a valid number.

You may not use any of the standard conversion methods available in Ruby, 
such as String#to_i, Integer(), etc. You may, however, use the string_to_integer method from the previous lesson.

ex:
string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100

P
Input: string representation of integer with posible + or - sign
Output: converted integer from input, with - sign if input includes it and no sign if input has + or no sign in it 
Rules:
-Explicit Requirements
 return the convered integer from input with a - sign if the input starts with a - sign
 return the converted integer from input without a sign if the input starts with a + sign or has no sign
-Implicit Requirments
  
D 
  - What data structures could we use to solve this problem?
a hash with the keys as the string representation of each numerical digit and the value as the matching integers
   {"0"=>0, "1"=>1, "2" => 2} 
  
  - What does our data look like when we get it? (input)
  '-124' or '+135' or '342'
  - What does our data look like when we return it? (output?)
  -124 , 135, 342
  - What does our data need to look like in the intermediate steps?
  after the helper method 124 then within this method -124
A
-helper method string_to_integer'this will convert the string input to an integer
  -create a hash named `digits` where the keys are the string representation of each numerical digit and the value is the matching integer
  {"0"=>0, "1"=>1, "2" => 2, "3" => 3, "4" => 4, "5" => 5,
  "6" => 6, "7" => 7, "8" => 8, "9" => 9} 
  c
  reate a variable named `number` and asign it to zero (this will be the variable associated with the converted string integer)
  iterate over the input string one character at a time 
    use the string value to reference the key within `numbers` to return the matching integer from the hash
    with this number
      -resign the value of number to number * 10 + the return value from key reference

    do this for every character within the string 
    
  return number
  
if first element of the string is equal to '-'
  -then pass the string with the first element deleted from the input string to the helper method string_to_integer with
    a negative sign before the method call
  -this will make the return value negative once the method returns an integer
    -return this value
  
if the first element of the string is equal to '+'
  -then pass the string with the first element deleted from the input string to the helper method string_to_integer 
    -return this value 
otherwise 
  -pass the string to the helper method string_to_integer
    -return this value

  C - Implementing a Solution in Code:
- Goal: translate the algorithm into your programming language of choice
  - Code with intent. Avoid hack and slash 
- TEST FREQUENTLY
  - Use the REPL or run your code as a file
  - When testing your code, always have an idea in place of what you're expecting
  - If you find that your algorithm doesn't work, return there FIRST if needed and THEN fix your code

=end 

DIGITS={
  "0"=>0, "1"=>1, "2" => 2, "3" => 3, "4" => 4,
  "5" => 5,"6" => 6, "7" => 7, "8" => 8, "9" => 9} 
  
def string_to_integer(str)
  numbers = 0
  str.chars.each do |num|
    numbers = numbers * 10 + DIGITS[num] 
  end 
  numbers
end 

def string_to_signed_integer(str)
  case str[0]
  when '-' then -string_to_integer(str[1..-1])
  when '+' then string_to_integer(str[1..-1])
  else 
    string_to_integer(str)
  end 
end 

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100