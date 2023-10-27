# Write a method that takes two arguments: the first is the starting number, 
# and the second is the ending number. Print out all numbers from the starting
# number to the ending number, except if a number is divisible by 3, print "Fizz",
# if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

# Example:
# fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

# Input: 2 integers
# Output: integers nad strings

# Rules:
  # Explicit requirements:
    # -the first input integer represents the starting number
    # -the second input integer represents the ending number
    # -display all the numbers from start to end
      # -if the number is divisible by 3
        # -display 'Fizz' instead of the number
      # -if the number is divisible by 5
        # -display 'Buzz' instead of the number
      # if the number is divisible by 3 and 5
        # -display 'FizzBuzz' instead of the number
        
# A
# iterate from the starting number to the ending number based on the argued integers
# if the current number of the iteration is divisible by 3
  # -display 'Fizz'
# if the current number of the iteration is divisible by 5 
  # -display 'Buzz'
# if the current number of the iteration is divisble by both 3 and 5
  # -display 'FizzBuzz'
# otherwise display the current number of the iteration

# ---helper method
# create a method that takes 2 argument
# the first argument represents the dividend
# the second argument represents the divisor
  # evaluate if the dividend is evenly divisible by the divisor
  # if so return true otherwise return false

def divisible_by(dividend, divisor)
  dividend % divisor == 0
end 
  
def fizzbuzz(start, ending)
  start.upto(ending) do |num|
    if divisible_by(num,3) && divisible_by(num,5)
      puts 'FizzBuzz'
    elsif divisible_by(num, 3)
      puts 'Fizz'
    elsif divisible_by(num,5)
      puts 'Buzz'
    else 
      puts num
    end  
  end 
end 

fizzbuzz(1, 15)