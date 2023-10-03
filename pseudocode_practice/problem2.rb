# a method that takes an array of strings, and returns a string that is all those strings concatenated together
=begin
--------Casual--------
# given an array of strings called strings
assign a local variable `result` to an empty string
iterate over strings and append each current string to result
return result
-----------------------
--------FORMAL---------
START
#given an array of strings called strings

SET result = empty string
SET counter = 0 

WHILE counter <= length of strings
  SET result = result + strings[counter]
  SET counter = counter + 1
  
PRINT result
END

-----------------------
=end

# ------code---------
# def concat_strings(strings)
#   result = ''
#   strings.each {|string| result << string}
#   result
# end 


# or
def concat_strings(strings)
  strings.join(' ')
end 

puts concat_strings(%w(the dog went to the door to get the newspaper))
