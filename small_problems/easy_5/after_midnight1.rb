=begin
PROBLEM
The time of day can be represented as the number of minutes before or after midnight.If the number of minutes is positive, 
the time is after midnight. If the number of minutes is negative, the time is before midnight.

Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm).
Your method should work with any integer input.

You may not use ruby's Date and Time classes.
Disregard Daylight Savings and Standard Time and other complications.

The Integer#divmod method and the % (modulo) operator may prove useful in your solution. 
You may also find Kernel#format handy for formatting your results.

You may want to solve this problem for non-negative arguments that are between 0 and 1439 first. Once you've done that,
try handling arguments that are greater than 1439. Finally, solve it for negative values. 
Think about how you might be able to simplify the final two parts. (Hint: one day is 1440 minutes)


EX:
time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

P 
Input: integer representing minutes (positive represents minutes after midnight, negative represents minutes before midnight)
Ouput: display time of day in 24 hour formar (hh:mm)
Rules:
  -Explicit Requirements
    when the integer input is positive, it represents minutes after midnight
    when the integer input is negative, it represents minutes before midnight
    the output goal is to display the time of day in 24 hour formar (hh:mm) based on input integer
    there are 1440 minutes in a day
    solve for positive inputs first then figure out negative inputs
  
  
D
- What data structures could we use to solve this problem?

- What does our data look like when we get it? (input)
2 minutes or -60 minutes 
- What does our data look like when we return it? (output?)
  00:02 or 23:00
- What does our data need to look like in the intermediate steps?
  we first need to find the minutes in a day
  convert the input to hours then add the input to 00:00
  
A
***for inputs from 0-1439***

create a variable named `minutes_per_hour` and assign it to 60

create local variable named `hours` and `minutes`, assign them both to zero
we then need to regulate our minutes into hours the quotient represents the hours 
the remainder represents the minutes of excess 

this is done by dividing the input by 60 
the quotient is assigned to hours and the remainder is assigned to minutes

format the hours and minutes to display the times



***for inputs greater then 1440***

create a variable named minutes_per_day
in order to regulate the high integer to a number that will display within a 24 hour range 
we must divide the input by minutes_per_day to get the remainder

this remainder will represent the minutes to calculate the time of day
what we really did here is got rid of the excess time that was just overload and kept the time that is in range


We now need to deal with negative inputs, these numbers will be counting down from 00:00 to 23:59, 23:58, etc
it is the opposite of the positve inputs. we need to find a way to make the time go back for these inputs. The way to do this it to 
add minutes_per_day to make it postive, this will not alter the time by any means, we are just making it positive to then be used in the rest 
of the method

=====================================
so let's go over this one more time
create a variable named `minutes_per_day` and assign it to the integer 1440
create a variable named `minutes_per_hour` and assign it to the integer 60

first we need a helper method to regulate time, this method is gonna be used on all inputs. However it's use is for inputs greater then 1440 
and less then 0
***helper method regulate_minutes***
-for negative inputs 
  while input is less then 0
    add minutes_per_day to input
  
-to regulate the minutes now
get the remainder of input divided by minutes_per_day

return the regulated minutes 

The time_of_day method 
using the return value of helper method passed to it as an argument

create local variables named `hours` and `minutes`, assign them both to zero

divide the argument by minutes_per_hour 
  assign the quotient to hours 
  assign the remainder to minutes
  
format hours and minutes to display a 24 hour clock and you now have a time of day method that takes any integer as input!!!

this is done by dividing the input by 60 
the quotient is assigned to hours and the remainder is assigned to minutes

format the hours and minutes to display the times

=end

MINUTES_PER_DAY = 1440
MINUTES_PER_HOUR = 60

def regulate_minutes(time)
  while time < 0 
    time += MINUTES_PER_DAY
  end 
  
  time % MINUTES_PER_DAY
  
end 

def time_of_day(time)
  hours , minutes = regulate_minutes(time).divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end 

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"