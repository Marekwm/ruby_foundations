=begin
Complete the greatestProduct method so that it'll find the greatest product of
five consecutive digits in the given string of digits.

For example:
greatestProduct("123834539327238239583") // should return 3240
The input string always has more than five digits.

p greatest_product("123834539327238239583") == 3240
p greatest_product("395831238345393272382") == 3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0

input: string of numbers
output: integer
rules:
  explicit requirements 
    based on the string input find the largest product of five consecutive digits in the 
    argued string
    the input string will always have more then 5 digits or a length larger then 5
Datastructure
  input: string of digits '11211115'
  output: integer// product of 1*1*1*1*5 or 5
  intermediate: all the substrings that are 5 digits in length 
Algorithm
create an empty array named substrings 
iterate from 0 upto the length of the string minus 1
  let the iteration numbers be represented by idx1
  
  iterate again from idx1 upto the length of the string minus 1
    let the iteration numbers be represented by idx2
    
    reference portions of the argued string to create incrementing substrings on each iteration
    with an index range of idx1 to the inclusive number of idx2
    append this substring to substrings if the length of the substring is equal to 5
iterate over susbtring using comparison, find the max value 
  convert the current substring to an array and find the product of the integer representation of each digit with one 
  another
=end 

# def greatest_product(digits)
#   substrings = []
#   0.upto(digits.size - 1).each do |idx1|
#     idx1.upto(digits.size - 1).each do |idx2|
#     substrings << digits[idx1..idx2] if digits[idx1..idx2].size == 5
#     end 
#   end 
#   max_product_string = substrings.max_by do |substring|
#     substring.chars.reduce(1){|product, num|product * num.to_i}
#   end
#   max_product_string.chars.reduce(1){|product,n| product * n.to_i}
# end
  
# using the each_cons method i just found out about to iterate over each consecutive n element
def greatest_product(digits)
  digits.chars.each_cons(5).map{|subarray| subarray.map(&:to_i).reduce(:*)}.max
end 

p greatest_product("123834539327238239583") == 3240
p greatest_product("395831238345393272382") == 3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0