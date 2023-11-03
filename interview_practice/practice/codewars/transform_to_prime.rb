=begin
Task :
Given a List [] of n integers , find minimum number to be inserted in a list,
so that sum of all elements of list should equal the closest prime number .

Notes
List size is at least 2 .

List's numbers will only positives (n > 0) .

Repetition of numbers in the list could occur .

The newer list's sum should equal the closest prime number .

Input >> Output Examples
1- minimumNumber ([3,1,2]) ==> return (1)
Explanation:
Since , the sum of the list's elements equal to (6) , 
the minimum number to be inserted to transform the sum to prime number is (1) ,
which will make the sum of the List equal the closest prime number (7) .

2-  minimumNumber ({2,12,8,4,6}) ==> return (5)
Explanation:
Since , the sum of the list's elements equal to (32) ,
the minimum number to be inserted to transform the sum to prime number is (5) ,
which will make the sum of the List equal the closest prime number (37) .

3- minimumNumber ({50,39,49,6,17,28}) ==> return (2)
Explanation:
Since , the sum of the list's elements equal to (189) ,
the minimum number to be inserted to transform the sum to prime number is (2) ,
which will make the sum of the List equal the closest prime number (191) .

p minimum_number([3,1,2]) == 1
p minimum_number([5,2]) == 0
p minimum_number([1,1,1]) == 0
p minimum_number([2,12,8,4,6]) == 5
p minimum_number([50,39,49,6,17,28]) == 2

Input: array of integers
Output:integer
Rules:
  Explicit Requirements:
    -find the sum of the integer, return the minimum number needed to be added to the sum for the sum to be a prime number
    -if the sum is already a prime number return 0

Datastructures
Input:  array// [3,2,1]
Output:  integer// 1
Intermediate: integers //sum of the array 6, the next prime number 7, the difference is 1

Algorithms
get the sum of the argued array and assign it to sum and prime_num
if the sum is a prime number return 0
otherwise create a loop that will iterate until the prime_num is a prime number
  add 1 to the value prime_num
the return prime_num - sum
=end
require 'prime'
def minimum_number(arr)
  sum = arr.sum
  prime_num = sum
  until prime_num.prime?
    prime_num += 1
  end 
  prime_num - sum
end 

# def minimum_number(numbers)
#   Prime.find { |prime| prime >= numbers.sum } - numbers.sum
# end

p minimum_number([3,1,2]) == 1
p minimum_number([5,2]) == 0
p minimum_number([1,1,1]) == 0
p minimum_number([2,12,8,4,6]) == 5
p minimum_number([50,39,49,6,17,28]) == 2