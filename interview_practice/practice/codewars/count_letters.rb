=begin
count the lowercase letters in a given string and return the letter count in a hash
with 'letter' as key and count as 'value'. The key must be 'symbol' instead of string
in Ruby and 'char' instead of string in Crystal.

Example:
p letterCount('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

Input: string
Output: hash

Rules:
  Explicit Requirements: 
  -count all the lowercase letters in a given string
  -return a hash with the symbol representation of the character as a key
    and the value is the count of that character in the string
  -the key value pairs are created by order of apearence
Datastructure: 
Input: string 'pogo'
Output: hash {p: 1, o:2, g: 1}
Intermediate: ['p', 'o', 'g', 'o']

Algorithm 
create a empty hash named char_count
convert the argued string to an array of characters 
iterate over the array of characters 
if the symbol representation of the current character is present in char_count
  add 1 to that keys value
if not 
  create a new key value pair with the symbol representation of the current character as the key 
  and 1 as the value
return char_count
=end 
def letter_count(str)
  str.chars.each_with_object(Hash.new(0)) do |char, count|
    count[char.to_sym] += 1
  end 
end 
  
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}
