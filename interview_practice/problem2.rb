# 14 minutes
=begin
# Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.

# Examples:

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

# The tests above should print "true".

P 
Input:array of any integers 
Output: integer or nil
Rules:
  Explicit Requirements:
    -if the size of the array is larger 4 than calculate the sum of the integers within it
    -if the size of the array is less than 5 then return nil

E 

D 
Input:[1, 1, 1, 1, -1]
Output:4

A 
evaluate the length of the argued array
if the length is less than 5 
  return nil
otherwise find all the sub arrays with a length of 5
  return the sum of the sub array with the smallest number

=end 
def find_subarrays(numbers)
  sub_arrays = []
  numbers.size.times do |num|
    sub_arrays << numbers[num, 5]
  end 
  sub_arrays.select {|arr| arr.size == 5}
end 
  
def minimum_sum(numbers)
  if numbers.size >= 5 
    find_subarrays(numbers).min_by {|subarray| subarray.sum}.sum
    
  else 
    return nil
  end 
end 

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10