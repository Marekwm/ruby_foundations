=begin
You've just discovered a square (NxN) field and you notice a warning sign. The sign states that there's a single bomb in
the 2D grid-like field in front of you.

Write a function mineLocation/MineLocation that accepts a 2D array, and returns the location of the mine. The mine is
represented as the integer 1 in the 2D array. Areas in the 2D array that are not the mine will be represented as 0s.
The location returned should be an array (Tuple<int, int> in C#) where the first element is the row index, and the second
element is the column index of the bomb location (both should be 0 based). All 2D arrays passed into your function will
be square (NxN), and there will only be one mine in the array.
input:array of subarrays that contain integers 0's and 1
output: return the index reference to where 1 appears
datastructures
input: array//[ [1, 0, 0], [0, 0, 0], [0, 0, 0] ] 
output: array//[0,0] index reference to where 1 is 
algorithm
iterate over the given array and it's index
  iterate over the given subarray and it's index
    return the 2 index values in a subarray if the current value is equal to 1
=end
def mineLocation(arr)
  arr.each_with_index do |subarray, idx1|
    subarray.each_with_index do |num, idx2|
      return [idx1, idx2] if num == 1
    end 
  end 
end 
p mineLocation( [ [1, 0, 0], [0, 0, 0], [0, 0, 0] ] ) == [0, 0]
p mineLocation( [ [0, 0, 0], [0, 1, 0], [0, 0, 0] ] ) == [1, 1]
p mineLocation( [ [0, 0, 0], [0, 0, 0], [0, 1, 0] ] ) == [2, 1]
p mineLocation([ [1, 0], [0, 0] ]) == [0, 0]
p mineLocation([ [1, 0, 0], [0, 0, 0], [0, 0, 0] ]) == [0, 0]
p mineLocation([ [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 1, 0], [0, 0, 0, 0] ]) == [2, 2]