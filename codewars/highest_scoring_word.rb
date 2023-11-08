=begin
Given a string of words, you need to find the highest scoring word.
Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.
You need to return the highest scoring word as a string.
If two words score the same, return the word that appears earliest in the original string.
All letters will be lowercase and all inputs will be valid.

input: string of words 
output: string(word with the highest score)
rules
  explicit requirements:
    -you are given a string of lowercase words seperated by spaces
    -each letter has a score according to it's position in the alphabet 1 for a , 2 for b and so on
    -find the in the string with the highest score 
datastructure
  input: string// 'aaa b'
  output: string // 'aaa'
  intermediate: array of words // ['aaa', 'b']
  helper: array of alphabet 
  
algorithm
create an array of the alphabet
split the argued string into an array of words 
iterate over the array of words and find the max value returned by the iterations
  create  counter = 0
  iterate over each character of the current word
    find the index of the current character in the alphabet array, add one due to index start at 0 
    add this value to count
  return count
the iteration for max value will then return the string in the array with the highest score
=end
def high(str)
  alphabet = ('a'..'z').to_a
  str.split.max_by do |word|
    counter = 0
    word.each_char do |char|
      counter += (alphabet.index(char) + 1)
    end 
    counter
  end 
end 
  
p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the volcano') == 'volcano'
p high('take me to semynak') == 'semynak'
p high('aaa b') == 'aaa'