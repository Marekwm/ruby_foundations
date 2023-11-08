=begin
In this simple Kata your task is to create a function that turns a string into a Mexican Wave. You will be passed a string
and you must return that string in an array where an uppercase letter is a person standing up.
Rules
1. The input string will always be lower case but maybe empty.
2. If the character in the string is whitespace then pass over it as if it was an empty seat.

input: string
output: array 

rules 
  explicit requirements:
    given a string as input
    create an array with the n string elements, the amount of strings is based on the size of the argued string without
    spaces 
    incrementaly capitalize the character to make a way 
datastructure
input: string // 'dog'
output: array // ['Dog', 'dOg', 'doG']
intermediate array // ['dog', 'dog', 'dog']

algorithm
create an empty array named wave
find the size of the string without white spaces 
add the argued string n amount of times to wave based on it's length
iterate over wave one string at a time with the index
  upcase the character of the string at current index
return wave
=end

def wave(str)
  wave_arr = []
  str.chars.each_with_index do |char, idx|
    next if char == ' '
    wave_arr << str[0...idx] + char.upcase + str[(idx + 1)..-1]
  end 
  wave_arr
end 
p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
p wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs",
"codewarS"]
p wave("") == []
p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs",
 "two wordS"]
p wave(" gap ") == [" Gap ", " gAp ", " gaP "]
