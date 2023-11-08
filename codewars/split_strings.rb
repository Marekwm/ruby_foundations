=begin
Complete the solution so that it splits the string into pairs of two characters. If the string contains an odd number of
characters then it should replace the missing second character of the final pair with an underscore ('_').

input:string
output:array 
explicit requirements:
  -return an array of 2 characters strings
  -if the string is odd in length return the last digit with a '_'
datastructures
input: string //'abc'
output: array //['ab','c_']
intermediate: array of all the string characters ['a','b','c']
algorithm
create an empty array named results 
convert the argued string to an array of characters 
if the array is odd in length 
  add '_' to the last element
  
  until the end of the array 
  remove the first 2 elements from the array add them together 
  append them to results
return results 
=end

def solution(str)
  results = []
  arr = str.chars
  arr[-1] += '_'  if arr.size.odd?
  arr.each_slice(2) do |slice|
   p results << slice.join
  end
  results
end 
p solution('abc') == ['ab', 'c_']
p solution('abcdef') == ['ab', 'cd', 'ef']
p solution("abcdef") == ["ab", "cd", "ef"]
p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
p solution("") == []