=begin
P 
Write a method that takes a single String argument and returns a new string that
contains the original value of the argument with the first character of every word 
capitalized and all other letters lowercase.

You may assume that words are any sequence of non-blank characters.

Input: string 
Output: string with all the (words) with there first character capitalized 
Rules:
  Clarify: 
    What is a word in this context?
      -any sequence of non-blank characters 
      -'(a)' can be considered a word and the first element cannot be capitalized so you 
        return it the same 
  Explicit Requirements:
    -return a new string that contains the original *values* (not objects)
    -for each word from the argued string 
      -capitalize it's first character 
      -make all other characters in the word lowercase
  Implicit Requirements:
    -the first character means the first element of the string itself 
    this is clarified using the return value of the string '"quoted"' where the 
    first element cannot be capitalized but all the characters in between are lowercase
E 
word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

D 
Input:string ; 'the javaScript language'
Output: string ;'The Javascript Language'
Intermidiate: ['the', 'javaScript', 'language']

A
seperate the argued string into a array where each word is an element in the array
iterate over the new array made from the argued string
  -capitialized the first character of the current word
  -make all other characters within the current word lowercase
convert this array of modified words back to a strings and then return it


=end 
# def word_cap(string)
#   string.split.map(&:capitalize).join(' ')
# end 
  
  
# p word_cap('four score and seven') == 'Four Score And Seven'
# p word_cap('the javaScript language') == 'The Javascript Language'
# p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# Ruby conveniently provides the String#capitalize method to capitalize strings. Without that method,
# how would you solve this problem? Try to come up with at least two solutions.
# we need a helper method to return the word in all lowercase and the first character uppercase

def word_cap(string)
  string.split.map {|word| capitalizing_method(word)}.join(' ')
end 
  
def capitalizing_method(word)
  word.downcase!
  word[0] = word[0].upcase
  word
end 
    
p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'