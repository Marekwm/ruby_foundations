=begin
given an array

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
          
Write a program that prints out groups of words that are anagrams.
Anagrams are words that have the same exact letters in them but in a different order. 
Your output should look something like this:

["demo", "dome", "mode"]
["neon", "none"]
#(etc)

input: array
output: dipslay groups of words that are anagrams
rules
  explicit requirments
    -given an array of words 
    -find all the groups of words that are anagrams
    -display each of the arrays of anagrams after sorted
D 
helper: use a hash to store where the key is the sorted word and the value is an array of all the anagrams

A 
create an empty hash called `anagrams`
iterate over the argued array of words 
  sort the current word of iteration
  if the sorted word is a key in the hash 
    append the word within the array value
  if the sorted word is not a key in the hash
    creae a key value pair with the key has the sorted word and the value is a hash with the word inside
display each hash array value if the array size is greater than 1


=end

def display_anagrams(array)
  anagrams = {}
  array.each do |word|
    key = word.chars.sort.join
    
    if anagrams.key?(key)
      anagrams[key] << word
    else 
      anagrams[key] = [word]
    end
  end 
  
  anagrams.each_value { |value| p value}
end 
  
  
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
          
display_anagrams(words)