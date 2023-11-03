def substrings(str)
  result = []
  chars = str.split('') 
  length = chars.size
  (0...length).each do |start|
    (start...length).each do |size|
      result.push(chars[start..size].join)
    end 
  end 
  result.uniq
end 

p substrings('abcd')