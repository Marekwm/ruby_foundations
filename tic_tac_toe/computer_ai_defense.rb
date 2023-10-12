#   The computer currently picks a square at random. That's not very interesting. Let's make the computer defensive minded, 
#   so that if there's an immediate threat, then it will defend the 3rd square. We'll consider an "immediate threat" to be 2
#   squares marked by the opponent in a row. If there's no immediate threat, then it will just pick a random square.
  
#   create a method named defend_square where the computer will use winning combinations to select square
#   if combination has 2 'X' then defend that square 
  
#   if there is no threat then use sample to pick a random square
INITIAL_MARKER = ' '
PLAYER_1_MARKER = 'X'
PLAYER_2_MARKER = 'O'
WINNING_LINES = [[1, 2 ,3], [4, 5, 6], [7, 8, 9], #rows
                 [1, 4, 7], [2, 5, 8],[3, 6, 9],  #columns
                 [1, 5, 9], [3, 5, 7]]            #diagonals

def prompt(message)
  puts ">> #{message}"  
end 

def display_board(board, round, score)
  system 'clear'
  puts ""
  puts "You're a #{PLAYER_1_MARKER}. Computer is #{PLAYER_2_MARKER}"
  puts "Round #{round}"
  puts "Score- Player:#{score[:player]} ; Computer:#{score[:computer]}"
  puts "     |     |"
  puts "  #{board[1]}  |  #{board[2]}  |  #{board[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{board[4]}  |  #{board[5]}  |  #{board[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{board[7]}  |  #{board[8]}  |  #{board[9]}"
  puts "     |     |"
  puts ""
end

def display_score(score)
  prompt " You're score is #{score[:player]}; the computers score is #{score[:computer]}"
end

def joinor(arr, delimeter = ', ', word = 'or')
  case arr.size
  when 0 then ''
  when 1 then arr.first.to_s
  when 2 then arr.join(" #{word} ")
  else 
    arr[-1] = "#{word} #{arr[-1]}"
    arr.join(delimeter)
  end 
end

def initialize_board
  new_board = {}
  (1..9).each {|num| new_board[num] = INITIAL_MARKER}
  new_board
end 

def empty_squares(brd)
  brd.keys.select{|num| brd[num] == INITIAL_MARKER}
end  

def player_marks_square!(brd)
  square = ''
  loop do 
    prompt "Choose one of the following squares #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end 
  brd[square] = PLAYER_1_MARKER
end 

def computer_marks_square!(brd)
  square = nil 
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd)
    break if square
  end 
  
  if !square
    square = empty_squares(brd).sample
  end 
  
  brd[square] = PLAYER_2_MARKER
end 
 
def board_full?(brd)
  empty_squares(brd).empty?
end 

def someone_won?(brd)
  !!detect_round_winner(brd)
end 

def detect_round_winner(brd)
  WINNING_LINES.each do |combo|
    if combo.all? {|square| brd[square] == 'X'}
      return 'Player'
    elsif combo.all?  {|square| brd[square] == 'O'}
      return'Computer'
    end
  end 
  nil
end 
def find_at_risk_square(lines, brd)
  if board.values_at(*lines).count('X') == 2
    board.select{|k,v| line.include?(k) && v == ' '}.keys.first
  end 
  nil
end 


def update_score!(brd, score)
  if detect_round_winner(brd) == 'Player'
    score[:player] += 1
  elsif detect_round_winner(brd) == 'Computer'
    score[:computer] += 1
  end 
end 

def detect_game_winner(score)
  if score[:player] == 5
    "Player"
  elsif score[:computer] == 5
    'Computer'
  end 
end 
    
loop do #new_game loop
  score = {player: 0, computer: 0}
  round = 1
  loop do #score loop
    board = initialize_board
    loop do #main game loop
      display_board(board, round, score)
    
      player_marks_square!(board)
       break if someone_won?(board) || board_full?(board)
    
      computer_marks_square!(board)
      break if someone_won?(board) || board_full?(board)
    end
    
    display_board(board, round, score)
     
    if someone_won?(board)
      update_score!(board, score)
      prompt "#{detect_round_winner(board)} won round #{round}!"
    else 
      prompt "It's a tie!"
    end
    
    round += 1
    break if score[:player] == 5 || score[:computer] == 5
  end 
  
  prompt "#{detect_game_winner(score)} won the game!"
  prompt 'Do you want to play again?(y or n)'
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Good bye!"