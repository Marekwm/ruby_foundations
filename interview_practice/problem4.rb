=begin
# Write a method that takes an array of integers and returns the
# two numbers that are closest together in value.

# Examples:

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]

# The tests above should print "true".

P 
Input: array of positve integers
Output: 2 elment array of closest integers 
Rules:
  Explicit Requirements:
    -return a two element array of the integers in the array that are the closest together
    in value
E 
[2, 54, 32, 29, 55] => [54, 55]

D 
Input:array 
Output:array
Intermidiate:a bunch of 2 element sub arrays with every combination of numbers

A 
iterate over all the array permutations of subarrays that are 2 elements in size
return the array with the smallest gap 
  

=end 
def closest_numbers(numbers)
 subarrays = numbers.permutation(2).to_a
 subarrays.min_by {|subarray| (subarray.first - subarray.last).abs}
end 
  
p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]