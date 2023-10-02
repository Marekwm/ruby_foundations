# Write a program called name.rb that asks the user to type in their name and then prints out a greeting message with their name included.
puts 'type your first name:'
first_name = gets.chomp

puts 'type your last name:'
last_name = gets.chomp

full_name = first_name.capitalize + ' ' + last_name.capitalize

puts "Hello #{full_name} it's nice to meet you, my name is Marek"

10.times {puts full_name.upcase}