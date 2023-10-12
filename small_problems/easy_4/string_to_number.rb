=begin
The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer. 
String#to_i and the Integer constructor (Integer()) behave similarly. In this exercise, you will create a method that does the same thing.

Write a method that takes a String of digits, and returns the appropriate number as an integer. 
You may not use any of the methods mentioned above.

For now, do not worry about leading + or - signs, nor should you worry about invalid characters; assume all characters will be numeric.

You may not use any of the standard conversion methods available in Ruby to convert a string to a number, 
such as String#to_i, Integer(), etc. Your method should do this the old-fashioned way and calculate the 
result by analyzing the characters in the string.

ex.
string_to_integer('4321') == 4321
string_to_integer('570') == 570

P
Input: string representation of an integer 
Output: input as an integer
Rules:
-Explicit Requirements
    you may not use the to_i method 
    return the input as an integer
  
D 
- Goal: begin to think logically about the problem
  - What data structures could we use to solve this problem?
  a hash with the keys as the string representation of each numerical digit and the value as the matching integers
   {"0"=>0, "1"=>1, "2" => 2} 
   
    - What does our data look like when we get it? (input)
    '102'
    - What does our data look like when we return it? (output?)
    102
    - What does our data need to look like in the intermediate steps?
    we need to the largest first number of the string and any time we add another multiply it by ten then add the next in
    order to maintain the proper integer place for the units, tens, hundreds, etc
    
A
- Goal: write out steps to solve the given problem in plain English
  create a hash named `numbers` where the keys are the string representation of each numerical digit and the value is the matching integer
  0-9
  {"0"=>0, "1"=>1, "2" => 2, "3" => 3, "4" => 4, "5" => 5,
  "6" => 6, "7" => 7, "8" => 8, "9" => 9} 
  create a variable named `number` and asign it to zero (this will be the variable associated with the converted string integer)
  iterate over the input string one character at a time 
    use the string value to reference the key within `numbers` to return the matching integer from the hash
    with this number add it to number and multiply number by ten

    do this for every character within the string 
    
  return number
  
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

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570