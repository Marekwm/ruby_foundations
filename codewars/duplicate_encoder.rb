=begin
The goal of this exercise is to convert a string to a new string where each character in the new string is "(" if that
character appears only once in the original string, or ")" if that character appears more than once in the original string.
Ignore capitalization when determining if a character is a duplicate.
Examples
"din" => "((("
"recede" => "()()()"
"Success" => ")())())"
"(( @" => "))(("

input: string
output: string
rules
  explicit requirements:
    convert the argued string to a new strings where each character in the string is swapped with '('
    if the character is unique to the string and ')' if the character appears more then once
  
datastructure
create an empty hash named char_count
iterate over the unique elements of the argued strings
  make the current character a key in char_count with the value as the amount of times the current 
  character is in the argued string
convert the argued string to an array of character 
iterate over this new array and perform transformation
  if the value of the character key reference of char_count is == 1 
    return '('
  otherwise 
    return ')'
join the array to a string without spaces and return it
=end
def duplicate_encode(str)
  str.downcase.chars.map do |char| 
    str.downcase.count(char) == 1 ? '(' : ')'
  end.join
end 

p duplicate_encode("din") == "((("
p duplicate_encode("recede") == "()()()"
p duplicate_encode("Success") == ")())())"
p duplicate_encode("(( @") == "))(("