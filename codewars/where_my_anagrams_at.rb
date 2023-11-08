=begin

What is an anagram? Well, two words are anagrams of each other if they both contain the same letters. For example:
'abba' & 'baab' == true
'abba' & 'bbaa' == true
'abba' & 'abbba' == false
'abba' & 'abca' == false
Write a function that will find all the anagrams of a word from a list. You will be given two inputs a word and an array
with words. You should return an array of all the anagrams or an empty array if there are none. For example:

input:string and array of strings of equal length to the first string
output: array of strings that contains the same characters as the input string

algorithm
iterate over the argued array and perform selection
  only select the strings that when sorted are equal to the input string when sorted
=end
def anagrams(str, arr)
  arr.select{|string| string.chars.sort == str.chars.sort}
end 
p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) == ['aabb', 'bbaa']
p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) == ['carer', 'racer']
p anagrams('laser', ['lazing', 'lazy', 'lacer']) == []