=begin
For a given nonempty string s find a minimum substring t and the maximum number k, such that the entire string s is
equal to t repeated k times. The input string consists of lowercase latin letters.


Example #1:
for string
s = "ababab"
the answer is
["ab", 3]
Example #2:
for string
s = "abcde"
the answer is
because for this string "abcde" the minimum substring t, such that s is t repeated k times, is itself.

input:string
output:a 2 element array where the first is a minimum substrings, and the second is the amount of times to multiply the
subtrings to make the input string
explicit requirements:
  -find the smallest substrings that it's length can envenly divide the length of the input string
  -the substring must be able to be multiplied by the quotient from the even division and make the argued string
  -return the 2 element array with the substring and the quotient
datastructures
input: 'abab'
output: array//['ab',2] => 'ab' * 2 == 'abab'
intermediate: array of all subarrays with the valid substrings and lengths//

algorithm
create an empty array called subarrays 
iterate from 0 upto the size of the argued string - 1
  let the number of the iteration be represented by the variable idx1
  iterate from idx1 to the size of the argued string - 1
    let the number of the iteration be represented by the variable idx2
    create a substring from the argued string by referencing an inclusive index from idx1 to idx2
    divide the argued string by the length of the current substring 
    if the substring times the quotient is equal to the argued string 
      add the 2 element array with the substring and the quotient to subarrays
    
find the subarrays that has the smallest first element
=end

def f(str)
  subarrays = []
  0.upto(str.size - 1).each do |idx1|
    idx1.upto(str.size - 1).each do |idx2|
      length = str.size / str[idx1..idx2].size
      if str[idx1..idx2] * length == str
        subarrays << [str[idx1..idx2], length]
      end 
    end 
  end 
  subarrays.min_by{|subarr| subarr.first.size}
end 
p f("ababab") == ["ab", 3]
p f("abcde") == ["abcde", 1]
