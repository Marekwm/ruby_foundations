def find_children(str)
  p str.chars.sort_by {|char| [char.downcase, char]}.join
end 
# when sorting we sort the letters from each other but if we want uppercase letters 
# before same lowercase then we return a 2 element array to then compare the order of the original
# character since uppercase comes before lowercase.


p find_children("abBA") == "AaBb"
p find_children("AaaaaZazzz") == "AaaaaaZzzz"
p find_children("CbcBcbaA") == "AaBbbCcc"
p find_children("xXfuUuuF") == "FfUuuuXx"
p find_children("") == ""