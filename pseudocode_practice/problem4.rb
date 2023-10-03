# a method that determines the index of the 3rd occurrence of a given character in a string. For instance,
# if the given character is 'x' and the string is 'axbxcdxex', the method should return 6 (the index of the 3rd 'x').
# If the given character does not occur at least 3 times, return nil.
=begin 
-------casual------
# given a string and a character 
assign 0 to the local variable `char_count`
iterate over each character in the given string
  if the given character is equal to the current character if the iteration
    add 1 to `char_count`
  if `char_count` reaches 3 then return the current index value of the character
-------------------

-------FORMAL--------------
START
# given a string and character
SET char_count = 0
SET iterator = 0

WHILE counter != length of string ||(or) char_count != 3
  IF string[counter] == character
    char_count = char_count + 1
  SET counter = counter + 1

END 
---------------------------
=end
# -----------CODE-----------
# There are some issues that at the moment 

def third_occurence(character, string)
  char_count = 0
  iterator = 0 
  while string.length <= iterator || char_count <= 3
    char_count += 1 if string[iterator] == character
    iterator += 1
  end 
  
  if char_count == 3
    puts iterator 
  else 
    puts nil
  end 
end
  
third_occurence('x', 'axbxcdxex')