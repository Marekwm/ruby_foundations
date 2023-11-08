=begin
Alphabet symmetry

Consider the word "abode". We can see that the letter a is in position 1 and b is in position 2. In the alphabet, a and b
are also in positions 1 and 2. Notice also that d and e in abode occupy the positions they would occupy in the alphabet,
which are positions 4 and 5.

Given an array of words, return an array of the number of letters that occupy their positions in the alphabet for each
word. For example,

solve(["abode","ABc","xyzD"]) = [4, 3, 1]
See test cases for more examples.
Input will consist of alphabet characters, both uppercase and lowercase. No spaces.

Input: array of strings
Output: array of integers

Rules: 
  Explicit requirements:
    -the array consists of strings with uppercase and lowercase letters without spaces 
    -the returned array of integers is the same size as the input array and each integer represents an 
    evaluation for it's matching string
    -the string characters are evaluated on there placements compared to the alphabet
      if the character is in the same place as it is in the alphabet the integer is increased by 1
      if no characters are in the same place 0 is returned

Datastructures:
Input: array of strings // ['abd','zfc', 'mnop']
Output: array of integers // [2, 1, 0]
Intermediate: empty array for integers, arrays of character for evaluation 
Helper: an array of lowercase alphabet

Algorithm
create an array of lowercase characters a-z
create an empty array named results 
iterate over the argued array
  for each string iteration intialize a counter = 0
  convert the string to lowercase letters then to an array of characters
  iterate over this array of characters with there index
    add 1 to count if the current character is equal to the character of the alphabet array at the current index
  append the value of count to results 
  //
//
return results 
=end

ALPHABET = ('a'..'z').to_a
def solve(arr)
  results = []
  arr.each do |str|
    count = 0
    str.downcase.chars.each_with_index do |char, idx|
      count += 1 if char == ALPHABET[idx]
    end 
    results << count
  end 
  results
end 


p solve(["abode","ABc","xyzD"]) == [4,3,1]
p solve(["abide","ABc","xyz"]) == [4,3,0]
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"])== [6,5,7]
p solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]

