def prompt(message)
  puts ">> #{message}"
end 
def integer?(num)
  num.to_i.to_s == num
end 

def float?(num)
  num.to_f.to_s == num
end

def number?(num)
  integer?(num) || float?(num)
end 

def operation_to_message(op)
  word = case op
         when '1' 
          "Adding"
         when '2' 
          "Subtracting"
         when '3' 
           "Multiplying"
         when '4'
           "Dividing"
         end 
  word
end 

name = ''
loop do
  prompt('Welcome to Calculator! Enter your name:')
  name = gets.chomp
  
  prompt('Make sure you use a valid name') if name.empty?
  break
end 

prompt("Hello #{name.capitalize}!")

loop do #main loop
  number1 = 0
  loop do 
    prompt("What's the first number?")
    number1 = gets.chomp
    
    if number?(number1)
      break
    else 
      prompt('Hmmm...that doesnt look like a valid number.')
    end 
  end
  number2 = 0
  loop do 
    prompt("What's the second number?")
    number2 = gets.chomp
    
    if number?(number2)
      break
    else 
      prompt('Hmmm...that doesnt look like a valid number.')
    end 
  end
  # heredoc
  operator_prompt = <<-MSG 
    What operation would you like to perform? 
    1) add 
    2) subract
    3) multiply
    4) divide
  MSG
  
  prompt(operator_prompt)
  
  operator = ''
  loop do 
    operator = gets.chomp
    if %(1 2 3 4).include?(operator)
      break
    else 
      prompt('Please enter a valid choice, Must choose (1, 2, 3, or 4)')
    end 
  end 
  
  prompt("#{operation_to_message(operator)} the two numbers...")
  result = case operator
           when '1' then number1.to_f + number2.to_f
           when '2' then number1.to_f - number2.to_f
           when '3' then number1.to_f * number2.to_f
           when '4' then number1.to_f / number2.to_f
           end 
           
  prompt("The result is #{result}")
  
  prompt('Do you want to perform another calculation?(Y to calculate again)')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for using the Calculator!')