=begin
A pangram is a sentence that contains every single letter of the alphabet at least once. For example, the sentence "The
quick brown fox jumps over the lazy dog" is a pangram, because it uses the letters A-Z at least once (case is irrelevant).
Given a string, detect whether or not it is a pangram. Return True if it is, False if not. Ignore numbers and punctuation.

input:string
output:true or false
explicit requirements:
  -return true if the argued string contains every alphabetical characters
  -false otherwise
  -this method is case insensitive
datastructures
input: string// 'Sphinx of black quartz, judge my vow.'
output: boolean // true
intermediate: array of all uniq lowercase characters in argued string//
helper: array of lowercase alphabet

algorithm
create a array of all lowercase alphabet characters
convert the argued string to all lowercase characters, delete all non-alphabetical characters
then convert it to an array of unique characters
iterate over the array of alphabet and only return true if all 
  the alphabet characters are in the array of unique characters
=end

def panagram?(str)
  arr = str.downcase.chars.uniq
  ('a'..'z').to_a.all? do |char|
    arr.include?(char)
  end 
end 
p panagram?("The quick brown fox jumps over the lazy dog.") == true
p panagram?("This is not a pangram.") == false
p panagram?('Sphinx of black quartz, judge my vow.') == true