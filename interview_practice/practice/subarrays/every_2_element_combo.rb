# how many pairs, array of sums, array  of subarrays with alphabetical spelling of each number

# given an array return all the combination of pairs as subarrays
# Input: array 
# Output: array of subarrays
# Rules
# get all the 2 element combinations as subarrays from the argued array
# if the argued array contains 2 elements then return the same array value
# Examples
# input [1,2,3,1] => [[1,2],[1,3],[1,1],[2,3],[2,1],[3,1]]
# input [1,2] => [1,2]
# Datastructures
# Input: array  [1,2,3,1]
# Output: array with subarrays [[1,2],[1,3],[1,1],[2,3],[2,1],[3,1]]
# Algorithm
# given an array of integer
# create a method in order to get all the 2 element subarray combinations
#   pass the argued array to this helper method as an argument
#   create an empty `results` array 
#   iterate a given amount of times based length of the array 
#   iterate again using the current number (starting_index) iterate through the rest of the array length
#     append the 2 element array this is comprised of the element of the array at the index `starting_index` 
#     and combined with the element of the argued array at the index of the current number of the nested iteration
  
#   return results 

# def get_all_2element_subarrays(arr)
#   results = []
#   (0...arr.size).each do |start_index|
#     ((start_index + 1)...arr.size).each do |current_index|
#       results << ([arr[start_index]] << arr[current_index])
#     end 
#   end 
#   results
# end 

# p get_all_2element_subarrays([1,2,3,1]) == [[1,2],[1,3],[1,1],[2,3],[2,1],[3,1]]

# now that we have this method, given an array, return an array of integers that represents the sum of all subarray 2 element 
# pairs derived from the argued array
# ex:[1,2,3,1] => [[1,2],[1,3],[1,1],[2,3],[2,1],[3,1]] => [3,4,2,5,3,4]

# Input: array of integers
# Output: array of integers
# Rules:
  # get all the combinations of 2 element pairs from the argued array 
  # using all these 2 element combo subarrays calculate the sum of each
  # return all the sums in order of first appearence within an array
# Algorithm
# helper method to get all the 2 element combinations returned in as subarrays within 1 array
  # given an array of integer
  # pass the argued array to this helper method as an argument
  #   create an empty `results` array 
  #   iterate a given amount of times based length of the array 
  #   iterate again using the current number (starting_index + 1) iterate through the rest of the array length
  #     append the 2 element array that is comprised of the value of the argued array at the index `starting_index` 
  #     and combined with the element of the argued array at the index of the current number of the nested iteration
# assing the return value of the helper method to `subarrays`
# create an emtpy array named `sums`
# iterate over subarrays
#   calculate the sum of each sub array and add that integer to `sum`
# return sums
# def get_all_2element_subarrays(arr)
#   results = []
#   (0...arr.size).each do |start_index|
#     ((start_index + 1)...arr.size).each do |current_index|
#       results << ([arr[start_index]] << arr[current_index])
#     end 
#   end 
#   results
# end 

# def get_sums(arr)
#   subarrays = get_all_2element_subarrays(arr) 
#   subarrays.each_with_object([]) do |subarray, sums|
#     sums << subarray.sum
#   end 
# end 

# p get_sums([1,2,3,1]) == [3,4,2,5,3,4]

# array of sums of all 2 element combos, with alphabetical spelling of each number if the number is odd return it capitalized
# Input: array of integers
# Output: array of string representation of sums (only up to 9)
# Rules:
#   the given array is 4 integers in length
#   the sums will not exceed 9
#   must get all the 2 element combinations from the argued array
#   calculate the sums of all the subarrays and return an array of the string representation of the integer sums
# if the sum is odd return the capitalized string representation
# Example
#p get_string_sum([1,2,3,1]) == ['Three', 'four', 'two', 'Five', 'Three', 'four']
# Datastructure
# intermediate: [[1,2],[1,3],[1,1],[2,3],[2,1],[3,1]] gather all the 2 element combinations
# [3,4,2,5,3,4] get an array with the sums of all the 2 element combinations
# Helper: array of the strings from 0 to 9
# %w(zero one two three four five six seven eight nine)

# Algorithm
# create a array named `alphabet` that will contain the string represention of the numbers 
# %w(zero one two three four five six seven eight nine)

# helper method get all the 2 element substring
# given the argued array 
# create a `results` array
# iterate from a non-inclusive range of 0 to the length of the array 
# each number of iteration will be represented as `start_idx`
# create another iteration that will non-inclusively range from `start_idx` + 1 to size of the array 
# each number of this inner iteration will be represented as `current_idx`
# for each inner iteration 
#   add the two element array that is made up of the value of the argued array at index `start_idx` and the
#   value of the argued array at index `current_idx` to `results`
# return `results
  
# /main method/
# assign the return value of the helper method invocation with the argued array to `subarrays`
# create an empty array named `results` 
# iterate over `subarrays`
# calculate the sum each sub array and append it to `results`
# perform transformation on `results` 
#   if current sum value is odd?
  #   add the capitialized string value of alphabet at index current number of iteration
  #   otherwise 
  #   add the string value of alphabet at index current number of iteration
  # return results
    
ALPHABET = %w(zero one two three four five six seven eight nine)
def get_all_subarrays(arr)
  results = []
  (0...arr.size).each do |start_index|
    ((start_index + 1)...arr.size).each do |current_index|
      results << ([arr[start_index]] << arr[current_index])
    end 
  end 
  results
end 

def get_string_sums(arr)
  subarrays = get_all_subarrays(arr)
  results = []
  subarrays.each do |subarray|
    results << subarray.sum
  end 
  results.map do |sum|
    if sum.odd?
      ALPHABET[sum].capitalize
    else 
      ALPHABET[sum]
    end 
  end 
end 
p get_string_sums([1,2,3,1]) == ['Three', 'four', 'two', 'Five', 'Three', 'four']