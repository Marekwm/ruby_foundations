=begin
# Complete the function scramble(str1, str2) that returns true if a portion of str1 
# characters can be rearranged to match str2, otherwise returns false.

# Only lower case letters will be used (a-z). No punctuation or digits will be included.
# Performance needs to be considered.

p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('katas', 'steak'     ) == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript'). == true

input:2 strings 
ouput: true or false
Rules:
  explicit requirements
    the first string input will be evaluated to see if it contains the characters to match 
    the second string input
    if so return true, otherwise false
    
Datastructure 
  input: 2 strings//'rkqodlw', 'world'
  output: true
  intermediate:
  first string input to array// ['r','k','q','o','d','l','w']
  second string input to array// ['w','o','r','l','d']
    
Alorithm
converth both the first and second string input into an array of characters 
assign them to the variables str1_chars, str2_chars respectively

iterate over str2_chars one character at a time and return true if all the iteration return true
  within the iteration, evaluate if str1_chars has the current character in it
return false otherwise

=end 
def scramble(str1, str2)
  str1_chars = str1.dup
  str2.chars.all? do |char|
    str1_chars.sub!(char, '') if str1_chars.include?(char)
  end 
end 

p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('katas', 'steak'     ) == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript'). == true