=begin
Write a method that takes a string argument and returns a new string that contains the value of the original string with
all consecutive duplicate characters collapsed into a single character. 
You may not use String#squeeze or String#squeeze!.

ex:
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''
P
Input: a string ;empty string
Output: a new string we all duplicate consecutive characters removed (collapsed into one character)
Rules:
  -Explicit Requirements:
    -return a new string that has collapsed all consecutive dulplicate characters into one single character
    -do not squeeze methods to solve this 
  -Implicit Requirements:
    -if the string input is empty return an empty string
    -keep the spaces in between the character sequences 
    
E
consecutive character examples 
'aabbcc' => 'abc'
if there are 2 spaces condense them 2 one
'av  bc' => 'av bc'
D 
Only need to use strings in the problem
Input: 'aabbcc'
Output: 'abc'

A
create an empty string named `condensed_string`
iterate over the each character of the input string
  if the current character does not equal the last character of `condensed_string`
    -add the current character to the end `condensed_string`
  -/
return `condensed_string
=end 
def crunch(string)
  condensed_string = ''
  
  string.each_char do |char| 
    condensed_string << char if char != condensed_string[-1]
  end 
  condensed_string
end 

# other option to see if each with object works with a string argument

def crunch(string)
  string.chars.each_with_object('') do |char, condensed_string|
    condensed_string << char if char != condensed_string[-1]
  end 
end 

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''