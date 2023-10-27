=begin
Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that,
when combined with adjoining spaces, will produce a person's name. The hash will contain two keys,
:title and :occupation, and the appropriate values. Your method should return a greeting that uses
the person's full name, and mentions the person's title and occupation.

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> "Hello, John Q Doe! Nice to have a Master Plumber around."
P 
Input:array and hash
Output: string

Rules:
  Explicit Requirements:
    -the input array will have 2 or more elements that contain the information to produce a complete name
      -must inlcude space when combining the elements to form the complete name
      
    -the input hash will contain 2 k-v pairs, :title and :occupation, and the appropriate values
    -return a greeting with a complete name alongside the title and occupation in the output string

D 
Input:['Marek', 'W', 'Martin'], {title:n'apprentice' , occupation: 'web app developer'}
Output: => "Hello, Marek W Martin! Nice to have a apprentice web app developer around."
Intermidiate: "Hello,#{}! Nice to have a #{} #{} around."

A 
using the argued array convert it to a string with added spaces between each element
save the new string to a variable called full_name
create a greeting string and interpolate all the argued values into the string then display it 

=end 
def greetings(name, work)
  full_name = name.join(' ')
  proffesion = "#{work[:title]} #{work[:occupation]}"
  puts "Hello, #{full_name}! Nice to have a #{proffesion} around."
end 
greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => "Hello, John Q Doe! Nice to have a Master Plumber around."