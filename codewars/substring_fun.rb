=begin
Complete the function that takes an array of words.
You must concatenate the nth letter from each word to construct a new word which should be returned as a string,
where n is the position of the word in the list.
For example:
["yoda", "best", "has"] --> "yes"
^ ^ ^
n=0 n=1 n=2
Note: Test cases contain valid input only - i.e. a string array or an empty array; and each word will have enough letters.

input:array of string
output: string 
rules:
  explicit requirements
    -the returned string is done by the incremental index reference of one character from each word starting from 
    index 0 for the first string 1 from the next and so on. the returned string is a word made up from each index reference
    return an empty string if the array is emtpy 
datastructure
input: array of strings // ['yoda', 'best', 'has']
output: string // 'yes'
intermediate:empty string to add the reference character strings 

Algorithm
create an emtpy string named word
iterate over the argued array's strings and index 
  append the string made from referencing the current index element from the current string 
return word
=end
def nth_char(arr)
  word = ''
  arr.each_with_index {|str, idx| word << str[idx]}
  word
end 
p nth_char(['yoda', 'best', 'has']) == 'yes'
p nth_char([]) == ''
p nth_char(['X-ray']) == 'X'
p nth_char(['No', 'No']) == 'No'
p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) == 'Codewars'