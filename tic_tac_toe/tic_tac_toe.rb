INITIAL_MARKER = ' '
PLAYER_1_MARKER = 'X'
PLAYER_2_MARKER = 'O'
WINNING_LINES = [[1, 2 ,3], [4, 5, 6], [7, 8, 9], #rows
                 [1, 4, 7], [2, 5, 8],[3, 6, 9],  #columns
                 [1, 5, 9], [3, 5, 7]]            #diagonals

def prompt(message)
  puts ">> #{message}"  
end 

def display_board(board)
  system 'clear'
  puts ""
  puts "You're a #{PLAYER_1_MARKER}. Computer is #{PLAYER_2_MARKER}"
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
  square = empty_squares(brd).sample
  brd[square] = PLAYER_2_MARKER
end 
 
def board_full?(brd)
  empty_squares(brd).empty?
end 

def someone_won?(brd)
  !!detect_winner(brd)
end 

def detect_winner(brd)
  WINNING_LINES.each do |combo|
    if combo.all? {|square| brd[square] == 'X'}
      return 'Player'
    elsif combo.all?  {|square| brd[square] == 'O'}
      return'Computer'
    end
  end 
  nil
end 

loop do #new_game loop
  board = initialize_board
  
  loop do #main game loop
    display_board(board)
  
    player_marks_square!(board)
     break if someone_won?(board) || board_full?(board)
  
    computer_marks_square!(board)
    break if someone_won?(board) || board_full?(board)
  
  end
  
  display_board(board)
   
  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else 
    prompt "It's a tie!"
  end
  
  prompt 'Do you want to play again?(y or n)'
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Good bye!"