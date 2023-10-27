=begin
Write a method that takes a string as an argument and returns a new string in 
which every uppercase letter is replaced by its lowercase version, and every 
lowercase letter by its uppercase version. All other characters should be unchanged.

You may not use String#swapcase; write your own version of this method.

P 
Input:string
Output: new string
Rules:
  Explicit Requirements:
    -return a new string with all characters cases are swapped
    -if the character is lowercase now make it uppercae
    -if the character is uppercase now make it lowercase
    -you cannot use the String#swapcase method
    
E 
swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
D 
Input:'CamelCase'
Output: 'cAMELcASE'
Intermidiate:['C', 'a', 'm', 'e', 'l', 'C', 'a', 's', 'e']
Helper: 2 arrays of the alphabet one uppercase and one lowercase

A 
convert the argued string to an array of character
iterate over the array character
  if the current character is lowercase 
    -convert it to uppercase
  if the current character is uppercase
    -convert it to lowercase
convert this new array of modified character back to a string and then return it

=end 
LOWERCASE = ('a'..'z').to_a 
UPPERCASE = ('A'..'Z').to_a

def swapcase(string)
  string.chars.map do |char|
    if LOWERCASE.include?(char)
      char.upcase
    elsif UPPERCASE.include?(char)
      char.downcase
    else
      char
    end
  end.join()
end 
p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'