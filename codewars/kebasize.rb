=begin
Modify the kebabize function so that it converts a camel case string into a kebab case.
kebabize('camelsHaveThreeHumps') // camels-have-three-humps
kebabize('camelsHave3Humps') // camels-have-humps
Notes:
the returned string should only contain lowercase letters

input:string
output:new string
explicit requirements:
  -the given string contains alphabetic characters and others 
  -the marker for adding a '-' is a capital letter
  -return a new string with '-' in between when specified and all lowercase letters
datastructures
input: string//'camelsHave3Humps' 
output: string//camels-have-humps
intermediate: //['c','a','m','e','l','s','-h']
where if the current character is capitalized downcase it and prepend a '-'
helper:

algorithm
delete all non-alphabetical characters
convert the new_string to an array of characters and iterate over it using transformation
  if the character is capitalized 
    convert it to lowercase and prepend a '-'
  otherwise return the current character
join the array back to a string 
return in
=end
def kebabize(str)
  str.delete('^A-Za-z').chars.map do |char|
    if char.upcase == char
      char.downcase.prepend('-')
    else
      char
    end
  end.join
end 
p kebabize('myCamelCasedString') == 'my-camel-cased-string'
p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'