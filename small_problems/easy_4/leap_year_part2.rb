=begin
The British Empire adopted the Gregorian Calendar in 1752, which was a leap year. Prior to 1752, the Julian Calendar was used. 
Under the Julian Calendar, leap years occur in any year that is evenly divisible by 4.

Using this information, update the method from the previous exercise to determine leap years both before and after 1752.


leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == true
leap_year?(1) == false
leap_year?(100) == true
leap_year?(400) == true

P 
Input: an positive integer that represents any year greater than zero
Output: a boolean, if it's a a leap year return true, if it's not return false
Rules
-Explicit Requirements
  -input is any positive integer that represents any year greater than zero
  -Parameters of a leap year after and during 1752
    -a leap year occurs in every that is evenly divisible by 4
      -unless this year is also evenly divisible by 100
      -if the year is evenly divisble by 100 and 400
        -then its a leap year
  -Parameters of a leap year before 1752
  a leap year is considered any year evenly divisible  by 4

questions?


D 

same as last 


A 
evaluate if the year is greater than or equal to 1752
if yes
 evaluate if year is evenly divisible by 400
    -if yes return true
    -if no evaluate if year is evenly divisible 100
        -if yes return false
        -if no evaluate if year is evenly divisible 4
          -if yes return true
          -if no return false
if no
  -if year is evenly divisible 4
     -if yes return true
     -if no return false
     
=end
def leap_year?(year)
  if year >= 1752
    if year % 400 == 0
      true
    elsif year % 100 == 0 
      false
    else 
      year % 4 == 0
    end
  else 
    year % 4 == 0
  end 
end 
 
p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true 