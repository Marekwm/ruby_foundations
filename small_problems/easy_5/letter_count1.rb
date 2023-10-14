=begin
Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.
Words consist of any string of characters that do not include a space

ex:
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

P
Input: string of words seperated by spaces; empty string
Output: a hash where the keys represent the size of the words and the value is the occurence of that size of word within the input string 
Rules: 
  -Explicit Requirements:
    -In this case a word is defined by any amount of linked characters and the words are seperated by spaces
    -spaces are not inlcuded in the count and are what seperate the words
    -The returned hashes keys represent the size of the words (amount of any character in a word)
    -The returned hashes values represent the occurence of that size of word in the input string
    -The hashes key value pairs are arranged in order of first appearence
  -Implict Requirements
    -If the input string is empty 
      -(:edge case) return an empty has
E 
The returned hashes keys represent the size of the words (amount of any character in a word)
      ex: hello! is 6 characters long
      ex: hello is 5 characters long
      
D
Input:'Four score and seven.'
Output: { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
Intermidiate: ['Four', 'score', 'and', 'seven']

A 
-create an empty hash named `size_and_occurence`
-split the words of the input into an array, the delimeter is the spaces between each word
-iterate over the array of words 
  find the length of the current word
  if the length of the current word is already a key in `size_and_occurence`
    -add 1 to the count
  if the length of the current word is not present as a key in `size_and_occurence`
    set a new key value pair where the key is the length of the word and the value to 1
-return the `size_and_occurence`

=end 
def word_sizes(words)
  size_and_occurence = Hash.new(0)
  words.split.each do |word|
      size_and_occurence[word.length] += 1
  end 
  size_and_occurence
end 
  
# other option with each_with_object and pass an empty hash as the object
def word_sizes(words)
  words.split.each_with_object(Hash.new(0)) do |word, hash|
    hash[word.length] += 1
  end
end 
  
  
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
