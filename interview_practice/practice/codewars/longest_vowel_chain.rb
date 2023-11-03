=begin
The vowel substrings in the word codewarriors are o,e,a,io. The longest of these has a length of 2.
Given a lowercase string that has alphabetic characters only (both vowels and consonants) and no spaces,
return the length of the longest vowel substring. Vowels are any of aeiou.

p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8

Input:String
Output: integer
Rules:
  Explicit requirements:
    -the input string is all lower letters
    -the integer output represents the length of the longest substring from the 
    input that only contains vowels
    -vowels are `aeiou` no 'y'
Datastructure
Input: string; "suoidea"
Ouput: integer; 3
Intermediate: iterate over all the substrings only collect ones where all the characters 
are vowels

Algorithm
create constant that will have an array of vowel %w(a e i o u)
create an empty array called vowel_substrings
iterate from 0 upto the size of the argued string - 1
  let the numbers passed to the iteration block be assigned to `start_idx`
  iterate within the first iteration from `start_idx` to the size of the argued string - 1
  let the numbers passed to the iteration block be assigned to `end_idx`
    every inner iteration we will create a substring the will be referenced from the argued string 
    the substrings will range from the index at start_idx to end_idx 
    evaluate if the substrings contains all vowels ---subproccess
    convert the substring to an array of characters 
    iterate over this array of characters 
      if all the characters are in the vowel constant 
    append the substring to `vowel_substring`
find the substring with the max length by performing comparison over vowel_substrings and select the first element

=end 
VOWELS = %w(a e i o u)

def solve(str)
  vowel_substrings = []
  0.upto(str.size - 1).each do |idx1|
    idx1.upto(str.size - 1).each do |idx2|
      if str[idx1..idx2].chars.all?{|char| VOWELS.include?(char)}
        vowel_substrings << str[idx1..idx2]
      end 
    end 
  end 
  vowel_substrings.max_by{|substring| substring.size}.size
end 

# this way allows you to create an array of substrings that was split up with a delimeter using regex

# def solve(str)
#   p str.split(/[^aeiou]/).map{|s| s.size}.max
# end 
p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8