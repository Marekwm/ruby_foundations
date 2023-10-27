=begin
Odd Lists
Write a method that returns an Array that contains every other element of an Array
that is passed in as an argument. The values in the returned list should be those
values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

Examples:

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]

input: array 
output: new array with other elements from input array

rules
  explicit requirements
    -return a new array with every other element from the argued array
      -the other elements are classified as the even idexed elements, 0, 2, 4, etc...
 
Datastructure
input: [2, 3, 4, 5, 6] array
output: [2, 4, 6] new array

Algorithm
create an emtpy array named `every_other_element`
iterate over the argued array passing it's elements and index to the block
  append the current element only if the index value is even
return `every_other_element`
=end
# def oddities(numbers)
#   every_other_element = []
#   numbers.each_with_index do |num, idx|
#     every_other_element << num if idx.even?
#   end 
#   every_other_element
# end 

# doing so with counter and each_with_object

# def oddities(numbers)
#   counter = 0
#   numbers.each_with_object([]) do |num, arr|
#     arr << num if counter.even?
#     counter += 1
#   end 
# end 


# p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# p oddities(['abc', 'def']) == ['abc']
# p oddities([123]) == [123]
# p oddities([]) == []
# p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]

# even elements (odd index)

def evens(numbers)
  counter = 0
  numbers.each_with_object([]) do |num, arr|
    arr << num if counter.odd?
    counter += 1
  end 
end 
p evens([1, 2, 3, 4, 5, 6])