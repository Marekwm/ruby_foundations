=begin
# Write a method that takes a string as an argument and returns
# the character that occurs least often in the given string.
# If there are multiple characters with the equal lowest number
# of occurrences, then return the one that appears first in the
# string. When counting characters, consider the uppercase and
# lowercase version to be the same.

# Examples:

p least_common_char("Hello World") #== "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") #== "t"
p least_common_char("Mississippi") #== "m"
p least_common_char("Happy birthday!") #== ' '
p least_common_char("aaaaaAAAA") #== 'a'

# The tests above should print "true".
P 
Input:string
Output:the least common first occuring character 
Rules:
  Explicit Requirements:
    -return the character that occurs the least in the strings
    -if more then one character with equal low occurences then return the first occuring character
    -this method is not case sensitive
  Implicit Requirements:
    -any character is included
    -the returned character if alphabetic is always lowercase
E 

D 
Input:'Hello World'
Output:'h'
Intermidiate:['h', 'e', 'l', 'l', 'o', ' ', 'w', 'o', 'r', 'l', 'd'] 

A 
convert the string to all lowercase then to an array of characters
sort the array by the amount of occurences a character has in the array
return the first value in the sorted array
=end 
def least_common_char(string)
  characters = string.downcase.chars
  characters.sort_by {|char| characters.count(char)}.first
end 
p least_common_char("Hello World") == "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
p least_common_char("Mississippi") == "m"
p least_common_char("Happy birthday!") == ' '
p least_common_char("aaaaaAAAA") == 'a'