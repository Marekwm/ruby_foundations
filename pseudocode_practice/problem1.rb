# a method that returns the sum of two integers

# ---casual----
#given 2 integers
#peform addition on the two integers
#return the sum of the integers
# ---------------

=begin
 ----FORMAL-------
START

# given 2 integers

SET number1 = first given integer
SET number2 = second given integer

SET sum = number1 + number2

RETURN sum

END

=end


# ----CODE-----
def sum(number1,number2)
  number1 + number2
end 

sum(2, 7)
# =>9