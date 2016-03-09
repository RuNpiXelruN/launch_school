# tic tac toe is a 2 player game played on a 3x3 board.
# each player takes a turn and marks a square on the board.
# first player to reach 3 squares in a row, including diagonals, wins.
# if all 9 squares are marked and no player has 3 in a row, it's a tie.

# 1. display an empty 3x3 board
# 2. ask the user to mark a square
# 3. computer marks a square
# 4. display the updated board state
# 5. if winner, display winner
# 6. if board is full, display tie
# 7. if neither winner nor board is full, go to #2
# 8. play again?
# 9. if yes, go to #1
# 10. if no, goodbye!

require 'pry'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]] # diagonals
INITIAL_MARKER = ' '.freeze
PLAYER_MARKER = 'X'.freeze
COMPUTER_MARKER = 'O'.freeze

def prompt(message)
  puts "=> #{message}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "Player = X, Computer = O. Good Luck!"
  puts "     |     |     "
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts "     |     |     "
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joiner(arr, delimiter = ', ', word = 'or')
  arr[-1] = "#{word} #{arr.last}" if arr.size > 1
  arr.join(delimiter)
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a position: #{joiner(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice"
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = nil
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line,brd)
    break if square
  end
  
  if !square
    square = empty_squares(brd).sample
  end
  
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end


def detect_winner(brd)
  player_score = 0
  computer_score = 0
  WINNING_LINES.each do |line|
    case
    when brd.values_at(*line).count(PLAYER_MARKER) == 3
      player_score += 1
      return 'Player'
    when brd.values_at(*line).count(COMPUTER_MARKER) == 3
      computer_score += 1
      return 'Computer'
    end
  end
  nil
end

def find_at_risk_square(line, board)
  if board.values_at(*line).count('X') == 2
    board.select {|k,v| line.include?(k) && v == ' '}.keys.first
  else
    nil
  end
end

loop do # main loop
  board = initialize_board

  loop do
    display_board(board)

    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)

    computer_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!!"
  else
    prompt "It's a tie!"
  end
  prompt "Player: #{player_score}, Computer: #{computer_score}"
  prompt "Play again? (y or n)"
  go_again = gets.chomp

  break unless go_again.downcase.start_with?('y')
end

prompt "Thanks for playing!"
