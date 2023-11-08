=begin 
In this kata, you've to count lowercase letters in a given string and return the 
letter count in a hash with 'letter' as key and count as 'value'. 
The key must be 'symbol' instead of string in Ruby and 'char' instead of string in Crystal.

Example:

letterCount('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

Input: string
Output: hash

rules
  explicit requirements
    -the input string must be all lowercase letters
    -return a hash that contains the count of all the letters in the input string
      -setting each hash key as the symbol representation of the characters 
       the matching values to those keys as the count of how many times that character 
       appears in the input string
      -the hashes key value pairs are ordered alphabetically
  
Datastructure
Input: string // 'hello'
Output: hash // {e: 1, h: 1, l: 2, o: 1}
Intermediate: array // ['e', 'h', 'l', 'o']

Algorithm
create an empty hash named `char_count`
convert the argued string to an array of uniq and alphabetically sorted characters
iterate over this array 
  assign the symbol representation of the current character as a key to `char_count`
    save the count of how many times the current character appears in the argued string as the value 
    to that key
return `char_count`

=end 
def letterCount(str)
  str.chars.uniq.sort.each_with_object({}) do |char, char_count| 
    char_count[char.to_sym] = str.count(char)
  end 
end 


p letterCount('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}