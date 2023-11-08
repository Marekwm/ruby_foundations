=begin
Longest vowel chain
The vowel substrings in the word codewarriors are o,e,a,io. The longest of these has a length of 2. Given a lowercase
string that has alphabetic characters only and no spaces, return the length of the longest vowel substring. Vowels are
any of aeiou.

Input: string
Output: integer
Rules:
  Explicit requirements:
    -given a string of only lowercase letter
    -return the size of the largest substring within the input string that only contains vowels 
    (aeiou)
Datastructure
  Input: string // "suoidea"
  Output: integer // 3
  Intermediate: finding substrings that are larger then 1 and only contain vowels 
  containing them in an array 
  ['uo', 'oi', 'uoi', 'ea']
  helper: array of each vowel
  
algorithm
create an empty array called substrings
iterate from 0 upto the size of the string - 1 
  let the number of iterations be represented by idx1
  iterate from idx1 upto the size of the string - 1
    let the number of iterations be represented by idx2
    create substrings from the argued strings by refrencing the indeces from the inclusive 
    range of idx1 to idx2
    evaluate if all the characters in the substring are vowels
    if so append the substring to substrings 
iterate over substrings and find the largest substring using comparison of max values, return the size of the returned
substring
=end

def solve(str)
  vowels = %w(a e i o u)
  substrings = []
  0.upto(str.size - 1).each do |idx1|
    idx1.upto(str.size - 1).each do |idx2|
      if str[idx1..idx2].chars.all? {|char| vowels.include?(char)}
        substrings << str[idx1..idx2]
      end 
    end 
  end
  substrings.max_by{|substring| substring.size}.size
end 
p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8
