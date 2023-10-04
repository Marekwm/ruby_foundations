VALID_CHOICES = {'r' => 'rock', 'p' => 'paper', 'sc' => 'scissors', 'l' => 'lizard', 's' => 'spock'}

WINNING_COMBOS = {'sc' => ['p','l'], 'p' => ['r', 's'], 'r' => ['l', 'sc'], 'l' => ['s', 'p'], 's' => ['sc', 'r']}
                   
def prompt(message)
  puts ">> #{message}"
end

def display_winner(player, computer)
  prompt(win?(player, computer))
end 

def win?(player1, player2)
  if WINNING_COMBOS[player1].include?(player2)
    'Player wins!'
  elsif WINNING_COMBOS[player2].include?(player1)
    'Computer wins!'
  else 
    "It's a tie!"
  end
end 


loop do #main loop
  choice = ''
  loop do 
    
    prompt("Choose one of the following: #{VALID_CHOICES.values.join(', ')}; Enter (r) for rock, (p) for paper, (sc) for scissors
    l for lizard and s for spock")
    
    choice = gets.chomp
    
    break if VALID_CHOICES.keys.include?(choice)
    prompt("That's not a valid choice.")
  end 
  
  computer_choice = VALID_CHOICES.keys.sample
   
  prompt("You chose: #{VALID_CHOICES[choice]} ; Computer chose: #{VALID_CHOICES[computer_choice]}")
  
  display_winner(choice, computer_choice)
  
  prompt('Would you like to play another round?(Y for yes)')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end




# WINNING_COMBOS = {'scissors' => 'paper', 'paper' => 'rock', 'rock' => 'lizard', 'lizard' => 'spock',
# 'spock' => 'scissors', 'scissors' => 'lizard', 'lizard' => 'paper', 'paper' => 'spock', 'spock' => 'rock',
# 'rock' => 'scissors'}