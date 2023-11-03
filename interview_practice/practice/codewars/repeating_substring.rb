=begin
For a given nonempty string s find a minimum substring t and the maximum number k, 
such that the entire string s is equal to t repeated k times.

The input string consists of lowercase letters.

"ababab" ---> (t = "ab", k = 3)

"abcde" ---> (t = "abcde", k = 1)
because for this string, the minimum substring `t`
such that `s` is 'k' times 't', is 's' itself.


find_repeat_substring("ababab") == ["ab", 3]
find_repeat_substring("abcde") == ["abcde", 1]
find_repeat_substring("ceccec") == ["cec", 2]

input: string
Output: array with 2 elements, 1st is a substring of the input, the second is an integer
that represents how many times the substring must be repeated in order to equal the input string

Rules: 
  Explicit Requirements
    -the input string is made up of all lowercase letters
    -the output array must return a 2 element array
    the first element is a substring of the input string
    the second element is an integer that represents how many times the substring
    must be repeated to make the input string
    
Datastructure
input:string 'ceccec'
output: array ['cec', 2]
intermediate: ['c', 'ce', 'cec']

algorithm
iterate from 1 upto the size of the argued string, this will allows us to generate substrings and specify lengths
let the iteration number be reresented as `size`
reference the argued string at index 0 with a length of `size`
evaluate this substring by first finding the repeating number
  divide the length of the argued string by the length of the current substring 
  if the repeating number times the substring is equal to the argued string
  return the 2 element array where the first element is the current substring and the second 
  is the current repeating number

=end 
def find_repeat_substring(str)
  1.upto(str.size).each do |size|
    substring = str[0, size]
    repeating_size = str.size / substring.size
    return [substring, repeating_size] if (substring * repeating_size) == str
  end 
end 
  
p find_repeat_substring("ababab") == ["ab", 3]
p find_repeat_substring("abcde") == ["abcde", 1]
p find_repeat_substring("ceccec") == ["cec", 2]