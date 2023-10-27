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
Input:'abcdabcd'
Output:true
Intermidiate: substring 'abcd'
Helper: a way to find the all the substrings that are smaller than or equal in length of the input string

A 
---helper method to find the desired substrings
ex: input: 'avav' the substrings we need are 'a' and 'av'
we can put all the substrings in an array///

create an empty array named `substrings`
iterate over the input string
append every substring to `substrings` until the substrings become greater than the length of the input string
return `substrings`
---

using the array substrings returned by the method iterate over them
  find the ammount of times the substring must be multiplied by and save it a variable named `combine`
    -divide the lenght of the input string by the length of the substring
  if the substring multiplied by `combine` is equal to the input string
    -return true
  if none of the substrings combinations are equal to the input string return false
=end 
def get_substrings(string)
  substrings = []
  1.upto(string.length / 2) do |length_of_substring|
    if string.length % length_of_substring == 0 #only add substrings that are a multiple of the input string 
      substrings << string[0, length_of_substring]
    end 
  end 
  substrings 
end 


def repeated_substring_pattern(string)
  p substrings = get_substrings(string)
  
  substrings.each do |substring|
    multiplier = string.length / substring.length
    return true if (substring * multiplier) == string
  end 
  false
end 
    
    
# p repeated_substring_pattern("abab") == true
# p repeated_substring_pattern("aba") == false
# p repeated_substring_pattern("aabaaba") == false
# p repeated_substring_pattern("abaababaab") == true
# p repeated_substring_pattern("abcabcabcabc") == true

# ===========SECOND PART=================================
=begin
Given an array of strings made only from lowercase letter, return an array of all
characters that show up in all strings within the given arry (including duplicates).
For example, if a character occurs 3 times in all strings but not 4 times, you need to 
include that character three times in the final answer.

p common_chars(['bella', 'label', 'roller']) == ['e', 'l', 'l']
p common_chars(['cool', 'lock', 'cook']) == ['c', 'o']
p common_chars(['hello', 'goodbye', 'booya', 'random']) == ['o']
p common_chars(['aabbbaa', 'cccdddd', 'eeffeef', 'ggrrrrr', 'mmzzz']) = []

=end