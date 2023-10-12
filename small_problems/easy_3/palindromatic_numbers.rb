=begin
Write a method that returns true if its integer argument is palindromic, false otherwise. 
A palindromic number reads the same forwards and backwards.

ex.
palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true

P
input: integer
output: true or false
rules:
  -return true if the input is palindromatic 
  -return false otherwise
  
D
converting the integer to a string in order to reverse it then convert it back to an integer 
A 
if input converted to a string and reversed then converted back to an integer is equal to input
  return true
otherwise return false
=end 
def palindromic_number?(num)
  num == num.to_s.reverse.to_i
end 

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true