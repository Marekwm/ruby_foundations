=begin
Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size.
For instance, the length of "it's" is 3, not 4.

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}

P
Input: string of words ; empty string
Output: A hash where the keys represent the length of a word and the value is the occurence of that word length in input string
Rules: 
  -Explicit Requirement:
    -A word is classified in this case as a sequence of alphabetic characters delimeted by spaces 
    -In this problem we must eleminate all non-alphabetic characters from each word 
    -The returned hashes keys represent the length of the alpabetic characters in a word
    -The retruned hashes values represent the occurence of words of a certain length 
  -Implicit Requirements:
    -Edge case // If the string is empty; return an empty hash
    -The hashes k/v pairs are arranged by order of first appearence
E 
-when defining a word in this problem to determine it's length we are only considering alphabetic characters
-hello! is 5 characters in length 
-what's is also 5 character in length
-end. is 3 characters in length
D 
Input:'Four score and seven.'
Output: { 3 => 1, 4 => 1, 5 => 2 }
Intermiate: ['Four', 'Score', 'and', 'seven.']
-We will use an array to split of the words to iterate over them then eleminate the non-alphabetic characters 
A 
create an empty hash `count`
split the string input of words into an array (the delimeter is the spaces between them)
iterate over the array of words 
  delete all alphabetic characters from the current word of the iteration
  -use the return value from the deletion and find the length of it
  if the current length of the deleted return value is a current key in `count` 
    -add 1 to the count of the key of that length
  if the current length of word is not a current key in `count`
    -create a new key value pair where the key is the length of the word and set the value to 1 
return `count`


=end
def word_sizes(words)
  count = Hash.new(0)
  words.split.each do |word|
    count[word.delete('^A-Za-z').length] += 1
  end
  count
end 

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}