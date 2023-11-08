=begin
Write a function that accepts a string, and returns the same string with all even indexed characters 
in each word upper cased, and all odd indexed characters in each word lower cased. 
The indexing just explained is zero based, so the zero-ith index is even, therefore 
that character should be upper cased and you need to start over for each word.

The passed in string will only consist of alphabetical characters and spaces(' ').
Spaces will only be present if there are multiple words. Words will be separated by a single space(' ').

Examples:
"String" => "StRiNg"
"Weird string case" => "WeIrD StRiNg CaSe"

input: string of words
output: a new string of words 
rules
  explicit requirements:
    -input string consists of one or more words(sperated by spaces)
    -return a new string where all the even index characters are uppercase for each individual word
    and all the odd indexed characters are lowercase
    

datastructure: 
input: string // "Weird string case"
output: string // "WeIrD StRiNg CaSe"
intermediate: ['Weird', 'string', 'case'], ['W','e','i','r','d']

algorithm
convert the argued string to an array where each word is it's own element
iterate over the array of words and perform transformation
  convert the current word iteration an array character
  iterate over the array of characters and the index values aswell as performing transformation
    if the current idx value is even return the uppercase value of that character
    if the current idx value is odd return the lowercase value of the character
  /return the string representation of this array of transformed character(use by the outer transformation method)
/return the string representation of this array of transformed words (the method defintion return value)
=end
def weirdcase(str)
  str.split.map do |word|
    word.chars.map.with_index do |char, idx|
      idx.even? ? char.upcase : char.downcase
    end.join
  end.join(' ')
end 
p weirdcase( "String" ) == "StRiNg"
p weirdcase( "Weird string case" ) == "WeIrD StRiNg CaSe"