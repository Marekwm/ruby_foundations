=begin
If we list all the natural numbers below 10 that are multiples of 3 or 5,
we get 3, 5, 6 and 9. The sum of these multiples is 23.

Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.

Additionally, if the number is negative, return 0.

Note: If the number is a multiple of both 3 and 5, only count it once.


p solution(10) == 23
p solution(20) == 78
p solution(200) == 9168
p solution(-2) == 0


input: integer
output: sum of all unique mulitples of 3 or 5 up to the input integer
rules
  explicit requirements
    if the integer is negative return 0
    get all the uniqe mutliples of 3 or 5 up to the input integer
    the input integer if it's a mulitple do not inlcude it
    get the sum of all the unique multiples 
    the range of numbers will go from 1 upto the input number
datastructure
  input: integer/ 6
  output: 5
  intermediate: create a range non-inclusive range from 1 to the input integer
  
Algorithm
create a empty array called multiples
first evaluate if the input integer is less than 0 if no 
  return false 
otherwise
  iterate from 1 upto the argued integer - 1
    if the current number of iteration is a multiple of 3 or 5 
      add the number to the multiples array
  select all the unique values from  multiples and return the sum
=end 
def solution(number)
  multiples = []
  if number < 0
    return 0 
  else 
    1.upto(number - 1).each do |num|
      multiples << num if num % 3 == 0 || num % 5 == 0
    end 
  end 
  multiples.uniq.sum
end 
        
      
        

p solution(10) == 23
p solution(20) == 78
p solution(200) == 9168
p solution(-2) == 0
    