=begin
An anagram is the result of rearranging the letters of a word to produce a new word (see wikipedia).
Note: anagrams are case insensitive
Complete the function to return true if the two arguments given are anagrams of each other; return false otherwise.
Examples
"foefet" is an anagram of "toffee"
"Buckethead" is an anagram of "DeathCubeK"
input: 2 string
output: true or false
rules:
  explicit requirements
    return true if both words have the all the same characters, this is case insensitive
algorithm
evaluate if both of the strings converted to lowercase and alphabetically sorted are equal to one another
=end
def is_anagram(str1,str2)
  str1.downcase.chars.sort == str2.downcase.chars.sort 
end 
p is_anagram('Creative', 'Reactive') == true
p is_anagram("foefet", "toffee") == true
p is_anagram("Buckethead", "DeathCubeK") == true
p is_anagram("Twoo", "WooT") == true
p is_anagram("dumble", "bumble") == false
p is_anagram("ound", "round") == false
p is_anagram("apple", "pale") == false
