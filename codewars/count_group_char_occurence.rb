=begin
Write a method that takes a string as an argument and groups the number of times each character appears in the string
as a hash sorted by the highest number of occurrences.
The characters should be sorted alphabetically e.g:
get_char_count("cba") => {1=>["a", "b", "c"]}
You should ignore spaces, special characters and count uppercase letters as lowercase ones.

input:string
output:hash
explicit requirements:
  -the string contains all characters, ignore the count of all non alphabetic characters
  -lowercase and uppercase letters are counted as lowercase letters 
  -the returned hash will contain key value pairs where the key is an integer that represents
  the count of characters in the string.
  -the value associated with the key is an array that contains all the characters with that count
  -it appears that the hash is ordered by largest key integer to smallest
  -also the array values are ordered alphanumerically
datastructures
input: string// 'hello1'
output: hash// {2=> ['l'], 1=> ['1', 'e', 'h', 'o']}
intermediate: array// all unique characters that are only numbers or alphabetic characters
this unique array is also sorted ['1', 'e', 'h', 'l','o']

algorithm
create an empty hash named count_group_char
without mutating the input string
  convert the string to lowercase characters
  using the return value of deleting all the alphanumeric characters
  convert it to an array of unique characters

  iterate over the array of unique characters 
    find the count of the current character in the argued string 
    evaluate if the count is already a key in the hash
      if so add the current character to the values array 
      if not
        create a new key value pair where the key is the count and the value is an array 
        with the current character in it
    //
  return count_group_char
  
=end
def get_char_count(str)
  arr = str.downcase.delete('^a-z1-9').chars.uniq.sort
  arr.each_with_object({}) do |char, group_char_count|
    count = str.downcase.count(char)
    if group_char_count.key?(count)
      group_char_count[count] << char
    else
      group_char_count[count] = [char]
    end 
  end
end 
p get_char_count("Mississippi") == {4=>["i", "s"], 2=>["p"], 1=>["m"]}
p get_char_count("Hello. Hello? HELLO!!") == {6=>["l"], 3=>["e", "h", "o"]}
p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]}
p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]}
p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}