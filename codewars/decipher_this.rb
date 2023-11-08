=begin
You are given a secret message you need to decipher. Here are the things you need to know to decipher it:
For each word:
the second and the last letter is switched (e.g. Hello becomes Holle)
the first letter is replaced by its character code (e.g. H becomes 72)
Note: there are no special characters used, only letters and spaces
Examples
decipherThis('72olle 103doo 100ya'); // 'Hello good day'
decipherThis('eyadr 115te 103o'); // 'Ready set go'

Input:string
Output: deciphered string
rules:
  Explicit requirements:
  -you are given a string of words 
  -the second and last letter in the word are switched
  -the first letter of each word is replaced by it's character code
  -return the string with all the words repaired to there orignal state

algorithm
create an empty array named results
convert the argued string to an array of words 
iterate over the array of words
  split number from the current word and get the alphabetic character 
  append the new string with the characters reverted back to the results array
join results array to a string with spaces and return it

=end
def decipher_this(string)
  string.split.map do |word|
    first_char = word.scan(/[0-9]/).join
    word.gsub!(first_char, first_char.to_i.chr) 
    word[1], word[-1] = word[-1], word[1] if word.size > 2
    
    word
  end.join(' ')
end 
p decipher_this("65 119esi 111dl 111lw 108dvei 105n 97n 111ka") == "A wise old owl lived in an oak"
p decipher_this("84eh 109ero 104e 115wa 116eh 108sse 104e 115eokp") == "The more he saw the less he spoke"
p decipher_this("84eh 108sse 104e 115eokp 116eh 109ero 104e 104dare") == "The less he spoke the more he heard"
p decipher_this("87yh 99na 119e 110to 97ll 98e 108eki 116tah 119esi 111dl 98dri") == "Why can we not all be like that wise old bird"
p decipher_this("84kanh 121uo 80roti 102ro 97ll 121ruo 104ple") == "Thank you Piotr for all your help"