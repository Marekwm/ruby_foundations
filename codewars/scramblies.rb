=begin
Complete the function scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged to match
str2, otherwise returns false.
Notes:
Only lower case letters will be used (a-z). No punctuation or digits will be included.
Performance needs to be considered
Input strings s1 and s2 are null terminated.

input:2 strings 
output: true or false
explicit requirements:
  -return true if the first string contains all the characters in the second 
  -false otherwise
datastructures
input: 2 strings // 'doggy', 'god'
output: true
intermediate: array of characters for the second string ['g','o','d']
helper:

algorithm
create a duplicate string for the first argued string 
convert the second argued string to an array of characters
iterate over this new array return true if all iterations return true
  evaluate if the current character is in the first duplicate string
    if so swap the current character from the string duplcate with an empty string

=end
def scramble(str1, str2)
  str1_dup = str1.dup
  str2.chars.all? do |char|
    str1_dup.sub!(char, '') if str1_dup.include?(char)
  end 
end 
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('rkqodlw','world') == true
p scramble('cedewaraaossoqqyt','codewars') == true
p scramble('katas','steak') == false
p scramble('scriptjava','javascript') == true
p scramble('scriptingjava','javascript') == true