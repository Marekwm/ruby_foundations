def prompt(message)
  puts ">> #{message}"
end 

def perform_operation(num1, num2, choice)
  case choice
  when 1 then num1 + num2
  when 2 then num1 - num2
  when 3 then num1 * num2
  when 4 then num1 / num2
  end
end


prompt('Welcome to the calculator, I will do basic operations for you!')

prompt('Please enter any positive number')
num1 = gets.to_i

prompt('Please enter another positive number')
num2 = gets.to_i

prompt('What operation would you like to perform 1/Add , 2/Subtract, 3/Multiply, 4/Division')
operation_choice = gets.to_i

result = perform_operation(num1, num2, operation_choice)

prompt ("The result of #{operation_choice} the numbers #{num1} and #{num2} is #{result}")