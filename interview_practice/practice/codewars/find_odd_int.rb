=begin
Given an array of integers, find the one that appears an odd number of times.

There will always be only one integer that appears an odd number of times.

Examples
[7] should return 7, because it occurs 1 time (which is odd).
[0] should return 0, because it occurs 1 time (which is odd).
[1,1,2] should return 2, because it occurs 1 time (which is odd).
[0,1,0,1,0] should return 0, because it occurs 3 times (which is odd).
[1,2,2,3,3,3,4,3,3,3,2,2,1] should return 4, because it appears 1 time (which is odd).

p find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5] == 5
p find_it([1,1,2,-2,5,2,4,4,-1,-2,5]) == -1
p find_it([20,1,1,2,2,3,3,5,5,4,20,4,5]) == 5
p find_it([10]) == 10
p find_it([1,1,1,1,1,1,10,1,1,1,1]) == 10

Input: array
Output:integer
Rules:
  Explicit Requirements:
    -return the integer that appears in the array an odd number of times
    -there will only be one odd appearing integer in the input array
  
Datastructures
Input:  array// [1,2,1]
Output: integer // 2


Algorithms
iterate over the uniq values of the argued array
count how many times the current integer is in the array
  if the count number is odd return that number
=end

def find_it(arr) 
  arr.each do |num|
    return num if arr.count(num).odd?
  end 
end 
  
p find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]) == 5
p find_it([1,1,2,-2,5,2,4,4,-1,-2,5]) == -1
p find_it([20,1,1,2,2,3,3,5,5,4,20,4,5]) == 5
p find_it([10]) == 10
p find_it([1,1,1,1,1,1,10,1,1,1,1]) == 10
