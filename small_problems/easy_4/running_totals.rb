=begin
Write a method that takes an Array of numbers, and returns an Array with the same number of elements, 
and each element has the running total from the original Array.

ex.
p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

P 
Input: array of integers or empty array
Ouput: new empty array, new array each element has the running total from the original Array
Rules:
-Explicit Requirements
  -return a new array
  -for the new array each element has the running total from the original Array
  -element 1 stays the same
  -element 2 is the sum of 1 and 2
  -element 3 is the sum of 2 and 3
  -etc
-Implicit Requirments
  -if input is empty return an empty array.
  -If the input has one element, return a new array with that element
  
D 
 What data structures could we use to solve this problem?
we will use a new array to store the values 
- What does our data look like when we get it? (input)
input: [2, 5, 13]
- What does our data look like when we return it? (output?)
output: [2, 7, 20]

A
We need to keep a running to of the sum for each element, in order to do this
create a variable `sum` and asign it to 0
create an empty array named `new_arr`
iterate over the array and append each value the array to the current value of sum
    for the first iteration append sum + the current value of the array to `new_arr`
    do this for each iteration
return `new_arr`

Im still not sure how to explain how the map method in a non language specific manner 
maybe say perform transformation and return a new array after the iteration
    during transformation 
    assign the current element to its own value + sum 
this new array will be the returned after transformation

=end 

# def running_total(arr) 
#   sum = 0
#   arr.map {|num| sum += num}
# end 


# def running_total(arr)
#   sum = 0
#   arr.each_with_object([]) do |num, arr|
#     arr << sum += num
#   end
# end 

def running_total(arr) 
  total = 0
  arr.inject([]){|sum, num| sum << total += num} 
end 
p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []