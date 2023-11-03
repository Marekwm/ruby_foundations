=begin
A pangram is a sentence that contains every single letter of the alphabet at least once. 
For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram, 
because it uses the letters A-Z at least once (case is irrelevant).

Given a string, detect whether or not it is a pangram. Return True if it is,
False if not. Ignore numbers and punctuation.

pangram?("The quick brown fox jumps over the lazy dog.") == true
pangram?("This is not a pangram.") == false

Input: string, sentence of words seperate by spaces 
Output: true or false
Rules:
  explicit
    return true if the input string contains every letter in the alphabet 
    false otherwise
    case does not matter
Datastructure
input: string// "The quick brown fox jumps over the lazy dog."
output: boolean // true
Intermediate: condensed string with only lowercase letters "thequickbrownfoxjumpsoverthelazydog"
helper: array of the entire alphabet each lowercase letter is it's own element

algorithm
create a constant that is assigned to anarray of the entire alphabet with each lowercase letter as it's own element
get rid of all the spaces and non-alphabetic character from the string without mutating the argued string
make this new string all lowercase
iterate over the constant that contains the alphabet
return true if the string contains every element from the alphabet array
false otherwise

=end 
ALPHABET = ('a'..'z').to_a
def pangram?(str)
  new_str = str.downcase.delete('^a-z').downcase #this is not needed but it makes the string specific for it's purpose
  ALPHABET.all?{|char| new_str.include?(char)}
end 

  
p pangram?("The quick brown fox jumps over the lazy dog.") == true
p pangram?("This is not a pangram.") == false