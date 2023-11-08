=begin
Given a string of integers, return the number of odd-numbered substrings that can be formed.
For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.
solve("1341") = 7. See test cases for more examples.

Input: string
Output: integer
rules
  explicit requirements:
    the input is a string of all integers
    the returned integer represents the number of oddnumbers substrings as integer from the input
    substrings inlcude the entire string itself in the count
    
D
Input: string // '123'
output: integer // 4
intermediate: array substrings that the integer rep is odd 
['1, 123, 23, 3]

Algorithm
create an empty array called odd_numbers
iterate over a range of 0 upto the size of the argued string - 1
  the number passed each iteration will be represented by idx1
  iterate over a range of idx1 to the size of the argued string - 1
  create a substring each inner iteration by referencing an inclusive index range of idx1 to idx2
  from the argued string
  evaluate if the integer representation of the substring is odd 
  if true then add the substring to odd_numbers
return the size of odd_numbers
=end

def solve(str)
  odd_numbers = []
  (0...str.size).each do |idx1|
    (idx1...str.size).each do |idx2|
      odd_numbers << str[idx1..idx2] if str[idx1..idx2].to_i.odd?
    end 
  end 
  odd_numbers.size
end 
p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28
