# Write a program that displays a welcome message, but only after the user enters the correct password, where the password
# is a string that is defined as a constant in your program. Keep asking for the password until the user enters the correct password.
username = 'dino'
password = "DunCanDoIt"


loop do 
  puts ">>Please enter your user name"
  user_name = gets.chomp
  
  puts ">>Please enter your password:"
  input = gets.chomp
  
  break if  user_name == username && input == password
  puts ">>Authorization failed!!"

end

puts "Welcome!"