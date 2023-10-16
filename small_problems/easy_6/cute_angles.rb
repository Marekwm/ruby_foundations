=begin
Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String
that represents that angle in degrees, minutes and seconds. You should use a degree symbol (°) to represent degrees,
a single quote (') to represent minutes, and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

ex: 
dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

Note: your results may differ slightly depending on how you round values, but should be within a second or two of the results shown.

You should use two digit numbers with leading zeros when formatting the minutes and seconds, e.g., 321°03'07".

You may use this constant to represent the degree symbol:

DEGREE = "\xC2\xB0"

:link to learn about degrees minutes seconds
https://www.thoughtco.com/decimal-degrees-conversion-1434592

P 
Input: floating point number that represents an angle between 0 and 360 degrees
Output: String that represents that angle in degrees, minutes and seconds
Rules:
  Explicit Requirements:
    -A degree has 60 minutes
    -A minute has 60 seconds 
    -In order to find the minutes multiply the decimal of the input by 60
      -The whole number will be the minutes
    -In order to find the seconds multiply the decimal of the minutes by 60
      -round this number and that represents the seconds 

D 
Input:76.73
Output: %(76°43'48") 

A 
save the whole number of the input to `degrees`
save the whole number of the multiplication of the decimal of the input by 60 to `minutes`
save the whole number of the multiplication of the decimal of minutes by 60 to `seconds`
format the output for display
=end 
def dms(angle)
  degrees = angle.to_i
  minutes = ((angle % 1) * 60).round(2)
  seconds = ((minutes % 1) * 60).round(2)
  
  format(%(#{degrees}#{"\xC2\xB0"}%02d'%02d"), minutes.to_i, seconds.to_i)
end 
p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")