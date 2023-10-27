=begin
Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. 
You may assume that the Array always contains at least one number.

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35
P 

Input:array
Output: integer
Rules:
  Explicit Requirements:
    -return the sum of the sums of each incrementing subsequence from the input array
E 
[1, 2] == (1) + (1 + 2) => 4
D 
Input: [3, 5, 2]
Output:21
Intermidiate[:[3], [3, 5], [3, 5, 2]]
A 
pass the argued array to the helper method
helper method to get the sub array or leading subsequences
  create a empty array named `subarray`
  iterate over the argued array utilizing the index value of each element
    append the array starting at the first element with a length of the current index + 1
  return `subarray`
  
assign the return value of the helper method to the array `subarrays`
create a variable named `sum` and assign it to 0
iterate over `subarrays`
  add the sum of the current sub array to `sum` 
    
return `sum`
=end 
def get_subarrays(numbers)
  subarrays = []
  numbers.each_with_index do |_,idx|
    subarrays << numbers[0, idx + 1]
  end 
  subarrays
end 

def sum_of_sums(numbers)
  subarrays = get_subarrays(numbers)
  sum = 0
  subarrays.each do |subarray|
    sum += subarray.sum
  end 
  sum
end 
  

p get_subarrays([3, 5, 2])
p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
