=begin
Write a method that takes an Array of Integers between 0 and 19, and returns an Array 
of those Integers sorted based on the English words for each number:

zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen,
fifteen, sixteen, seventeen, eighteen, nineteen

ex:
alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

P 
Input: arrray of integers 0 to 19
Output: the same array that has been sorted based on the english spelling of them
Rules:
  -Explicit Requirements
    -The array of integer must be sorted based on the english spelling of them
      -0 is 'zero' in english and would come after 2 since it starts with a 't'
    -return the same array but integers themselves are sorted
D
Input: [0,1,2,3]
Output: [1, 3, 2, 0]
Helper: an array of the english spelling of each integer 0-19
%w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen
fifteen sixteen seventeen eighteen nineteen)
The words are organized according the integers and also can represent index placements since
'zero' is at index 0 and 'seven' is at index 7

A 
create an array named `alphabetic_numbers` that will contain the english spelling words of the integers from 0-19
sort the input array using iteration
  -the sorting will evaluate the return value of `alphabetic_numbers` at index current number of the input array duing iteration
return the sorted array

=end 
ALPHABETIC_NUMBERS = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen
fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort_by! {|number| ALPHABETIC_NUMBERS[number]}
end 
  
p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]