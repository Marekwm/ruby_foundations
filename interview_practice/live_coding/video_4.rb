=begin
given 2 strings, your job is to find out if there is a substring
that appears in both strings. return true if you find a substring and 
false if you dont

substrings must be more then 1 character long and non case sensitive

p substring_test('Something', 'Fun') == false
p substring_test('Something', 'Home') == true
p substring_test('Something', '') == false
p substring_test('', 'Something') == false
p substring_test('BANANA', 'banana') == true
p substring_test('test', 'list') == true
p substring_test('','') == false
p substring_test('123456','69234') == true

Input: 2 strings 
Output: boolean true or false
Rules:
  Explicit requirements:
    given 2 strings find a common substring amongst both strings that is larger then 1 character long
    return true if you find a common substring
    otherwise return false
  Implicit requirements:
    the substrings are not case sensitive
    the substrings are only in linear progression and the order is important
examples
'Something', 'Home' => true => 'ome'

datastructures
Input: 2 strings ;'Something', 'Home'
Output: true 
intermidiate: all substrings for both argued strings 

algorithm
helper method to get all the substrings
create a results array named `results`
iterate over a non inclusive range from 0 to the size of the string
  let number passed into the iteration be assigned to `start_idx`
  iterate over a non inclusive range from the strart_idx + 1 to the size of the string
  let the number passed into the iteration be assigned to the `current_size`
  append each substring with a start index of the string at start_idx and a length of current_size
return all the substrings from results that have a length greater then 1

///main method 
assign the substrings of the first argued string passed to the helper method to substrings1
assign the substrings of the second argued string passed to the helper method to substrings2

iterate over the elements and index of substrings1
  return true if any of the current elements are equal to the substring of substring2 at current index 
  false otherwise
  

def get_all_substrings(str)
  substrings = []
  (0...(str.size)).each do |start_idx|
    ((start_idx + 1)...str.size).each do |current_size|
      substrings << str[start_idx..current_size].downcase
    end 
  end 
  substrings.select {|substring| substring.size > 1 && substring.size < str.size}
end 

def substring_test(str1, str2)
  substrings1 = get_all_substrings(str1)
  substrings2 = get_all_substrings(str2)
  substrings1.each_with_index do |substring|
    return true if substrings2.any?{|string| string == substring}
  end 
  false
end 
  

p substring_test('Something', 'Fun') == false
p substring_test('Something', 'Home') == true
p substring_test('Something', '') == false
p substring_test('', 'Something') == false
p substring_test('BANANA', 'banana') == true
p substring_test('test', 'list') == true
p substring_test('','') == false
p substring_test('123456','69234') == true

=end 

=begin
write a method that takes 2 strings and returns true if a portion of the first string can be 
rearanged to make the second string. Otherwise false 

p scramble('javaass', 'jjss') == false 
p scramble('rkqlodw', 'world') == true 
p scramble('katas', 'steak') == false
p scramble( unozct, 'count' ) == true

Input: 2 strings 
Ouput: true or false
Rules: 
  Explicit requirements:
    given 2 strings 
    evaluate if the first string contains the character to form the second string
      if so return true
      otherwise false
Datastructure
Input: 'dwgos', 'god'
Ouput: true
intermidiate:['g', 'o', 'd']

Algorithm
create a duplicate of str2
save the array of characters from str2 to `characters`
iterate over characterw  
if str1 contains the current character 
    delete that character from the duplicate of str2
if the duplicate of str2 is empty return true otherwise false
=end 
def scramble(str1, str2)
  chars1 = str1.dup
  chars2 = str2.dup
  characters = chars2.chars
  
  characters.each do |char|
    chars2.sub!(char, '') && chars1.sub!(char, '' )if chars1.include?(char)
  end 
  return true if chars2.empty?
  false
end 
     

p scramble('javaass', 'jjss') == false 
p scramble('rkqlodw', 'world') == true 
p scramble('katas', 'steak') == false
p scramble( 'unozct', 'count' ) == true