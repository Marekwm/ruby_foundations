=begin
Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays.
There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.

ex: 
p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
p merge([3, 6, 9, 9], [12, 9, 15]) == [3, 6, 9, 12, 15]

P 
Input:two arrays 
Output: one array that contains all unique values from the argued arrays
Rules:
  Explicit Requirements:
    -The argued arrays contain positve integers
    -The output array must only contain unique values 
    -The order of the array is by order of first occurence

D 
Input:[3, 6, 9, 9], [12, 9, 15]
Output:[3, 6, 9, 12, 15]
Intermidiate:[3, 6, 9, 9, 12, 9, 15]

A 
asign the addition of both argued arrays to a local variable
delete all duplicate values from this combined array
return the array of unique values 
=end 

def merge(arr1, arr2)
  combined_array = arr1 + arr2
  combined_array.uniq
end 
# using the union method Array#| will combine the first and second array with order preserved and unique values 
def merge(arr1, arr2)
  arr1 | arr2
end 
p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
p merge([3, 6, 9, 9], [12, 9, 15]) == [3, 6, 9, 12, 15]
