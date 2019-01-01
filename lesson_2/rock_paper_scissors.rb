# rock_paper_scissors.rb
#
# This program implements an expanded version of the familiar children's game
# 'Rock Paper Scissors', which also includes lizard and Spock.
# The player is asked to select one of these five options. The computer then
# randomly selects one. A winner between the play and computer is determined
# as follows:
# Spock wins over scissors and rock
# lizard wins over Spock and paper
# rock wins over lizard and scissors
# scissors wins over paper and lizard (ooh - poor lizard!)
# paper wins over Spock and rock

require 'yaml'
MESSAGES = YAML.load_file('rps_game_messages.yml')

ITEMS = { 'S' => 'Spock',
          'l' => 'lizard',
          'r' => 'rock',
          's' => 'scissors',
          'p' => 'paper' }.freeze

WINNERS = { 'S' => %w(s r),
            'l' => %w(S p),
            'r' => %w(l s),
            's' => %w(p l),
            'p' => %w(S r) }.freeze

def display_blank_line
  puts
end

def prompt(message)
  puts "=> #{message}"
end

def read_choice
  choice = nil
  loop do
    display_blank_line
    prompt(MESSAGES['ask_choice'])
    choice = gets.chomp
    choice = 'S' if choice == 'spock'
    break if ITEMS.key?(choice) || ITEMS.value?(choice)
    prompt(MESSAGES['error_choice'])
  end
  choice[0]
end

def play_again?
  prompt(MESSAGES['play_again'])
  gets.chomp.downcase.start_with?('y')
end

prompt(MESSAGES['greeting'])
display_blank_line
prompt(MESSAGES['explain_game'])

loop do
  player_wins = 0
  computer_wins = 0
  ties = 0

  loop do
    player_choice = read_choice
    computer_choice = WINNERS.keys.sample

    display_blank_line
    prompt("You chose '#{ITEMS[player_choice]}'")
    prompt("The computer chose '#{ITEMS[computer_choice]}'")
    if player_choice == computer_choice
      prompt(MESSAGES['tie'])
      ties += 1
    elsif WINNERS[player_choice].include?(computer_choice)
      prompt(MESSAGES['player_wins'])
      player_wins += 1
    else
      prompt(MESSAGES['computer_wins'])
      computer_wins += 1
    end
    display_blank_line

    break if player_wins >= 5 || computer_wins >= 5
  end

  p_game_text = player_wins == 1 ? 'game' : 'games'
  c_game_text = computer_wins == 1 ? 'game' : 'games'
  t_game_text = ties == 1 ? 'tie' : 'ties'
  t_verb_text = ties == 1 ? 'was' : 'were'
  prompt("You have won #{player_wins} #{p_game_text}!")
  prompt("The computer has won #{computer_wins} #{c_game_text}.")
  prompt("There #{t_verb_text} #{ties} #{t_game_text}.")
  display_blank_line
  break unless play_again?
end

prompt(MESSAGES['goodbye'])
display_blank_line
