=begin
You are given array of integers, your task will be to count all pairs in that array and return their count.

Notes:

Array can be empty or contain only one value; in this case return 0
If there are more pairs of a certain number, count each pair only once. E.g.: 
for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s)
  
Random tests: maximum array length is 1000, range of values in array is between 0 and 1000

Examples
[1, 2, 5, 6, 5, 2]  -->  2
...because there are 2 pairs: 2 and 5

[1, 2, 2, 20, 6, 20, 2, 6, 2]  -->  4
...because there are 4 pairs: 2, 20, 6 and 2 (again)

Input: array of integers
Output: integer
Rules 
  Explicit Requirements:
    -if the argued array contains 1 or less values return 0
    -return the amount of unique pairs of integers in the argued array 
      this amount will be represented as an integer
Datastructures
Input: array// [2, 2, 1, 3, 2, 1]
Output: integer // 2
Intermediate: [2, 1, 3]

Algorithm
iterate over the unique elements of the argued array
  (add the return value of each iteration with one another)
  count how many times the current integer appears in the argued array
    divide that number by two 
return the sum of each iteration return value added to one another

=end 

def pairs(arr)
  arr.uniq.sum {|num| arr.count(num) / 2}
end 
p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0

  