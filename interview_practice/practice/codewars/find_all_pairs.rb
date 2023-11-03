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

p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0

input: array of integers(one or more), emtpy array
output: integer
rules:
  explicit requirements:
    the input is an array of one or more integers or an empty array
    if the array is empty return 0
    the goal of this method is to count all the pairs in the argued array and return that integer
    the return value is the integer that represents the amount of pairs in the argued array
    each pair can only be counted once when used, they cannot be used again for another pair count

Datastructure
Input: array [1, 2, 5, 6, 5, 2]
Output: integer 2

algorithm 
create a variable called count and assign it to 0
create an array named solo_nums that will contain all the uniq elements from the argued array
iterate over solo_nums one integer at a time
count how many times the current element is in the argued array, add that number /2 to count
//
return count

=end 
def pairs(arr)
  count = 0
  solo_nums = arr.uniq
  solo_nums.each do |num|
    count += (arr.count(num)) / 2
  end 
  count
end 


#condensed method  
# def pairs(arr)
#   arr.uniq.inject(0) { |sum, n| sum + arr.count(n) / 2 }
# end
p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0
