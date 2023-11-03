=begin
There is an array with some numbers. All numbers are equal except for one. Try to find it!

find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55
It’s guaranteed that array contains at least 3 numbers.

p find_uniq([1,1,1,1,0]) == 0
p find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
p find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55

Input: array
Output: integer
Rules:
  Explicit Requirements:
    -return the unique number in the input array
    -the input array contains at least 3 numbers

Datastructures
Input: array //[1,2,1,1]
Output: integer // 2

Algorithms
iterate over the argued array
return the number that only appears once in the array
=end
def find_uniq(arr)
  arr.uniq.each do |num|
    return num if arr.count(num) < 2
  end 
end 

p find_uniq([1,1,1,1,0]) == 0
p find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
p find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55