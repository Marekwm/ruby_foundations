=begin
Given a string of integers, return the number of odd-numbered substrings that can be formed.

For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.

solve("1341") = 7.

p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28

Input: string of numbers 
Output: integer 

Rules:
  Explicit requirements:
    -input is a string of numbers 
    -return an integer that represent the ammount of odd-numbered substrings that can be 
    made from the input string
    -odd numbered meaning the integer representation of the string 
    -the substring are linear and derived by keeping the string order intact
Datastructure
  input: string ; '123'
  output: integer: 4
  intermediate: [('1'), '12', ('123'), ('23'), ('3')]
Algorithm
create an empty array called substrings
  iterate from 0 to the length of the argued string - 1
    let the iteration number be represented by idx1
    iterate again within the first iteration from idx1 to the size of the argued string - 1
    let the iteration number by represented by idx2
    create a substring by referencing an index range of the argued string
    this range will be from idx1 to idx2 inclusive
   
    evaluate the integer representation of the substring
    if the integer is odd 
      append the substring to substrings 
    
  return the size of the substrings array
=end 

def solve(str)
  substrings = []
  0.upto(str.size - 1).each do |idx1|
    idx1.upto(str.size - 1).each do |idx2|
      if str[idx1..idx2].to_i.odd?
        substrings << str[idx1..idx2]
      end 
    end 
  end 
  substrings.size
end 

p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28