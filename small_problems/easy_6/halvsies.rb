=begin
Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) 
that contain the first half and second half of the original Array, respectively.
If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

ex: 

halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]
P 
Input:array 
Output: two arrays as a pair of nested arrays 
Rules:
  Explicit Requirements:
    -return two nested arrays ex: [[], []]
    -the first array contains the first half of the input array
    -the second array contains the second half of the input array
    -if the length of the input array is odd 
      -the middle element will be added to the first array
  Implicit Requirements:
    -if the input is an empty array return two empty arrays 
    -if the input only has one element, the first half will contain it and the second is empty

D
Input:[3, 6, 9, 12]
Output:[[3, 6], [9, 12]]
Intermidiate:[3, 6]     [9, 12]

A 
-evaluate the length of the argued array
  -if the length is an odd number
    -add the first half and middle element to the first nested array
    -add the last half to the second nested array
  -if even 
    -add the first half to the first nested array 
    -add the second half to the second nested array
    
  return the first and second array nested in one array 

=end 
def halvsies(arr)
  result = [nil, nil] 
  half = arr.size / 2
  if arr.size.odd?
    result[0] = arr[0, (half + 1)]
    result[-1] = arr.last(half)
  else 
    result[0] = arr.first(half)
    result[-1] = arr.last(half)
  end 
  result
end 

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]