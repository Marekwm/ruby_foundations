=begin
Write a method that returns a list of all substrings of a string that are palindromic. 
That is, each substring must consist of the same sequence of characters forwards as it does backwards.
The return value should be arranged in the same sequence as the substrings appear in the string. 
Duplicate palindromes should be included multiple times.

You may (and should) use the substrings method you wrote in the previous exercise.

For the purposes of this exercise, you should consider all characters and pay attention to case;
that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are.
In addition, assume that single characters are not palindromes.

palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

P 

Input:
Output: 
Rules:
  Explicit Requirements:
    -
  Implicit Requirements:
    -
E 

D 
Input:
Output:
Intermidiate:
Helper:

A 


=end 

def leading_substrings(string)
  result = []
  1.upto(string.size) do |length|
    result << string.slice(0, length)
  end 
  result
end 

def substrings(string)
  result = []
  (0...string.size).each do |starting_idx|
    substring = string[starting_idx..-1]
    result.concat(leading_substrings(substring))
  end 
  result
end 

def palindromes(string)
  palindrome_substrings = []
  substrings = substrings(string)
  substrings.each do |substr|
    if substr.reverse == substr && substr.size > 1
      palindrome_substrings << substr
    end 
  end 
  palindrome_substrings
end 

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]