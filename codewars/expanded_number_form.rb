=begin 
Write Number in Expanded Form

You will be given a number and you will need to return it as a string in Expanded Form. For example:
expanded_form(12); # Should return '10 + 2'
expanded_form(42); # Should return '40 + 2'
expanded_form(70304); # Should return '70000 + 300 + 4'

NOTE: All numbers will be whole numbers greater than 0.


input:An integer
output:string representing the integer in Expanded form
explicit requirements:
  -return the expanded form of the integer as a string
  -
  -
datastructures
input: integer// 223
output: string //'200 + 20 + 3'
intermediate: // an array of the string representaions of the expanded numbers 
['200', '20', '3']

algorithm
create an empty array called arr
create an divisor and assign it to 10
create a loop that will continue until the argued number is less than zero
  create a varialbe named remainder and assign it to the remainder of the argued number divided by divisor
  unless the value of remainder is 0 add it to arr
  multiply the value of divisor by 10
  substract the remainder from the number
  //
reverse the array then convert the array to a string with a delimer of ' + ' and return this string
=end
def expanded_form(num)
  divisor = 10
  arr = []
  while num > 0
    remainder = num % divisor
    arr << remainder unless remainder == 0
    num -= remainder
    divisor *= 10
  end
    
  arr.reverse.join(' + ')
end

p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'