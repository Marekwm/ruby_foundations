=begin
Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order.
Do not modify the original list.

ex:

reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
list.object_id != new_list.object_id  # => true
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                 # => true

P 
Input:array
Output: new array with the elements of the original list in reverse order
Rules:
  Explicit Requirements:
    -return a new array without modifying the input array
    -return new array with the elements of the original list in reverse order


D 
Input:[1, 3, 2]  
Output:[2, 3, 1]

A 
Iterate through the argued array
  -add each element the front of a new array(prepend) or unshift
return the new array

=end 
def reverse(list)
  new_list = []
  list.each do |element|
    new_list.unshift(element)
  end 
  new_list
end 


def reverse(list)
  list.each_with_object([]) do |element, result|
    result.prepend(element)
  end 
end 

def reverse(list)
  result = []
  list.reverse_each {|element| result << element}
  result
end 
p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1] 