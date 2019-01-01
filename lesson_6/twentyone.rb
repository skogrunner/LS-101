# twentyone.rb
#
# This program allows a user to play twentyone, a form of blackjack,
# against the computer. It is a card game of luck and skill and betting.
# The player starts with a number of chips, designated by the
# constant STARTING_CHIPS. For each hand, the player may bet some number
# of chips between a minimum bet and maximum bet allowed. Of course,
# the player may not bet more chips than the player has at the moment.
#
# For each hand, if the computer wins, the bet is lost. If the player wins,
# the player receives double the chips of the bet. There is one exception -
# if the player is dealt a hand that immediately values to 21 (an Ace and
# any other card worth 10 points), then the player gets an additional bonus
# of 50 percent of the bet, rounded down.
#
# For each hand, the player is dealt two cards. The computer is also dealt
# two cards, but only one card is displayed. The player then has the option
# to be 'hit' (to receive an additional card) or to 'stay' (receive no more
# cards). The player can choose to be 'hit' repeatedly until the player
# decides to 'stay'. If the player at any time has a hand that values
# to more than 21 points, then the player is busted and immediately loses
# the bet.
#
# After the player 'stays' (assuming the player has not been busted), then
# the computer starts drawing additional cards until the computer has
# a hand that is values at 17 points or higher, or the computer is busted
# (the hand is over 21 points). If the computer is busted, the player wins
# the bet. If the computer is not busted, the player hand valuation and the
# computer hand valuation are compared with the higher valuation winning
# the bet. In case of tie, the player's bet is returned as if the hand had
# not been played.
#
# A single deck of cards is used. At any time, if the deck falls below a
# minimum number of cards (designated by constant MINIMUM_CARDS_IN_DECK)
# a new full deck is generated.
#
# A hand is valued as follows: Any number card is worth that number of points.
# A face card (King, Queen, Joker) is worth ten points. An Ace is worth either
# 1 or 11 points, whichever makes the hand valuation higher without going over
# a valuation of 21.
#
# The player will be asked after each hand whether or not to continue playing.
# Hands will be dealt and betting will continue until either the player chooses
# to quit or the player has fewer chips than the minimum bet.

# CONSTANTS start here

STARTING_CHIPS = 1000
MINIMUM_BET = 2
MAXIMUM_BET = 500
MINIMUM_CARDS_IN_DECK = 20
BLACKJACK = 21
DEALER_STAY = 17

DEALER_WIN = -1
TIE = 0
PLAYER_WIN = 1
BLACKJACK_WIN = 2

CARD_POINTS = { 'Ace' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
                '6' => 6, '7' => 7, '8' => 8, '9' => 9,
                '10' => 10, 'Jack' => 10, 'Queen' => 10, 'King' => 10 }.freeze
SUITS = %w[Spades Hearts Diamonds Clubs].freeze
CARDS = %w[Ace 2 3 4 5 6 7 8 9 10 Jack Queen King].freeze

# methods start here. Methods are in alphabetical order.

def ask_player_bet(chips)
  bet = 0
  prompt("You currently have #{chips} chips.")
  loop do
    prompt("How many chips would you like to bet?")
    prompt("You may bet 0 chips to stop playing.")
    bet = gets.strip
    break if integer?(bet) && valid_bet?(bet.to_i, chips)
    prompt("Please try again.")
  end
  bet.to_i
end

def ask_player_name
  name = nil
  loop do
    prompt("What is your name, you lucky player?")
    name = gets.strip
    break unless name.empty?
    prompt("Don't be bashful! Luck is in the stars!")
  end
  name
end

def clear_screen
  system('clear') || system('cls')
end

def continue?
  choice = nil
  loop do
    prompt("Do you wish to be dealt another hand? (enter y or n)")
    choice = gets.strip.downcase
    break if %w[y n].include?(choice)
    prompt("Invalid choice. Please try again.")
  end
  choice == 'y'
end

def deal_card(deck)
  deck.pop
end

def deal_hand(deck)
  [deal_card(deck), deal_card(deck)]
end

def dealer_play(player_hand, dealer_hand, chips, bet, deck)
  value = value_hand(dealer_hand)
  while value < DEALER_STAY
    puts
    prompt("Dealer draws a card")
    dealer_hand << deal_card(deck)
    value = value_hand(dealer_hand)
    sleep(2)
    display_hands(player_hand, dealer_hand, chips, bet)
    sleep(3)
  end
  puts
  value > BLACKJACK ? prompt("Dealer is busted!") : prompt("Dealer stays put")
  sleep(2)
  value
end

def determine_winner(player_value, dealer_value, blackjack)
  if blackjack
    BLACKJACK_WIN
  elsif player_value > BLACKJACK
    DEALER_WIN
  elsif dealer_value > BLACKJACK
    PLAYER_WIN
  else
    player_value <=> dealer_value # -1 dealer win, 0 tie, 1 player win
  end
end

def display_cards(hand)
  hand.each { |card| prompt(card.join(' of ')) }
end

def display_hands(player_hand, dealer_hand, chips, bet)
  clear_screen
  prompt("You have #{chips} chips.")
  prompt("Your current bet is #{bet} chips.")
  puts
  prompt("Your current hand is:")
  display_cards(player_hand)
  puts
  if dealer_hand.size == 2
    prompt("The dealer's face up card is:")
  else
    prompt("The dealer's face up cards are:")
  end
  display_cards(dealer_hand.slice(1..-1))
  puts
end

def display_final_hands(player_hand, dealer_hand, chips, bet)
  prompt("Your bet was #{bet} chips.")
  prompt("You now have #{chips} chips.")
  puts
  prompt("Your hand was:")
  display_cards(player_hand)
  puts
  prompt("The dealer's hand was:")
  display_cards(dealer_hand)
  puts
end

def display_final_message(winner)
  case winner
  when BLACKJACK_WIN
    prompt("BLACKJACK!! You have won 1 1/2 times your bet.")
  when PLAYER_WIN then prompt("You have won the hand.")
  when TIE then prompt("It's a tie. Time for a new deal.")
  when DEALER_WIN then prompt("The dealer has won the hand.")
  else
    prompt("ERROR - contact your system administrator.")
  end
end

def draw?
  choice = nil
  loop do
    prompt("Do you wish to draw another card? (enter y or n)")
    choice = gets.strip.downcase
    break if %w[y n].include?(choice)
    prompt("Invalid choice. Please try again.")
  end
  choice == 'y'
end

def integer?(number_string)
  number_string.match?(/^\d+$/)
end

# rubocop: disable Metrics/MethodLength
# rubocop: disable Metrics/AbcSize
def introduction(name)
  prompt("Twentyone is a simplified variant of Blackjack that should be")
  prompt("familiar to anyone who has played Blackjack.")
  prompt("Twhentyone is a betting game. The player begins with " \
         "#{STARTING_CHIPS} chips.")
  prompt("For each hand, the player may bet a minimum of #{MINIMUM_BET} to")
  prompt("a maximum of #{MAXIMUM_BET} chips.")
  prompt("Play continues until the player decides to stop, or has fewer chips")
  prompt("than the minimum bet, whichever happens first.")
  prompt("Beware of the dealer!! The dealer is a card shark!!")
  puts
  prompt("The object of Twentyone is to get a hand worth as close to 21 points")
  prompt("as possible, without going over 21. If you go over 21 points,")
  prompt("you lose your bet immediately. Assuming neither player nor dealer")
  prompt("goes over 21, highest score wins. In case of tie, no chips are")
  prompt("gained or lost.")
  puts
  prompt("At the beginning of a hand, the player is dealt two cards.")
  prompt("The dealer is also dealt two cards, but only one of them is visible")
  prompt("to the player. The player can ask for additional cards, if desired,")
  prompt("to hopefully improve the hand. After the player is finished,")
  prompt("the dealer begins to draw additional cards until the dealer's hand")
  prompt("is worth 17 points or more, or the dealer's hand is over 21 points,")
  prompt("in which case the player wins the bet.")
  puts
  prompt("Hands are valued as follows: Ace is worth 1 or 11 points.")
  prompt("Jack, Queen, King are worth 10 points. All other cards are worth")
  prompt("their face value.")
  puts
  prompt("Best of luck, #{name}!!")
  prompt("Press enter to continue")
  gets
end
# rubocop: enable Metrics/MethodLength
# rubocop: enable Metrics/AbcSize

def new_deck
  deck = []
  CARDS.each do |card|
    SUITS.each do |suit|
      deck << [card, suit]
    end
  end
  deck.shuffle
end

def player_play(player_hand, dealer_hand, chips, bet, deck)
  value = value_hand(player_hand)
  until value > BLACKJACK
    display_hands(player_hand, dealer_hand, chips, bet)
    break unless draw?
    player_hand << deal_card(deck)
    value = value_hand(player_hand)
  end
  puts
  value > BLACKJACK ? prompt("Player is busted!") : prompt("Player stays put")
  sleep(2)
  value
end

def prompt(message)
  puts "=> #{message}"
end

def settle_bet(bet, winner)
  if winner == BLACKJACK_WIN # BLACKJACK pays 1 1/2 times bet
    (3 * bet) / 2
  else
    bet * winner # -1 dealer win, 1 player win, 0 tie
  end
end

def valid_bet?(bet, chips)
  valid = false
  if bet > chips
    prompt("You do not have enough chips for your bet!")
  elsif bet > MAXIMUM_BET
    prompt("Bet is over the maximum bet of #{MAXIMUM_BET}")
  elsif bet < MINIMUM_BET && bet != 0
    prompt("Bet is under the minimum bet of #{MINIMUM_BET}")
  else
    valid = true
  end
  valid
end

def value_hand(hand)
  # aces can be valued at either 1 or 11. In traditional Twentyone,
  # at most one ace can be valued at 11. However, this is written
  # to be scalable to BLACKJACK at any level.
  value = hand.reduce(0) { |sum, card| sum + CARD_POINTS[card[0]] }
  aces = hand.count { |card| card[0] == 'Ace' }
  while aces > 0 && value <= BLACKJACK - 10
    value += 10
    aces -= 1
  end
  value
end

# main logic starts here

deck = []
name = ask_player_name
clear_screen
introduction(name)

chips = STARTING_CHIPS

loop do
  deck = new_deck if deck.size < MINIMUM_CARDS_IN_DECK
  bet = ask_player_bet(chips)
  break if bet == 0 # player does not wish to continue
  blackjack = false
  player_hand = deal_hand(deck)
  dealer_hand = deal_hand(deck)
  player_value = value_hand(player_hand)
  dealer_value = value_hand(dealer_hand)
  if player_value == BLACKJACK
    blackjack = true
  else
    player_value = player_play(player_hand, dealer_hand, chips, bet, deck)
    unless player_value > BLACKJACK
      dealer_value = dealer_play(player_hand, dealer_hand, chips, bet, deck)
    end
  end
  winner = determine_winner(player_value, dealer_value, blackjack)
  chips += settle_bet(bet, winner)
  clear_screen
  display_final_message(winner)
  display_final_hands(player_hand, dealer_hand, chips, bet)
  break unless chips >= MINIMUM_BET && continue?
end

prompt("Thank you for playing Twentyone, #{name}.")
if chips < MINIMUM_BET
  prompt("Better luck next time!")
else
  prompt("You have #{chips} chips. Remember to cash them in!")
end
