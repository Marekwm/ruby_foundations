=begin
Write a method that returns a list of all substrings of a string. 
The returned list should be ordered by where in the string the substring begins. 
This means that all substrings that start at position 0 should come first,
then all substrings that start at position 1, and so on.

Since multiple substrings will occur at each position, the substrings at a given
position should be returned in order from shortest to longest.

You may (and should) use the leading_substrings method you wrote in the previous exercise:
ex:
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
P 
Input: string
Output: array of all substrings
Rules:
  Explicit Requirements:
    -the substrings should be organized in shortest to longest for each position
 
E 

D 
Input:substrings'abcde'  
Output:
[
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]


=end 

def leading_substrings(string)
  result = []
  1.upto(string.size) do |length|
    result << string.slice(0, length)
  end 
  result
end 

def substrings(string)
  result = []
  (0...string.size).each do |starting_idx|
    substring = string[starting_idx..-1]
    result.concat(leading_substrings(substring))
  end 
  result
end 

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]