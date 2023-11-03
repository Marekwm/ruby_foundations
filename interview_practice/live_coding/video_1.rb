=begin
Given a non-emtpy string, check if a given string can be constructed by taking a substring 
of it and appending multiple copies of the substring together. You may assume all strings
contain only lowercase alphabetic letters

p repeated_substring_pattern("abab") == true
p repeated_substring_pattern("aba") == false
p repeated_substring_pattern("aabaaba") == false
p repeated_substring_pattern("abaababaab") == true
p repeated_substring_pattern("abcabcabcabc") == true

P 
Input:string of lowercase letters 
Output: true or false
Rules:
  Explicit Requirements:
    -string input is always lowercase alphabetic letters
    -if any substring of the input can be combined to form the matching input string 
      -return true 
    -if none of the substrings can be combined to form the matching input string 
      -return false
  Implicit Requirements:
    -substring can only be combined to make a matching string if the it starts with the same character as the input string 
    -substrings cannot be larger then half of input string
    -you can determine the amount of times to combine the substring by
      -dividing the length of the input string by the length of the substrings
    
E 
input: "abaababaab"
output: true
substring 2 of these 'abaab' will make the equivilent of the input string 

input: 'aaa'
output: true
substring: 'a' you need 3 

D 
Input:string 'abcdabcd'
Output:boolean true 
Intermidiate: substrings 'abcd' ['a','ab','abc','abcd']

A 
---helper method to find the desired substrings
ex: input: 'avav' the substrings we need are 'a' and 'av'
we can put all the substrings in an array///

create an empty array named `substrings`
iterate over the input string
append every substring to `substrings` until the substrings become greater than the length of the input string
return `substrings`
---

using the array substrings returned by the helper method, iterate over it
  find the amount of times the substring must be multiplied by and save it a variable named `combine`
    -divide the lenght of the input string by the length of the substring
  if the substring multiplied by `combine` is equal to the input string
    -return true
  if none of the substrings combinations are equal to the input string return false
=end 

def get_linear_substrings(str)
  substrings = []
  (1..(str.length / 2)).each do |size|
    substrings << str.slice(0,size)
  end 
  substrings
end

def repeated_substring_pattern(str)
  substrings = get_linear_substrings(str)
  substrings.each do |substring|
    combo = str.size / substring.size
    return true if substring * combo == str
  end 
  false
end 
    
p repeated_substring_pattern("abab") == true
p repeated_substring_pattern("aba") == false
p repeated_substring_pattern("aabaaba") == false
p repeated_substring_pattern("abaababaab") == true
p repeated_substring_pattern("abcabcabcabc") == true

# ===========SECOND PART=================================
=begin
Given an array of strings made only from lowercase letter, return an array of all
characters that show up in all strings within the given array (including duplicates).
For example, a character occurs 3 times in all strings but not 4 times, you need to 
include that character three times in the final answer.

Input: array of strings with only lowercase letters
Output: array of characters that show up in all the words 
Rules:
  Explicit Requirements:
    -the given array of strings only contains lowercase letters 
    -each word can be of different length
    -the returned array contains the characters that show up in all the words 
    -a character can be included more then once in the output array
  Implicit Requirements: 
    -if no characters show up in all the words then return an empty array
Datastructure
  input: array of strings [car, cat, cab] 
  output: array of characters ['c', 'a']
    
Algorithm
we need to iterate over only one substring so for this case just the first string
convert the string to an array characters
perform selection on the array
  evaluate if the current character is included in all the strings 
return the new array from selection 
   

p common_chars(['bella', 'label', 'roller']) == ['e', 'l', 'l']
p common_chars(['cool', 'lock', 'cook']) == ['c', 'o']
p common_chars(['hello', 'goodbye', 'booya', 'random']) == ['o']
p common_chars(['aabbbaa', 'cccdddd', 'eeffeef', 'ggrrrrr', 'mmzzz']) = []

=end

def common_chars(arr)
  new_arr = arr.map {|str| str.dup}
  characters = new_arr.shift.chars
  characters.select do |char|
    new_arr.all? {|word| word.sub!(char, '')}
  end 
end 
p common_chars(['bella', 'label', 'roller'])  == ['e', 'l', 'l']
p common_chars(['cool', 'lock', 'cook'])== ['c', 'o']
p common_chars(['hello', 'goodbye', 'booya', 'random']) == ['o']
p common_chars(['aabbbaa', 'cccdddd', 'eeffeef', 'ggrrrrr', 'mmzzz']) == []