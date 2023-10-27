=begin
Write a method that takes a String as an argument, and returns a new String that
contains the original value using a staggered capitalization scheme in which every
other character is capitalized, and the remaining characters are lowercase. 
Characters that are not letters should not be changed, but count as characters
when switching between upper and lowercase.
  
p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

P 
Input:string
Output: new string
Rules:
  Explicit Requirements:
    -every character in the string counts as part of the staggered capitalization scheme 
    -this scheme will utilize the placement of the characters in the string
    -all other non-alphabetic are counted however left the same
  Implicit Requirements:
    -the characters that are capitilized will start at index 0 and continue at 2,4,etc
    -if the string is empty return an empty string
E 

D 
Input: 'ALL_CAPS'
Output:'AlL_CaPs'
Intermidiate:['A', 'l', 'L', '_', 'C', 'A', 'P', 'S']

A 
create an empty string named `result`
convert the input string to an array of characters, where indivual characters will be it's own object in the array
iterate over the new array's elements with it's index
  if the index is 0 or even 
    make the current character uppercase and append it to result
  if the index is odd 
    make the current character lowercase append it to result
return result
=end
def staggered_case(string)
  result = ''
  string.chars.each_with_index do |char, idx|
    if idx.even?
      result << char.upcase
    else 
      result << char.downcase
    end 
  end 
  result
end
p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
