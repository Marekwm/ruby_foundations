=begin
# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.

# Examples:

p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
                'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case(
  'It is a long established fact that a reader will be distracted') ==
  'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case(
  'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
  'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'

# The tests above should print "true".

=begin
P 
Input:string
Output: new string
Rules:
  Explicit Requirements:
    -return a new string that is altered as described below
      -every third words, every second character must be capitalized
      -if the word is less then 2 characters then do not capitalize it
 
D 
Input:'hi my name is marek martin'
Output:'hi my nAmE is marek mArTiN'
Intermidiate:['hi', 'my', 'name', 'is', 'marek', 'martin']

A 
create a helper method to capitalize each second character of the third word if it's longer than 1 character
  convert the word into an array of individual characters
  iterate over the array
    capitalize every second character in the word
  return the array after it's converted back to a string

convert the argued string into an array of words (words are defined by white spaces in between characters)
iterate over the array
  for every third word in the array
    if the size of the word is greater than 1 
    pass the word to the helper method 
  /
return the array after it's converted back to a string
=end 

def cap_every_two(word)
  word.chars.each_with_index {|char, idx| char.capitalize! if idx.odd?}.join
end 

def to_weird_case(sentence)
  counter = 0
  sentence.split.map do |word|
    counter += 1
    if counter % 3 == 0
      word = cap_every_two(word)
    else
      word
    end 
  end.join(' ')
end
  
  
p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
                'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case(
  'It is a long established fact that a reader will be distracted') ==
  'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case(
  'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
  'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'