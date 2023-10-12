=begin
Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number,
and then computes the sum of those multiples. For instance, if the supplied number is 20,
the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

You may assume that the number passed in is an integer greater than 1.

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

Input: integer greater than 1
Output: sum of all unique multiples of 3 and 5 from 1 to input 
Rules:
-Explicit Requirements
  -the range of the numbers starts from 1 upto the input
  -this range of numbers is what will be evaluated for multiples of 3 or 5
  
-Implicit Requirements
  -The sum of the multiples must only include unique elements. ex
    -15 is a multiple of 3 and 5 but will only be inluded once in the sum
  -The input number itself is part of the sum if it's a multiple of 3 or 5
  
D 
 What data structures could we use to solve this problem?
 We could add all the multiples into an array like [3, 5, 6, 9, 10]
- What does our data look like when we get it? (input)
ex: 12
    - What does our data look like when we return it? (output?)
output: 45
    - What does our data need to look like in the intermediate steps?
[3, 5, 6, 9, 10, 12]


A 
create an empty array called `multiples`
interate over every number from 1 upto the input
  pass each number to the helper method to evaluate if it's a multiple of 3 or 5
  helper method-mutlitple of 3 or 5 ---
    evaluate if the number is a multiple of 3 or 5
    return true if yes 
    false if no
    
  if the helper method returns true 
    add the number to `multiples`
    
-once all the numbers have been iterated over 
  -calculate the sum of all the unique elements within `multiples` and return that number
    
=end 
def multiple_of(num)
  num % 3 == 0 || num % 5 == 0
end 

def multisum(num)
  multiples = []
  1.upto(num) do |value|
    multiples << value if multiple_of(value)
  end 
  multiples.uniq.reduce(:+) #in this case uniq is not needed but it's a good precaution
end 
      
    
p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168