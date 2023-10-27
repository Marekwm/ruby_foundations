#####10.5 minutes 
=begin
P 
# Given an array of numbers, for each number find out how many numbers
# in the array are smaller than it. When counting numbers, only count
# unique values. That is, if a given number occurs multiple times in
# the array, it should only be counted once.

# Examples:

p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4])
                            == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]

# The tests above should print "true".

Input:array of numbers
Output: array of number
Rules:
  Explicit Requirements:
    -return a new array based on the following information
      -the array will represent the count of the how many numbers are smaller then the current number
      -only count unique values 
        -if the same number is in the array they will both be the same count 
  
E 
[1,2,3,4] => [0, 1, 2, 3]

D 
Input:[1,2,3,4] 
Output:[0, 1, 2, 3]


A 
create an empty array called `result`
iterate over the argued array one number at a time
  append the count of how many unique numbers the current number is larger then to `result`
return count


=end 
def smaller_numbers_than_current(numbers) 
  result = []
  numbers.each do |number|
    result << numbers.uniq.count {|num| number > num}
  end 
  p result
end 
  
  
p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]