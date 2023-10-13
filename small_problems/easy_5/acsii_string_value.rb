=begin 
problem

Write a method that determines and returns the ASCII string value of a string that is passed in as an argument.
The ASCII string value is the sum of the ASCII values of every character in the string. 
(You may use String#ord to determine the ASCII value of a character.)

ex:
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

P 
Input: string
Output: ASCII string value (sum of ASCII values for every *character* in the string)
Rules:
  -Explicit Requirements
    -The input is alway a string 
    -return the sum of ASCII values for every *character* in the string
    -Use the String#ord method to determine the ASCII value of each character
  -Implicit Requirements
    -each character does not include spaces, make sure to get rid of all spaces within the input string
    -if the input string is empty return 0
    
  
D
- What data structures could we use to solve this problem?
We need to variable to keep a tally of all the ASCII values
We also need to store each character of the input into an array in order to iterate
ex: 'hey' => ['h', 'e', 'y']
- What does our data look like when we get it? (input)
'hey'
- What does our data look like when we return it? (output?)
some integer 
- What does our data need to look like in the intermediate steps?
['h', 'e', 'y']


A 
create a variable named `sum` and asign it  to 0
delete all spaces from the input string
convert the input string into an array to store each character by itself
iterate over the array one character at a time
  during iteration find the ACSII value of the character and add it to sum
retun the value of sum once iterations are complete

=end 

def ascii_value(string)
  sum = 0
  string.delete(' ') #just a precaution, it works without it 
  string.chars.each {|char| sum += char.ord}
  sum
end 

# def other_way(string)
#   string.chars.reduce(0) {|sum, char| sum + char.ord}
# end 

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0