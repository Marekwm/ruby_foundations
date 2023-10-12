=begin
Write another method that returns true if the string passed as an argument is a palindrome, false otherwise. 
This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters.
If you wish, you may simplify things by calling the palindrome? method you wrote in the previous exercise.

real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false

P 
Input: string
Output: true or false
Rules and requirements
-This palindrome method is not case sensitive and only compares alphanumerical characters
-Return true if all alphanumerical characters form a palindrome thats not case sensitive
-Return false otherwise

D 
The data structure used is a string compared to its reverse
Input: 'to,doT'
output: true
Intermediate step: getting rid of non-alphnumerical and converting all data to down case for comparison

A 
take input down case it then delete all alphanumerical characters from the input
save these deleted character to a variable called string

send string to helper method in order to determine if it's a palindrome

helper method-- called palindrome?
  if input is equal to itself reversed 
  return true 
otherwise return false

=end
def palindrome?(str)
  str == str.reverse
end 

def real_palindrome?(string)
  string = string.downcase.delete('^a-z-09')
  palindrome?(string)
end 

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false