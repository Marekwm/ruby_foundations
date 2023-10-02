# What does the each method in the following program return after it is finished executing?
x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end
# The each method always returns the object it was called on so in this case the array 
#=> [1, 2, 3, 4, 5] 
