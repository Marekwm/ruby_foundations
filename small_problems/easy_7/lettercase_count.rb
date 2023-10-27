=begin
Write a method that takes a string, and then returns a hash that contains 3 entries: 
one represents the number of characters in the string that are lowercase letters,
one represents the number of characters that are uppercase letters, 
and one represents the number of characters that are neither.
P 

Input:string
Output: hash
Rules:
  Explicit Requirements:
    -the hash will be returned with 3 key value pairs
    -the first will represent the count of lowercase letters in the string
    -the second will represent the count of uppercase letters in the string
    -the third will represent any other characters such as spaces, numbers or any other
    non-alphabetic characters.
  Implicit Requirements:
    -if the input string is empty return a the hash with all key values pairs 
    whose values are all 0
    -the returned hash key values pairs are ordered specifically with lowercase first
      uppercase in the middle and neither at the end
E 
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

D 
Input:sting '12a Bc3'
Output:hash { lowercase: 2, uppercase: 1, neither: 4 }
2 lowercase 'ac', 1 uppercase: 'B', 4 neither: '12 3' space included
Intermidiate: ['1', '2', 'a', ' ', 'B', 'c', '3']
Helper:2 arrays of alphabet lowercase letters and uppercase

A 
create a hash named `results` with default values of 0 and keys mentioned above
convert the input string to an array of characters
iterate over the array of characters 
    -if the current character is in the array of lowercase letters
      -add 1 to the lowercase keys value of `results`
    -if the current character is in the array of upperercase letters
      -add 1 to the uppercase keys value of `results`
-otherwise add 1 to the neither keys value of `results`
return `results`
=end 

LOWERCASE = ('a'..'z').to_a 
UPPERCASE = ('A'..'Z').to_a

def letter_case_count(string)
  result = { lowercase: 0, uppercase: 0, neither: 0 }
  
  string.chars.each do |char|
    if LOWERCASE.include?(char)
      result[:lowercase] += 1
    elsif UPPERCASE.include?(char)
      result[:uppercase] += 1
    else 
      result[:neither] += 1
    end
  end
  result
end 
p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }