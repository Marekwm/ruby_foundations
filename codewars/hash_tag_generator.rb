=begin
The marketing team is spending way too much time typing in hashtags.
Let's help them with our own Hashtag Generator!
Here's the deal:
It must start with a hashtag (#).
All words must have their first letter capitalized.
If the final result is longer than 140 chars it must return false.
If the input or the result is an empty string it must return false.
Examples
" Hello there thanks for trying my Kata" => "#HelloThereThanksForTryingMyKata"
" Hello World " => "#HelloWorld"
"" => false

input:string
output:string
explicit requirements:
  -you are given a string as the methods argument
  -you are to return the string as a hashtag where the first character is # and all the other
  words are touching but are capitalized.
  
  -if the argued string is longer than 140 characters or empty then return false
datastructures
input: string //"Codewars Is Nice"
output:string //"#CodewarsIsNice"
intermediate: array of capitilized words //['Code', 'Wars', 'Is', 'Nice']

algorithm
return false if the size of the argued string is greater than 140 or empty
convert the argued string to an array of words 
iterate over the array of words and transform all the words to capitalized
convert the array back to a string without spaces and add a '#' infront
=end
def generateHashtag(str)
  str = str.split.map(&:capitalize).join
  (str.size >= 140 || str.empty?) ? false : '#' + str
end 

p generateHashtag("") == false
p generateHashtag(" " * 200) == false
p generateHashtag("Do We have A Hashtag") == "#DoWeHaveAHashtag"
p generateHashtag("Codewars") == "#Codewars"
p generateHashtag("Codewars Is Nice") == "#CodewarsIsNice"
p generateHashtag("Codewars is nice") == "#CodewarsIsNice"
p generateHashtag("code" + " " * 140 + "wars") == "#CodeWars"
p generateHashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat") == false
p generateHashtag("a" * 139) == "#A" + "a" * 138
p generateHashtag("a" * 140) == false
