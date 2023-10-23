=begin
Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.
ex:
p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

P 
Input: array of strings
Output: same array of string but with vowels removed 
Rules:
  Explicit Requirements: 
    -remove all vowels from the input array of strings
    -return the same array 
  Implicit Requirements:
    -all vowels meaning it's not case sensitive 
      -e and E must be removed not just e
    -If the entire string object within the array contains only vowels return an empty string
D 
Input: ['aeib', 'dog', 'cat']
Output: ['b', 'dg', 'ct']
Helper: 'aeiouAEIOU'

A
iterate over each of the string object of the array input
  -iterate over each character of the current string object by performing selection
    -if the current character is not a vowel
      -keep the character 
    -if the current character is a vowel
      -delete the character
    -/
  -/
return the mutated array of strings
=end 
VOWELS = 'aeiouAEIOU'

def remove_vowels(arr)
  arr.map { |string| p string.delete(VOWELS)}
end 
p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']