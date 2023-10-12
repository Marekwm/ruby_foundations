=begin
problem statement
Write a method that returns true if the string passed as an argument is a palindrome, false otherwise.
A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.

ex.
palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

P 
-Identify expected input and output
INPUT: string
OUTPUT: boolean (true or false)

- Establish rules/requirements/define the boundaries of the problem
Rules and requirements 
-the string comparison is case sensitive (mom != Mom)
-all characters matter and spaces 
-return true if the input is a palindrome
-return false otherwise

- Ask clarifying questions
what is a palindrome?
a palindrome is a string that is the same forwards and backwords like racecar or 43134
what do I return if an empty string is the input?
return true

D
The data structure used here is the input string compared to itself but reversed 
Input: 'racecar'
Output: true
Intermediate step : racecar == racecar

A 
if input is equal to itself reversed 
  return true 
otherwise return false
=end 

def palindrome?(str)
  str == str.reverse
end 

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true