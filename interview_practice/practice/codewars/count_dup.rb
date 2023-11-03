=begin
Write a method that will return the count of distinct case-insensitive alphabetic
characters and numeric digits that occur more than once in the input string. 
The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.

Example
"abcde" -> 0 # no characters repeats more than once
"aabbcde" -> 2 # 'a' and 'b'
"aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
"indivisibility" -> 1 # 'i' occurs six times
"Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
"aA11" -> 2 # 'a' and '1'
"ABBA" -> 2 # 'A' and 'B' each occur twice


p duplicate_count("abcde") == 0
p duplicate_count("abcdeaa") == 1
p duplicate_count("abcdeaB") == 2
p duplicate_count("Indivisibilities") == 2

Input: string
Output:integer representing how many characters apear more then once in the argued string
Rules:
  Explicit Requirements:
    -the integer represents how many characters apear more then once in the argued string
    -if no characters appear more then once return 0 
    -this is case insesitive 
  
Datastructures
Input:string  //'1a1ba'
Output:integer  // 2
Intermediate:array // that holds all unique characters from the argued string 

Algorithms
convert the argued string into an array of character
iterate over only the unique values of that array
  add a tally starting at zero if there are any characters that appear more than 1 time
  in the argued string
return the tally
=end
def duplicate_count(str)
  str.downcase.chars.uniq.count{|char|  str.downcase.count(char) > 1}
end 
  
p duplicate_count("abcde") == 0
p duplicate_count("abcdeaa") == 1
p duplicate_count("abcdeaB") == 2
p duplicate_count("Indivisibilities") == 2