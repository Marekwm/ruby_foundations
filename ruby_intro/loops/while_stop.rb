# Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". 
# Each loop can get info from the user.
num = 0
input = ''
while input != 'STOP'
    puts num += 1
    puts 'This wont end unless you type STOP'
    input = gets.chomp
end 
