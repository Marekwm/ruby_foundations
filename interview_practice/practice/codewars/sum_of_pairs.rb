=begin
Given a list of integers and a single sum value, return the first two values (parse from the left please)
in order of appearance that add up to form the sum.

If there are two or more pairs with the required sum, 
the pair whose second element has the smallest index is the solution.

sum_pairs([11, 3, 7, 5],         10)
#              ^--^      3 + 7 = 10
== [3, 7]

sum_pairs([4, 3, 2, 3, 4],         6)
#          ^-----^         4 + 2 = 6, indices: 0, 2 *
#             ^-----^      3 + 3 = 6, indices: 1, 3
#                ^-----^   2 + 4 = 6, indices: 2, 4
#  * the correct answer is the pair whose second value has the smallest index
== [4, 2]

sum_pairs([0, 0, -2, 3], 2)
#  there are no pairs of values that can be added to produce 2.
== None/nil/undefined (Based on the language)

sum_pairs([10, 5, 2, 3, 7, 5],         10)
#              ^-----------^   5 + 5 = 10, indices: 1, 5
#                    ^--^      3 + 7 = 10, indices: 3, 4 *
#  * the correct answer is the pair whose second value has the smallest index
== [3, 7]
Negative numbers and duplicate numbers can and will appear.

NOTE: There will also be lists tested of lengths upwards of 10,000,000 elements. Be sure your code doesn't time out.

Input: array and integer
Output: subarray

Rules 
  Explicit Requirements
    
    -the integer given is the sum we are looking for from 2 element sub arrays made from 
    the input array
    -return the subarray whose second element has the smallest index
    -return nil if no pairs can be found
  
Algorithm
create an empty array named subarrays
iterate over a range from 0 upto the length of the array -1
  let the iteration number be represented by idx1
  iterate again from idx1 to the length of the array - 1
  let the iteration number be represented by idx1
  
  a two element array with one nested array as the first element 
  the first element will be an array made up from referencing the index range of the argued array with 
  the range of idx1 to the inclusive number of idx2
   the second element will be the value of idx2
  only add the subarray to subarray if the sum of the first element is equal to the argued integer
if subarrays is empty return nil
iterate over the subarrays using comparison 
  compare the second element of the sub array
  return the first element of the subarray with the smallest second element
=end
def sum_pairs(arr, num)
  subarrays = []
  0.upto(arr.size - 1).each do |idx1|
    (idx1 + 1).upto(arr.size - 1).each do |idx2|
      subarray = [arr[idx1]] << arr[idx2]
      subarrays << [subarray, [idx2]] if subarray.sum == num 
    end
  end 
  return nil if subarrays.empty?
  subarrays.min_by{|subarr| subarr.last}.first
end 
  
p sum_pairs([4, 3, 2, 3, 4],6) == [4, 2]
p sum_pairs([11, 3, 7, 5],10) == [3,7]
p sum_pairs([10, 5, 2, 3, 7, 5],10) == [3,7]