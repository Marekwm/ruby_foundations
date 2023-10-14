=begin
PROBLEM
Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters,
write a method that returns that string with all of the non-alphabetic characters replaced by spaces. 
If one or more non-alphabetic characters occur in a row, you should only have one space in the result 
(the result should never have consecutive spaces).

EX:
cleanup("---what's my +*& line?") == ' what s my line '

P
Input: string of lowercase character also with non-alphabetic characters
Output: new string with all the non-alphabetic characters replaced by spaces
Rules:
  -Explicit Requirements
    -The new string must be returned with all the non-alphabetic characters replaced by spaces
      -if one or more non-alphabetic character are in a row, only one space should be placed there
      -you should have no consecutive spaces in the mutated string 
E
input: '@mark--luther21collins'
output: ' mark luther collins'
replaced @ with one space
replaced -- with one space
replaced 21 with one space

D
Input: string with any characters
Output: string with only alphabetic characters and single spaces that replaced any non-alphabetic characters consecutive or not
Helper: an array of all lower alphabetic character 
        an empty array to append the wanted character and spaces 

A
-helper data structure named `letters` that will contain all lower case letter
-create an empty array named `result`
-iterate over each character of the argued string
  -if the current character of the iteration is in included in `letters`
    -append the character to the end `result`
  -if the current character is not included in `letters`
    -append a space (' ') at the end of `result` unless the last character of `result` is a space
  -/
-return `result`
=end 
LETTERS = ('a'..'z').to_a

def cleanup(string)
  result = []
  
  string.chars.each do |char|
    if LETTERS.include?(char)
      result << char
    else
      result << ' ' unless result.last == ' '
    end 
  end 
  result.join
end

p cleanup("---what's my +*& line?") == ' what s my line '
p cleanup('@mark--luther21collins') == ' mark luther collins'