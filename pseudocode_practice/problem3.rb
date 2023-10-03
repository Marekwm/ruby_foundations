# a method that takes an array of integers, and returns a new array with every other element from the original array,
# starting with the first element. For instance:
# even_index_selection([1,4,7,2,5]) # => [1,7,5]
=begin
------casual-------
# given an array of integers called numbers
iterate over the collection
  if the current index of the iteration is even then select the current element
save the selected numbers to `every_other`
return `every_other`
--------------------

----FORMAL--------
START
# given an array of integers called `numbers`
SET counter = 0
SET every_other = empty array

WHILE counter <= length of numbers
  IF counter is even 
    APPEND numbers[counter] to every_other
  SET counter = counter + 1

RETURN every_other
END

-----------------
=end 
# -----code-------
def even_index_selection(numbers)
  every_other = []
  numbers.each_with_index {|num, idx| every_other << num if idx.even?}
  every_other
end 
p even_index_selection([1,4,7,2,5])