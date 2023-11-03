=begin
Find the length of the longest substring in the given string that is the same in reverse 

p longest_substring('a') == 1
p longest_substring('aa') == 2
p longest_substring('baa') == 2
p longest_substring('aab') == 2
p longest_substring('baabcd') == 4
p longest_substring('baab12345432133sw') == 9

Input: string
Output: integer 
Rules:
  Explicit requirements:
    the input is a string of lowercase letters and numbers
    the output is an integer that represents the length of the largest substring 
      that is the same in reverse 
    the substring is not case sensitive 
Datastructure:
Input: string; 'aab'
Output: integer 2
Intermediate: ['a', 'aa', 'aab', 'ab', 'b']
sort through the substrings that equal to there reverse 
['a', 'aa', 'b']
get the substring with the longest length by comparison
'aa'
Algorithm
create a helper method to get all the substrings of the argued string
create an empty array named substrings 
iterate over a non inclusive range from 0 to the size of the argued array
  let the numbers of iteration be assigned to `start_idx` 
  
  create another iteration over a non inclusive range from the `start_idx` + 1
    let the numbers of iteration be assigned to `string_length`
  append the substrings made up of the input string at index `start_idx` with a length of `string_length`
```ruby
//main
assign the return value of the helper to the variable `substrings`
perform selection over the substrings 
  if the current substring is equal to it's reverse form 
  then select this substring 
  if not do not select it
perform comparison over the selected substrings 
  find the substring with the max length
```
=end 
def get_all_substrings(str)
  substrings = []
  (0...str.size).each do |start_idx|
    ((start_idx + 1)..str.size).each do |string_size|
      substrings << str[start_idx, string_size]
    end 
  end 
 substrings
end 

def longest_substring(str)
  p substrings = get_all_substrings(str)
  substrings.select!{|substring| substring == substring.reverse}
  substrings.max_by{|substring| substring.size}.size
end 


p longest_substring('a') == 1
p longest_substring('aa') == 2
p longest_substring('baa') == 2
p longest_substring('aab') == 2
p longest_substring('baabcd') == 4
p longest_substring('baab12345432133sw') == 9