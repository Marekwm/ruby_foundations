=begin
Assume "#" is like a backspace in string. This means that string "a#bc#d" actually is "bd"
Your task is to process a string with "#" symbols.
Examples
"abc#d##c" ==> "ac"
"abc##d######" ==> ""
"#######" ==> ""
"" ==> ""

input: string 
output: string
rules 
  explicit requirements 
    the string contains '#' that in this problem represent backspaces 
    when a back space is present we need to remove the previous character
    
    return the string with all the backspaces in effect
    
datastructure
  input: string // 'abc##bc'
  output: string // 'abc'
  intermediate: iterate over the aruged string converted to an array of characters
algorithm
  create an empy string named result
  iterate over the argued string converted to an array of characters
  if the current character is a '#'
    delete that last element of result
  otherwise
    add the current character to result
=end
def back_space(str)
  str.chars.each_with_object(''){|char,string| char == '#' ? string.chop! : string << char}
end 

p back_space("abc#d##c") == "ac"
p back_space("abc##d######") == ""
p back_space("#######") == ""
p back_space("") == ""


