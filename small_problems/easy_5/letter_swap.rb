=begin
problem

Given a string of words separated by spaces, write a method that takes this string of words and 
returns a string in which the first and last letters of every word are swapped.

You may assume that every word contains at least one letter, and that the string will always contain at least one word. 
You may also assume that each string contains nothing but words and spaces.

ex:
swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

P 
Input: a string of words seperated by spaces 
Ouput: swap the first and last letter of each word that is greater than 1 characters and return that new string
Rules:
  -Explicit requirements
    -for each word greater than 1 character in the input string swap the first and last character within the word 
    -return the result as a new string 
  
D 
- What data structures could we use to solve this problem?
we could use an array to split the words up
['oh', 'what', 'a', 'wonderful', 'day', 'it', 'is']
- What does our data look like when we get it? (input)
'Oh what a wonderful day it is'
- What does our data look like when we return it? (output?)
'hO thaw a londerfuw yad ti si'
- What does our data need to look like in the intermediate steps?
  ['oh', 'what', 'a', 'wonderful', 'day', 'it', 'is'] 
  this is needed to then swap the first and last letter of each word
  
A 
split the string into an array of strings, where all the strings words are isolated
then reasign the first character of the each word to the last, and the last to the first

convert the array of string back to a string and return it

=end 
def swap(sentence)
  sentence.split.each do |word|
    word[0], word[-1] = word[-1], word[0]
  end.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'