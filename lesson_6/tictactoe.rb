require 'pry'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

FIRST_MOVE_DECIDER = 'choose'
PLAYER_MOVE = 'player'
COMPUTER_MOVE = 'computer'



def prompt(text)
  puts "==> #{text}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're an #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
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

def joinor(squares, delimiter = ', ', word = 'or')
  case squares.size
  when 0
    ''
  when 1
    squares.first
  when 2
    return squares.join(" #{word} ")
  else
    squares[-1] = "#{word} #{squares.last}"
    positions = squares.join(delimiter)
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square #{joinor(empty_squares(brd))}:"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def find_immediate_threat_square(line, brd, marker)
  if brd.values_at(*line).count(marker) == 2
    brd.select{ |key, value| line.include?(key) && value == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

def computer_places_piece!(brd)
  square = nil

  # offense
  WINNING_LINES.each do |line|
    square = find_immediate_threat_square(line, brd, COMPUTER_MARKER)
    break if square
  end

  # defense
  if !square
    WINNING_LINES. each do |line|
      square = find_immediate_threat_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  # pick square 5
  if brd[5].include?(INITIAL_MARKER)
    square = 5
  else
    nil
  end

  # random square
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
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def score_tracker(brd, scores)
  if detect_winner(brd) == 'Player'
    scores[0] += 1
  elsif detect_winner(brd) == 'Computer'
    scores[1] += 1
  end
  prompt "The score is #{scores[0]} : #{scores[1]}"
end

def final_score(final_score)
  if final_score[0] == 5
    prompt "Player wins the game!"
  elsif final_score[1] == 5
    prompt "Computer wins the game!"
  end
end

def invalid_choice
  prompt "Invalid choice. Please select either 'player' or 'computer'."
end

def move_order(setting)
  if setting == 'choose'
  prompt "Choose who will go first: type either 'player' or 'computer'"  
    loop do
      setting = gets.chomp.downcase

      if setting == 'player'
        return PLAYER_MOVE
      elsif setting == 'computer'
        return COMPUTER_MOVE
      else
        invalid_choice
      end
    end
  elsif setting == PLAYER_MOVE then return PLAYER_MOVE
  elsif setting = COMPUTER_MOVE then return COMPUTER_MOVE
  end
end

def place_piece!(brd, current_move_maker)
  current_move_maker == PLAYER_MOVE ? player_places_piece!(brd) : computer_places_piece!(brd)
end

def alternate_player(current_move_maker)
  current_move_maker == PLAYER_MOVE ? COMPUTER_MOVE : PLAYER_MOVE
end



score = [0, 0]

loop do
  board = initialize_board
  display_board(board)
  current_player = move_order(FIRST_MOVE_DECIDER)

  loop do
    display_board(board)
    place_piece!(board, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end

  score_tracker(board, score)
  final_score(score)

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Goodbye!"
