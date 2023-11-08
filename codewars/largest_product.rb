=begin
Complete the greatestProduct method so that it'll find the greatest product of five consecutive digits in the given string of
digits.
For example:
greatestProduct("123834539327238239583") // should return 3240
The input string always has more than five digits.

input: string of digits 
output: integer
rules:
  explicit requirements 
    -find the largest product of five consecutive digits in the given string
    -return the product as an integer
alogrithm 
create an empty array called products
convert the argued string to an array iterate over each consecutive 5 elements
  convert the elements of the subarray to integers and append the product of them to products
  
return the max value in products 
=end
# def greatest_product(digits)
#   products = []
#   digits.chars.each_cons(5) do |subarray|
#     products << (subarray.map(&:to_i).reduce(1){|product, num| product * num})
#   end 
#   products.max
# end 

# refactored

def greatest_product(digits)
  digits.chars.each_cons(5).map {|subarray| subarray.map(&:to_i).reduce(:*)}.max
end 
p greatest_product("123834539327238239583") == 3240
p greatest_product("395831238345393272382") == 3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0
