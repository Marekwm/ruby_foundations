=begin
Given a string, return a new string that has transformed based on the input:
Change case of every character, ie. lower case to upper case, upper case to lower case.
Reverse the order of words from the input.
Note: You will have to handle multiple spaces, and leading/trailing spaces.
For example:
"Example Input" ==> "iNPUT eXAMPLE"
You may assume the input only contain English alphabet and spaces.

input: string
output:string
rules
  swap case of the words then swap the order of the words 

algorithm
convert the argued string to an array of words 
iterate over this new array
  swap the case of each words 
return the joined array in reverse order
=end
def string_transformer(str)
  str.swapcase.split(/\b/).reverse.join 
end 
 #the (/\b\) will split the complete words and will also put the space in between
  #in the hash
p string_transformer('Example string') == 'STRING eXAMPLE'