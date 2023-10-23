=begin
Write a method that takes an Array as an argument, and reverses its elements in place; that is, 
mutate the Array passed into this method. The return value should be the same Array object.

ex:
list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true

P 
Input: array ;empty array
Output: the same array but reversed 
Rules:
  Explicit Requirements:
    -reverse the elements of the input array in place(index reasignment)
    -do not use the reverse method
    -return an empty array if the input is empty
    -when the arrays length is odd the middle element stays in place
    
E 
[1, 2 ,3] => [3, 2, 1]
['1', '2'] => ['2', '1']
D 
Input:[1, 2 ,3]
Output:[3, 2, 1]

A 
create a variable named left_side_index and initialize it to 0
create a variable named right_side_index and initialize it to -1
  -these 2 variables represent the outer edges of the array indices
while `left_side_index < half of the size of the array
  reasing the value at index left_side_index to the value at index right_side_index and vice versa
  add 1 to left_side_index
  subtract 1 from right_side_index
  -/
return the array

=end 

def reverse!(list)
  left_side_index = 0
  right_side_index = -1
  
  while left_side_index < list.size / 2
    list[left_side_index], list[right_side_index] = list[right_side_index], list[left_side_index]
    left_side_index += 1
    right_side_index -= 1
  end 
  list
end 

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true
