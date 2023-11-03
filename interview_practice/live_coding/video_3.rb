=begin
the maximum subarray problem consists in finding the maximum sum of a contiguous 
subsequence in an array of integers.

maxSequence [-2, 1, -3, 4, -1, 2, 1, -5, 4]
should be 6 [4, -1, 2, 1]

Easy case is when the array is made up of only positive numbers and the maximum
sum is the sum of the whole array. If the array is made up of only negative number,
return 0 instead.

Empty array is considered to have zero greatest sum. Note that the empty array is 
also a valid subarray.

p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12

Problem
Input: array of integer or emtpy
Ouput: integer

Rules
  Explicit Requirements:
    the input array can contain any integer
    if the array is empty then return 0 
    if the array contains all negative integers return 0
    if the array contains all positive integers return the sum of the entire array
    otherwise find the subarray with the greatest sum then return that sum
  
Example
[-2, 1, 12, -11, 2] => [1, 12] => 13

Datastructure
Input: array [-2, 1, 12, -11, 2]
Output: integer 13
Intermidiate:all the subarrays of the argued array

Algorithm
create a helper method to get all the subarrays from the argued array
create an empty array named `subarrays`
  iterate over a non inclusive range of 0 to the size of the array
    each number of iteration will be assigned to `start_idx`
    
    iterate again over a  non inclusive range that will start at the current value of start_idx + 1
    to the size of the array
      each number of iteration will be assigned to `length`
      append the array that is made up by the value of the array at the index start_idx with that will inclusively range
      to `length`
result subarrays


//main method 
if the array is empty or all the element are negative return 0
if all the array element are positive return the sum of the argued array
assign the return value of the helper method to `subarray`
iterate over the subarray by comparing the sums of each
  return the sum of the subarray with the max value

def get_all_subarrays(arr)
  subarrays = []
  (0...arr.size).each do |start_idx|
    ((start_idx + 1)...arr.size).each do |length|
      subarrays << arr.slice(start_idx, length)
    end 
  end 
  subarrays
end 

def max_sequence(arr)
  subarrays = get_all_subarrays(arr)
  
  if arr.empty? || arr.all?{|num| num < 0}
    return 0
  elsif arr.all? {|num| num >= 0}
    return arr.sum
  else
    return subarrays.max_by {|subarr| subarr.sum}.sum
  end 
end 

p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12

=end

=begin
Write a method to find the longest common prefix amongts an array of strings

if there are no common prefix return ''
all strings are lowercase

common_prefix(['flower', 'flake', 'flat']) == 'fl'
common_prefix(['fate', 'zero']) == ''
common_prefix(['interstellar', 'interstate', 'interspecies']) == 'inters'
common_prefix(['dog', 'dog']) == 'dog'

Input: array of strings 
Output: string 
Rules:
  E R: 
  return the longest common prefix amongst the argued array of strings
  if the all the strings are the same return the entire string
  return an empty string if there is no common prefix
  
Datastructure
Input: array of strings;['flower', 'flake', 'flat']
Output: string ; 'fl'
Intermidiate: ['f', 'l', 'o', 'w', 'e', 'r']

Algorithm
create an emtpy string named results 
assign the first element of the argued string to `characters` and convert the string to an array
create flag named streak = true
while streak is equal to true
iterate over characters
  if the current character is present in all the other words 
    append the current character to results 
  otherwise
    set streak = false
=end 
  
def common_prefix(arr)
  results = ''
  characters = arr.shift.chars
  0.upto(characters.size - 1) do |counter|
    if arr.all?{|word| word[counter] == characters[counter]}
       p results << characters[counter]
    else 
      results
    end
  end 
  results
end 

p common_prefix(['flower', 'flake', 'flat']) == 'fl'
p common_prefix(['fate', 'zero']) == ''
p common_prefix(['interstellar', 'interstate', 'interspecies']) == 'inters'
p common_prefix(['dog', 'dog']) == 'dog'
