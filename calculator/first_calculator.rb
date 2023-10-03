def prompt(message)
  puts ">> #{message}"
end 

prompt('Welcome to Calculator!')

prompt("What's the first number?")
number1 = gets.to_i


prompt("What's the second number?")
number2 = gets.to_i

prompt('What operation would you like to perform? 1) add 2) subract 3) multiply 4) divide')
operator = gets.chomp

result = case operator
         when '1' then number1 + number2
         when '2' then number1 - number2
         when '3' then number1 * number2
         when '4' then number1.to_f / number2.to_f
         end 
         
prompt("The result is #{result}")