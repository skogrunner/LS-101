# tic_tac_toe.rb
#
# This program allows a user to play Tic Tac Toe against a computer.
# First to win 5 games wins the match.
# Tic Tac Toe is played on a 3 by 3 grid. The user and the computer alternate
# making moves (placing a counter on the grid). The first to get three counters
# in a row, horizontally, vertically, or diagonally, wins the game.
#
# The computer has some artificial intelligence built in. Nonetheless,
# it should be possible for an experienced Tic Tac Toe player to
# consistently win matches if the player has the first turn.

# CONSTANTS start here

# FIRST_TURN constant can be set to determine whether player goes first
# (value of 'P') or computer goes first (value of 'C') or it is the
# players choice (any other value).

FIRST_TURN = 'X'

# SQUARE_TO_ROW and SCORING_ROWS are calculated as follows:
# Each grid square maps to an array consisting of all of the scoring rows it
# participates in
# Scoring rows 0-2 are the three horizontal rows, from top to bottom
# Scoring rows 3-5 are the three vertical rows, from left to right
# Scoring row 6 is the diagonal row from bottom left to top right
# Scoring row 7 is the diagonal row from top left to bottom right

SQUARE_TO_ROW = { '1' => [0, 3, 7],
                  '2' => [0, 4],
                  '3' => [0, 5, 6],
                  '4' => [1, 3],
                  '5' => [1, 4, 6, 7],
                  '6' => [1, 5],
                  '7' => [2, 3, 6],
                  '8' => [2, 4],
                  '9' => [2, 5, 7] }.freeze

SCORING_ROWS = { 0 => %w[1 2 3],
                 1 => %w[4 5 6],
                 2 => %w[7 8 9],
                 3 => %w[1 4 7],
                 4 => %w[2 5 8],
                 5 => %w[3 6 9],
                 6 => %w[7 5 3],
                 7 => %w[1 5 9] }.freeze

PLAYER_ICON = 'X'
COMPUTER_ICON = 'O'
FREE_SQUARE = ' '

BEST_SQUARE = '5'

WINNING_SCORE = 5

# methods start here. Methods are in alphabetical order.

def ask_player_move(moves)
  text = joinor(moves)
  move = nil
  loop do
    prompt("Please select your next move.")
    prompt "You can select #{text}."
    move = gets.strip
    break if moves.include?(move)
    prompt("Invalid move. Please try again.")
  end
  move
end

def ask_player_name
  name = nil
  loop do
    prompt("What, pray tell, is your heroic name?")
    name = gets.strip
    break unless name.empty?
    prompt("Don't be bashful!")
  end
  name
end

def available_moves(board)
  board.select { |_, val| val == FREE_SQUARE }.keys
end

def clear_row_status(row_status)
  row_status.map! { 0 }
end

def clear_screen
  system('clear') || system('cls')
end

def computer_move(board, status)
  move = if status.include?(-2) # two in a row for computer, computer will win
           find_free_square(board, SCORING_ROWS[status.index(-2)])
         elsif status.include?(2) # two in a row for player, computer blocks
           find_free_square(board, SCORING_ROWS[status.index(2)])
         elsif board[BEST_SQUARE] == FREE_SQUARE
           # center square is the most strategic choice
           BEST_SQUARE
         else
           available_moves(board).sample
         end
  board[move] = COMPUTER_ICON
  SQUARE_TO_ROW[move].each { |scoring_row| status[scoring_row] -= 1 }
end

def computer_win?(status)
  status.include?(-3)
end

# rubocop: disable Metrics/MethodLength
# rubocop: disable Metrics/AbcSize
def display_board(board, clear = true)
  clear_screen if clear

  puts "Player marker = #{PLAYER_ICON}     Computer marker = #{COMPUTER_ICON}"
  puts
  puts " _______ _______ _______ "
  puts "|1      |2      |3      |"
  puts "|       |       |       |"
  puts "|   #{board['1']}   |   #{board['2']}   |   #{board['3']}   |"
  puts "|       |       |       |"
  puts "|       |       |       |"
  puts "|_______|_______|_______|"
  puts "|4      |5      |6      |"
  puts "|       |       |       |"
  puts "|   #{board['4']}   |   #{board['5']}   |   #{board['6']}   |"
  puts "|       |       |       |"
  puts "|       |       |       |"
  puts "|_______|_______|_______|"
  puts "|7      |8      |9      |"
  puts "|       |       |       |"
  puts "|   #{board['7']}   |   #{board['8']}   |   #{board['9']}   |"
  puts "|       |       |       |"
  puts "|       |       |       |"
  puts "|_______|_______|_______|"
  puts
end
# rubocop: enable Metrics/MethodLength
# rubocop: enable Metrics/AbcSize

def display_score(score, name)
  p_game_text = score[:player] == 1 ? 'game' : 'games'
  c_game_text = score[:computer] == 1 ? 'game' : 'games'
  t_game_text = score[:tie] == 1 ? %w[is tie] : %w[are ties]
  puts
  prompt("#{name} has won #{score[:player]} #{p_game_text}.")
  prompt("The computer has won #{score[:computer]} #{c_game_text}.")
  prompt("There #{t_game_text[0]} #{score[:tie]} #{t_game_text[1]}.")
  puts
end

def find_free_square(board, scoring_row)
  # find free square in row
  board.select { |key, _| scoring_row.include?(key) }.key(FREE_SQUARE)
end

def introduction(name)
  prompt("Welcome to Tic Tac Toe, #{name}!")
  prompt("You and the computer will alternate placing markers on a 3x3 grid.")
  prompt("The object of Tic Tac Toe is to get three markers in a row,")
  prompt("horizontally, vertically, or diagonally, before the computer does.")
  prompt("If neither side has won, and there are no more free squares,")
  prompt("the game is considered to be a tie.")
  puts
  prompt("The first to win #{WINNING_SCORE} games has won the match.")
  prompt("However, if you get tired of playing, you may exit after any game.")
  puts
  prompt("Enjoy!!")
  puts
  prompt("Press enter to continue")
  gets
end

def joinor(str_array, sep = ', ', cond = 'or')
  return '' if str_array.empty?
  return str_array[0] if str_array.size == 1
  str_array[0..-2].join(sep) + sep + cond + ' ' + str_array[-1]
end

def new_board
  %w[1 2 3 4 5 6 7 8 9].zip(Array.new(9, FREE_SQUARE)).to_h
end

def player_chooses_first?
  choice = nil
  loop do
    prompt("Would you like to go first or second? (enter 1 or 2)")
    choice = gets.strip
    break if %w[1 2].include?(choice)
    prompt("I'm sorry. I did not understand your answer. Please try again.")
  end
  choice == '1'
end

def player_continues?
  prompt("First to win five games wins the match.")
  choice = nil
  loop do
    prompt("Do you wish to continue? (enter y or n)")
    choice = gets.strip.downcase
    break if %w[y n].include?(choice)
    prompt("Invalid choice. Please try again.")
  end
  choice == 'y'
end

def player_move(board, status)
  moves = available_moves(board)
  move = ask_player_move(moves)
  board[move] = PLAYER_ICON
  SQUARE_TO_ROW[move].each { |scoring_row| status[scoring_row] += 1 }
end

def player_win?(status)
  status.include?(3)
end

def prompt(message)
  puts "=> #{message}"
end

def tie?(board)
  board.values.all? { |val| val != FREE_SQUARE } # no free squares remaining
end

# main body of code starts here

# row_status checks the status of the eight scoring rows
# (see constant SCORING_ROWS). Each time a player selects a square,
# each row that the square is in will have +1 added to its row status.
# Each time the computer selects a square, -1 will be added
# to the appropriate row statuses.
# A row status of +2 means that the player has two markers on the
# row with the third row square being a free space, so the player can win
# on the next turn. Conversely, a row status of -2 means that the
# computer has two markers on the row already, with the third square
# being a free space.
# A row status of +3 or -3 means that the player or the computer has
# three in a row, and has won the game.
row_status = Array.new(8)

name = ask_player_name
clear_screen
introduction(name)

score = { player: 0, computer: 0, tie: 0 }

loop do
  board = new_board
  clear_row_status(row_status)
  player_turn = if FIRST_TURN == 'P'
                  true
                elsif FIRST_TURN == 'C'
                  false
                else
                  player_chooses_first?
                end
  loop do
    if player_turn
      display_board(board)
      player_move(board, row_status)
      if player_win?(row_status)
        display_board(board)
        prompt("Congratulations, #{name}! You have won!")
        score[:player] += 1
        break
      end
    else
      computer_move(board, row_status)
      if computer_win?(row_status)
        display_board(board)
        prompt("Drat!! The dastardly computer won!")
        score[:computer] += 1
        break
      end
    end
    if tie?(board)
      display_board(board)
      prompt("Much sound and fury signifying nothing. It's a tie.")
      score[:tie] += 1
      break
    end
    player_turn = !player_turn
  end

  display_score(score, name)
  if score[:player] >= WINNING_SCORE
    prompt("#{name} has won the match. Groovy, man!")
    break
  end
  if score[:computer] >= WINNING_SCORE
    prompt("The computer has won the match. Better luck next time!")
    break
  end
  break unless player_continues?
end

prompt("Thank you for playing Tic Tac Toe, #{name}. We hope you had fun.")
prompt("Goodbye.")
