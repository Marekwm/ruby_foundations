=begin
Complete the method that
accepts two integer arrays of equal length
compares the value each member in one array to the corresponding member in the other
squares the absolute value difference between those two values
and returns the average of those squared absolute value difference between each member pair.
Examples
[1, 2, 3], [4, 5, 6] --> 9 because (9 + 9 + 9) / 3
[10, 20, 10, 2], [10, 25, 5, -2] --> 16.5 because (0 + 25 + 25 + 16) / 4
[-1, 0], [0, -1] --> 1 because (1 + 1) / 2

input:2 arrays
output:average of the squared absolute value difference between each member pair
explicit requirements:
  -find the absolute value of the difference between each member pair
  member pair meaning the 2 values at the n index from each array
  square that value for all the absolutes values 
  -add all the squared numbers together and divide by the length of an array
  -

algorithm
create an empty array named square_values
iterate over the first argued array with the index value
substract the value from the second argued array at the current index from the current value 
find the absolute value of this result and square it
add the squared value to square_values 

get the sum of square_values and divide that number by the length of the first array
=end

# def solution(arr1,arr2)
#   square_values = []
#   arr1.each_with_index do |num, idx|
#     squared = ((num - arr2[idx]).abs) ** 2
#     square_values << squared
#   end 
#   (square_values.sum) / arr1.size.to_f
# end 

def solution(arr1,arr2)
  arr1.zip(arr2).map {|a,b| (a - b) ** 2}.sum.fdiv(arr1.size)
end
p solution([1, 2, 3], [4, 5, 6]) == 9
p solution([10, 20, 10, 2], [10, 25, 5, -2]) == 16.5
p solution([-1, 0], [0, -1]) == 1