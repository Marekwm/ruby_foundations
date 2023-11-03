=begin
Create a method that takes a positive integer and returns the next bigger 
number formed by the same digits 
ex:
12 => 21
513 => 531
2017 => 2071
if no bigger number can be made return -1
9 => -1 
22 => -1
621 => -1

next_bigger_num(9) == -1
next_bigger_num(12) == 21
next_bigger_num(513) == 531
next_bigger_num(2017) == 2071
next_bigger_num(111) == -1
next_bigger_num(123456789) == 123456798

P
Input: positive integer
Output: integer: -1 if no bigger number can be found or single digit
Rules:
  Explicit requirements:
    -the argued integer must be a positive integer
    -return the next bigger number that can be formed using the input integer
    -if no bigger number can be formed or the input is a single digit number then return -1

Examples:
  137 => 173
  173 => -1
Datastructures
Input: positive integer
Ouput: -1 or the next larger integer with the same digits as the argued integer

Algorithm 

create a looping structure start at the argued integer upto the a larger number with an extra digit
  return the current number if it's converted sorted array is equal to the converted
  sorted array of the argued integer and the current number is greater then the argued integer
  
if no greater number is found return -1
=end 

def next_bigger_num(integer)
  max_value = integer.digits.sort.reverse.join.to_i
  (integer + 1).upto(max_value) do |num|
    return num if num.to_s.chars.sort == integer.to_s.chars.sort 
  end 
  -1
end 
    
p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(123456789) == 123456798
