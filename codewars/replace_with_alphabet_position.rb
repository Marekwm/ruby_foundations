=begin
In this kata you are required to, given a string, replace every letter with its position in the alphabet.
If anything in the text isn't a letter, ignore it and don't return it.
"a" = 1, "b" = 2, etc.
Example
alphabet_position("The sunset sets at twelve o' clock.")
Should return "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11" (as a string)

input: string of words 
output: string of character positons 
rules:
  explicit requirements
    every character in the alphabet has a positon 'a' is 1 'c' is 3 and so on
    given a string return a string of numbers that represent each and every characters positon in the alphabet
    seperated by spaces 
    
  implicit requirements:
    -if the string does not contain any alphabetical characters or is empty return an empty strings
    -ignore non alphabetical characters 
datastructure:
  Input: string// "The sunset sets at twelve o' clock."
  Output: string // "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5
15 3 12 15 3 11"
  intermediate // use an array to append all the positions of each character 
  helper: array of lowercase alphabet

algorithm:
create an empty array called positions
create an array of lowercase alphabet
convert the string to lowercase then delete all alphabetic characters
use the return value from the deletion and create an array of characters
iterate over the array of characters
  find the index position of the current character and add 1 because of the index start a 0
  add this value but as a string to positions
join positions back to a string with white spaces in between each number 
=end
def alphabet_position(str)
  alphabet = ('a'..'z').to_a
  positions = []
  str.downcase.delete('^a-z').each_char do |char|
    positions << (alphabet.index(char) + 1).to_s
  end 
  positions.join(" ")
end 
p alphabet_position("The sunset sets at twelve o' clock.") == 
"20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"
p alphabet_position("-.-'") == ""