=begin
Write a function that takes in a string of one or more words, and returns the same string, but with all five or more letter
words reversed (Just like the name of this Kata). Strings passed in will consist of only letters and spaces. Spaces will be
included only when more than one word is present.
Examples: spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw"

input:string
output:string
explicit requirements:
  -reverse the words that are 5 or more characters in length
  -then return the string 
  -
datastructures
input:string // 'triangles are the best'
output:string //'selgnairt are the best'
intermediate:array of words  //['triangles','are','the','best']

algorithm
convert the input string to array of words 
iterate over the array of words and perform transformation
  if the size of the current word is greater than or equal to 5
    reverse the word
  otherwise
    return the word
/ 
convert the array back to a string with white space in between each word 
=end
def spinWords(str)
  str.split.map do |word|
    if word.size >= 5
      word.reverse
    else 
      word
    end 
  end.join(' ')
end 
p spinWords("Hey fellow warriors") == "Hey wollef sroirraw"
p spinWords("This is a test") == "This is a test"
p spinWords("This is another test") == "This is rehtona test"
p spinWords('test') == 'test'