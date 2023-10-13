=begin
PROBLEM
As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight.
If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight,
respectively. Both methods should return a value in the range 0..1439.

You may not use ruby's Date and Time methods.
EX:
p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0


after_midnight
P
Input: string representation of a 24 hour clock
Ouput: return a positive integer that represents the number of minutes after midnight
Rules:
  -Explicit requirements
    -you are given a string representation of a 24 hour clock as input
    -based off of this input return a positive integer that represents the number of minutes after midnight
    -the positve integer will range from 0-1439
    -You may not use ruby's Date and Time methods
  -Implicit requirements 
    -if the input is outside of the range of the minutes in a day return 0
      -find the number of minutes for example '24:00'
        -this will return 1440 minutes
          -the return is outside of the range so 0 must be returned 
    -if the input is midnight you also must return zero
D 
- What data structures could we use to solve this problem?
the input is stored in a string
- What does our data look like when we get it? (input)
'12:34'
- What does our data look like when we return it? (output?)
754
- What does our data need to look like in the intermediate steps?
hours and minutes need to be isolated then the hours need to be made into minutes
the minutes are then added to the new minutes and return it

A
create a variable named `minutes_per_hour` and assign it to 60
create a variable named `minutes_per_day` and assing it to 1440
we need to get the hours and minutes out of the string and convert them to integers
  -create a variable named hours and asign the first 2 elements within the string input to it
    -convert this string reprentation of an integer to an integer 
    
  -create a variable named minutes and asign the last 2 elements within the string input to it
    -convert this string reprentation of an integer to an integer 
now we need to convert the hours to minutes and add the other minutes
  reasign minutes to hours * minutes_per_hours + minutes 
  
then we need to evaluate if the minutes are within the range of 1 single day
if minutes is  less than minutes_per_day
  return minutes 
otherwise 
  return 0
=end 
# MINUTES_PER_DAY = 1440
# MINUTES_PER_HOUR = 60

# def after_midnight(time)
#   hours = time[0,2].to_i
#   minutes = hours * MINUTES_PER_HOUR + time[3,2].to_i
  
#   minutes < MINUTES_PER_DAY ? minutes : 0
# end 



# p after_midnight('00:00') == 0
# p after_midnight('12:34') == 754
# p after_midnight('24:00') == 0


=begin 
after_midnight
P
Input: string representation of a 24 hour clock
Ouput: return a positive integer that represents the number of minutes before midnight
Rules:
  -Explicit requirements
    -you are given a string representation of a 24 hour clock as input
    -based off of this input return a positive integer that represents the number of minutes before midnight
    -the positve integer will range from 0-1439
    -You may not use ruby's Date and Time methods
  -Implicit requirements 
    -if the input is outside of the range of the minutes in a day return 0
      -find the number of minutes for example '24:00'
        -this will return 1440 minutes
          -the return is outside of the range so 0 must be returned 
    -if the input is midnight you also must return zero
D 
- What data structures could we use to solve this problem?
the input is stored in a string
- What does our data look like when we get it? (input)
'12:34'
- What does our data look like when we return it? (output?)
686
- What does our data need to look like in the intermediate steps?
hours and minutes need to be isolated then the hours need to be made into minutes
the minutes are then added to the new minutes and return it

A
create a variable named `minutes_per_hour` and assign it to 60
create a variable named `minutes_per_day` and assing it to 1440
we need to get the hours and minutes out of the string and convert them to integers
  -create a variable named hours and asign the first 2 elements within the string input to it
    -convert this string reprentation of an integer to an integer 
    
  -create a variable named minutes and asign the last 2 elements within the string input to it
    -convert this string reprentation of an integer to an integer
    
now we need to convert the hours to minutes and add the other minutes
  reasign minutes to hours * minutes_per_hours + minutes 
  
then we need to evaluate if the minutes are within the range of 1 single day
if minutes is  less than minutes_per_day and is not equal to 0
  return minutes_per_day - minutes
otherwise 
  return 0
=end 

# MINUTES_PER_DAY = 1440
# MINUTES_PER_HOUR = 60

# def before_midnight(time)
#   hours = time[0,2].to_i 
#   minutes = hours * MINUTES_PER_HOUR + time[3,2].to_i

#   if minutes < MINUTES_PER_DAY && minutes != 0
#     MINUTES_PER_DAY - minutes
#   else 
#     0
#   end 
# end 
# p before_midnight('00:00') == 0
# p before_midnight('12:34') == 686
# p before_midnight('24:00') == 0

# now all together
MINUTES_PER_DAY = 1440
MINUTES_PER_HOUR = 60

def after_midnight(time)
  hours = time[0,2].to_i
  minutes = hours * MINUTES_PER_HOUR + time[3,2].to_i
  
  minutes < MINUTES_PER_DAY ? minutes : 0
end 

def before_midnight(time)
  hours = time[0,2].to_i 
  minutes = hours * MINUTES_PER_HOUR + time[3,2].to_i

  if minutes < MINUTES_PER_DAY && minutes != 0
    MINUTES_PER_DAY - minutes
  else 
    0
  end 
end 




p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
