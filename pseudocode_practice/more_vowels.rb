=begin
given two strings, return 1 if the first string has more vowels, and -1 otherwise

more_vowels('abode', 'alpha') == 1
more_vowels('abode', 'alphabet') == -1
more_vowels('abode', 'abodes') == -1
more_vowels('abode', 'abalone') == -1
more_vowels('', '') == -1

P 
INPUT: 2 strings, emtpty strings
OUTPUT: integer 1 or -1
RULES: 
-EXPLICIT: 
  -Given 2 strings as inputs, return the integer 1 if the first string has more vowels then the second
    -otherwise return -1
-IMPLICIT
  -If inputs are emtpy strings return -1

E
further expand and clarify understanding about what you're being asked to do using a test case

more_vowels('abode', 'alphabet') == -1

The method is passed 2 strings as arguments. The goal of this method is to compare the total
vowels (a e i o u) is the two strings. If the first string has more vowels then the second return the 
integer 1, in any other case based on the examples provided return the integer -1

D
data structure of vowels: ['a','e','i','o','u']

A

- helper method called 'vowel_count' (input is a string, output is an integer corresponding to how many vowels are in the string)
  - iterate over the string
    - count how many of its characters are included in our vowels array
    -return the vowels count
  - compare the return values of each argument when argued to vowel_count. If the first return value is greater, return 1; otherwise, return -1


=end

VOWELS = %(a e i o u)

def more_vowels(str1, str2)
  vowel_count(str1) > vowel_count(str2) ? 1 : -1
end 

def vowel_count(str)
  str.chars.count{|chr| VOWELS.include?(chr)}
end

p more_vowels('abode', 'alpha') == 1
p more_vowels('abode', 'abodes') == -1
p more_vowels('abode', 'alphabet') == -1
p more_vowels('abode', 'abalone') == -1
p more_vowels('', '') == -1