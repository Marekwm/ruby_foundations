=begin
Find the longest substring in alphabetical order.
Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt".
There are tests with strings up to 10 000 characters long so your code will need to be efficient.
The input will only consist of lowercase characters and will be at least one letter long.
If there are multiple solutions, return the one that appears first.

input:string
output: largest substring that is in alphabetic order
explicit requirements:
  -find the largest substring from the argued string 
datastructures
input:string //'abslmno' 
output: substring // 'lmno'
intermediate: substrings // all the alphabetical order substrings greater then 1 character in lenght
algorithm
create an emtpy array named alphabetical_substrings 
iterate from 0 to the length of the string minus 1
  let the number of the current iteration be reprensented by idx1
  iterate from idx1 upto the length of the string minus 1
    let the number of the current iteration be represented by idx2
      create substrings from the argued string by referencing an inclusive index of idx1 to idx2
      if the substring is equal to itself when sorted 
        append the substring to alphabetical_substrings 
    //
  //
return the size of the largest substrings from alphabetical_substrings
  perform comparison over alphabetical_substrings by returning the max value returned by the block
    compare the sizes of the substrings 
  return the size of the returned substring

  
=end

def longest(str)
  alphabetical_substrings = []
  0.upto(str.size - 1).each do |idx1|
    idx1.upto(str.size - 1).each do |idx2|
      substring = str[idx1..idx2]
      if substring == substring.chars.sort.join
        alphabetical_substrings << substring
      end 
    end 
  end 
  alphabetical_substrings.max_by{|string| string.size}
end 
p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') == 'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') =='fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'