# Write a method that returns a list of all substrings of a string that start at the beginning of the original string. 
# The return value should be arranged in order from shortest to longest substring.

# ex: 
# p leading_substrings('abc') == ['a', 'ab', 'abc']
# p leading_substrings('a') == ['a']
# p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# Input: string
# Output: array
# Rules
    # -the returned array must contain an array of all substrings that start at 
    # the beginning of the argued string

# Datastructure
# Input: 'abc'
# Output: ['a', 'ab', 'abc']

# Algorithm
# create an empty array named `result`
# iterate the over the numbers that increment from 1 to the size of the array minus 1
  # this will be used to reference the length subarray
  # append the piece of the string with the starter index of 0 and length of the current number of the iteration
# return `result`

def leading_substrings(string)
  result = []
  1.upto(string.size) do |length|
    result << string.slice(0, length)
  end 
  result
end 

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
