=begin
Your goal is to write the group_and_count method, which should receive and array
as unique parameter and return a hash. Empty or nil input must return nil instead of a hash.
This hash returned must contain as keys the unique values of the array, and as values the counting of each value.

Example usage:

input = [1,1,2,2,2,3]

group_and_count(input)# == {1=>2, 2=>3, 3=>1}

The following methods were disabled:

Array#count
Array#length

Input:array
Output:hash
rules
  explicit requirements
    you cannot use the count and size method 
    return a hash where the key is represented as a element from the array (integer)
    the value of the integer is the amount of times that integer is in the input array
Datastructure
input:array // [1,0,1,2,2]
output:hash // {1=>2, 0=>1, 2=>2}


Algorithm
create a helper method called count_elements, takes the array and current number 
  create a variable called count = 0
  iterate over the argued array 
    add 1 to count if the argued number is equal to the argued array
  return count
create an empty hash named results
iterate over each uniq element in the argued array 
  assign the current integer as a key to results and it's value will be the 
  return value of the helper method invocation 
return results 
  
=end 
def count_element(arr, num)
  count = 0
  arr.each {|int| count += 1 if int == num}
  count
end 

def group_and_count(arr)
  return nil if arr.nil? || arr.empty?
  arr.each_with_object({}) do |num, results|
    results[num] = count_element(arr,num)
  end 
end 
p group_and_count([0,1,1,0]) =={0=>2, 1=>2}
