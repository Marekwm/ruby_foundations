def prompt(message)
  puts ">> #{message}"
end

def float?(num)
  num.to_f.to_s == num
end 

def integer?(num)
  num.to_i.to_s == num
end 

def valid_num?(num)
  integer?(num) || float?(num)
end 

prompt ("Hello, Welcome to the Car Loan Calculator!Enter you're name:")
name = ''
loop do 
  name = gets.chomp
  break unless name.empty?
  prompt ('Please enter a valid name!')
end
prompt("Let's get started #{name.capitalize}!")


loop do #main loop
  loan_amount = 0
  loop do 
    prompt('Enter the loan amount:')
    loan_amount = gets.chomp
    
    break if valid_num?(loan_amount)
    prompt("That's not a valid entry, please try again.")
  end 
  
  yearly_rate = 0
  loop do 
    prompt('Enter the yearly interest rate, if 5% enter 5, if 12.5% enter 12.5')
    yearly_rate = gets.chomp
    
    break if valid_num?(yearly_rate)
    prompt ("That's not a valid entry, please try again.")
  end 
  
  duration_in_years = 0 
  loop do 
    prompt('Enter the loan duration in years')
    duration_in_years = gets.chomp
    
    break if valid_num?(duration_in_years)
    prompt ("That's not a valid entry, please try again.")
  end 
  
  monthly_rate = yearly_rate.to_f / 12 / 100
  duration_in_months = duration_in_years.to_i * 12
  
  monthly_payment = loan_amount.to_i * ( monthly_rate /
                              (1 - (1 + monthly_rate)**(-duration_in_months)))
  
  prompt ("Your montly payment will be #{monthly_payment.round(2)}")
  
  prompt('Would you like to perform another calculation?(Y for yes)')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end 
# m = monthly payment
# p = loan amount
# j = monthly interest rate
# n = loan duration in months