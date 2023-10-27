# def sum(num)
#   num.digits.reverse.sum
# end 

def sum(num)
  num.to_s.chars.map(&:to_i).reduce(:+)
end

def sum(num)
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45