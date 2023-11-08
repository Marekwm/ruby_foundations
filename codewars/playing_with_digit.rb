=begin
Some numbers have funny properties. For example:
89 --> 8¹ + 9² = 89 * 1
695 --> 6² + 9³ + 5⁴= 1390 = 695 * 2
46288 --> 4³ + 6⁴+ 2⁵ + 8⁶ + 8⁷ = 2360688 = 46288 * 51
Given a positive integer n written as abcd... (a, b, c, d... being digits) and a positive integer p
we want to find a positive integer k, if it exists, such as the sum of the digits of n taken to the successive powers of p is
equal to k * n.
In other words:
Is there an integer k such as : (a ^ p + b ^ (p+1) + c ^(p+2) + d ^ (p+3) + ...) = n * k
If it is the case we will return k, if not return -1.
Note: n and p will always be given as strictly positive integers.
dig_pow(89, 1) should return 1 since 8¹ + 9² = 89 = 89 * 1
dig_pow(92, 1) should return -1 since there is no k such as 9¹ + 2² equals 92 * k
dig_pow(695, 2) should return 2 since 6² + 9³ + 5⁴= 1390 = 695 * 2
dig_pow(46288, 3) should return 51 since 4³ + 6⁴+ 2⁵ + 8⁶ + 8⁷ = 2360688 = 46288 * 51

input: 2 integer
output: integer
rules
  explicit requirements:
    -you are given 2 integers, the first is the main number, the second is the starting number 
    for successive powers of the digits in the main number
    -divide the sum of all the digits to the successive power by the main number
      return the number if it's greater than 1 and -1 if less then 1
datastructure
input: 2 integers// (69,2)
output: integer // 11
intermediate:array of digits then to the power to//[6^2 + 9^3] == 765 == 69 * 11 

algorithm
convert the first argued integer to an array of digits 
iterate over the digits and perform transformation 
  do the power to the value of the second argued on the current digit
  add 1 to the value of the second number
get the sum of the array and divide it by the first num
if the number is greater then 1 return that num otherwise return 0
=end
def dig_pow(number, pow)
  sum = 0
  number.digits.reverse.each do |num|
    sum += num ** pow
    pow += 1
  end 
  if sum / number >= 1
    sum / number
  else 
    -1
  end 
end
p dig_pow(89, 1) == 1
p dig_pow(92, 1) == -1
p dig_pow(46288, 3) == 51
p dig_pow(695, 2) == 2
