=begin
Given two words, how many letters do you have to remove from them to make them anagrams?
Example
First word : c od e w ar s (4 letters removed)
Second word : ha c k er r a nk (6 letters removed)
Result : 10
Hints
A word is an anagram of another word if they have the same letters (usually in a different order).
Do not worry about case. All inputs will be lowercase.

input: 2 lowercase strings
output: count of removed characters to make the 2 strings equal to one another
explicit requirements:
  -the 2 strings contain only lowerscase letters
  -remove the characters that in order the make the strings anagrams 
  -count how many strings you remove and return it
datastructures
input: 2 strings // 'doggy' 'laggy'
output: integer // 4, 2 each word 'do' and 'la'
intermediate: array of characters// ['d','o','g','g','y'] for both 

algorithm
create 2 duplicate strings saved to new variables
convert both strings to arrays arr1 and arr2
create an counter named count
iterate over arr1
  evaluate if the current character is in the second string
    if yes 
      
  
    if no
    iterate over arr2 
      add 1 to count
     evaluate if the current character is in the second string
    if yes 
      
  
    if no
      add 1 to count
  

=end

def anagram_difference(str1, str2)
  count = 0
  str1_dup = str1.dup
  str2_dup = str2.dup
  return count if str1 == str2
  str1.each_char do |char|
    if str2_dup.include?(char)
      str1_dup.sub!(char, '')
      str2_dup.sub!(char, '') 
    end
  end 
  return str1_dup.size + str2_dup.size
end 
      
p anagram_difference('', '') == 0
p anagram_difference('a', '') == 1
p anagram_difference('', 'a') == 1
p anagram_difference('ab', 'a') == 1
p anagram_difference('ab', 'ba') == 0
p anagram_difference('ab', 'cd') == 4
p anagram_difference('aab', 'a') == 2
p anagram_difference('a', 'aab') == 2
p anagram_difference('codewars', 'hackerrank') == 10