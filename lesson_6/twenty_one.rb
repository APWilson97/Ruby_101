require 'pry'

WINNING_TOTAL = 21
DEALER_STAY_NUM = 17
WINNING_ROUNDS = 5

SUITS = ['H', 'D', 'S', 'C']
CARDS = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

def prompt(message)
  puts "==> #{message}"
end

def welcome_message
  prompt "Welcome to Twenty-One!"
end

def initialize_deck
  new_deck = []
  SUITS.each do |suit|
    CARDS.each do |card|
      new_deck << [suit, card]
    end
  end
  new_deck.shuffle
end

def initial_player_hand(deck)
  deck.slice!(0..1)
end

def initial_dealer_hand(deck)
  deck.slice!(0..1)
end

def deal_player_card(hand, deck)
  hand << deck.slice!(0)
end

def deal_dealer_card(hand, deck)
  hand << deck.slice!(0)
end

def hand_total(hand)
  total = hand.map { |cards| cards[1] }

  sum = 0
  total.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i == 0
      sum += 10
    else
      sum += value.to_i
    end
  end

  total.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > WINNING_TOTAL
  end
  sum
end

def busted?(total)
  total > WINNING_TOTAL
end

def player_bust_message
  prompt "You have gone bust!"
end

def dealer_bust_message
  prompt "Dealer has gone bust!"
end

def display_initial_player_hand(hand)
  player_hand = hand.map { |cards| cards[1] }
  prompt "You have: #{player_hand[0]} and #{player_hand[1]}"
end

def display_initial_dealer_hand(hand)
  dealer_hand = hand.map { |cards| cards[1] }
  prompt "Dealer has: #{dealer_hand[0]} and unknown card"
end

def show_hidden_dealer_card(hand)
  dealer_hand = hand.map { |cards| cards[1] }
  prompt "Dealer has: #{dealer_hand[0]} and #{dealer_hand[1]}"
end

def display_dealt_player_card(hand)
  prompt "You have been dealt: #{hand.last.last}"
end

def display_dealt_dealer_card(hand)
  prompt "Dealer has been dealt: #{hand.last.last}"
end

def display_player_hand(hand, total)
  player_hand = hand.map { |cards| cards[1] }.join(', ')
  prompt "Your hand is: #{player_hand} with a total of: #{total}"
end

def display_dealer_hand(hand, total)
  dealer_hand = hand.map { |cards| cards[1] }.join(', ')
  prompt "Dealer's hand is: #{dealer_hand} with a total of: #{total}"
end

def calculating_winner(player_total, dealer_total)
  if busted?(player_total)
    'Player busted'
  elsif busted?(dealer_total)
    'Dealer busted'
  elsif player_total > dealer_total
    'Player won'
  elsif player_total < dealer_total
    'Dealer won'
  else
    'Tie'
  end
end

def update_scoreboard!(player_total, dealer_total, score)
  case calculating_winner(player_total, dealer_total)
  when 'Player won' then score['Player'] += 1
  when 'Dealer busted' then score['Player'] += 1
  when 'Dealer won' then score['Dealer'] += 1
  when 'Player busted' then score['Dealer'] += 1
  end
end

def display_round_winner(player_total, dealer_total)
  case calculating_winner(player_total, dealer_total)
  when 'Player busted'
    prompt "You busted, Dealer won the round!"
  when 'Dealer busted'
    prompt "Dealer busted, You won the round!"
  when 'Player won' then prompt "You won the round!"
  when 'Dealer won' then prompt "Dealer won the round!"
  when 'Tie' then prompt "It's a tie!"
  end
end

def display_score(score)
  prompt "Player: #{score['Player']} - Dealer: #{score['Dealer']}"
end

def display_final_hands(player_hand, player_total, dealer_hand, dealer_total)
  puts "-------Final Totals-------"
  display_player_hand(player_hand, player_total)
  display_dealer_hand(dealer_hand, dealer_total)
  puts "---------Results----------"
end

def next_round
  answer = nil
  prompt "Enter 'n' to move to the next round"
  loop do
    answer = gets.chomp.downcase
    break if answer == 'n'
    prompt "Invalid input. Please enter 'n'"
  end
  clear_screen
end

def display_game_winner(score)
  if score['Player'] == WINNING_ROUNDS
    prompt "Congratulations! You have won the game!"
  elsif score['Dealer'] == WINNING_ROUNDS
    prompt "Oh no! The dealer won the game!"
  end
end

# rubocop:disable Metrics/AbcSize
def player_turn(player_hand, deck, player_total, dealer_total)
  answer = nil
  loop do
    loop do
      puts 'Do you want to hit or stay?'
      answer = gets.chomp.downcase
      break if ['hit', 'h', 'stay', 's'].include?(answer)
      prompt "That's not a valid input. Please enter either hit or stay"
    end
    clear_screen
    if answer == 'hit' || answer == 'h'
      deal_player_card(player_hand, deck)
      display_dealt_player_card(player_hand)
      player_total = hand_total(player_hand)
      display_player_hand(player_hand, player_total)
    end
    break if answer == 'stay' || answer == 's' || busted?(player_total)
  end
  bust_or_stayed?('Player turn', player_total, dealer_total)
end
# rubocop:enable Metrics/AbcSize

def dealer_turn(dealer_hand, deck, dealer_total, player_total)
  loop do
    sleep 2
    clear_screen
    break if hand_total(dealer_hand) > DEALER_STAY_NUM || busted?(dealer_total)
    deal_dealer_card(dealer_hand, deck)
    display_dealt_dealer_card(dealer_hand)
    dealer_total = hand_total(dealer_hand)
    display_dealer_hand(dealer_hand, dealer_total)
  end
  bust_or_stayed?('Dealer turn', player_total, dealer_total)
end

def bust_or_stayed?(turn, player_total, dealer_total)
  if busted?(player_total) || busted?(dealer_total)
    return true
  end
  case turn
  when 'Player turn'
    prompt "You chose to stay with a total of #{player_total}"
  when 'Dealer turn'
    prompt "Dealer chose to stay with a total of #{dealer_total}"
  end
end

def game_finished?(score)
  score['Player'] == WINNING_ROUNDS || score['Dealer'] == WINNING_ROUNDS
end

def reset_scoreboard(score)
  score['Player'] = 0
  score['Dealer'] = 0
end

def play_game_again?
  answer = ''
  loop do
    prompt "Do you want to play again?"
    answer = gets.chomp.downcase
    if ['yes', 'y', 'no', 'n'].include?(answer)
      break
    else
      prompt 'Invalid input. Please enter either yes or no'
    end
  end
  return true if answer == 'yes' || answer == 'y'
  return false if answer == 'no' || answer == 'n'
end

def clear_screen
  system("clear")
end

loop do
  clear_screen
  welcome_message
  scoreboard = { 'Player' => 0, 'Dealer' => 0 }

  deck = initialize_deck

  loop do
    player_hand = initial_player_hand(deck)
    dealer_hand = initial_dealer_hand(deck)
    player_total = hand_total(player_hand)
    dealer_total = hand_total(dealer_hand)

    display_initial_dealer_hand(dealer_hand)
    display_initial_player_hand(player_hand)

    loop do
      player_turn(player_hand, deck, player_total, dealer_total)
      player_total = hand_total(player_hand)
      break if busted?(player_total)
      show_hidden_dealer_card(dealer_hand)
      dealer_turn(dealer_hand, deck, dealer_total, player_total)
      dealer_total = hand_total(dealer_hand)
      break
    end

    unless scoreboard.value?(WINNING_ROUNDS)
      display_final_hands(player_hand, player_total, dealer_hand, dealer_total)
      display_round_winner(player_total, dealer_total)
      update_scoreboard!(player_total, dealer_total, scoreboard)
      display_score(scoreboard)
      next_round
    end
    break if game_finished?(scoreboard)
  end
  display_game_winner(scoreboard)
  reset_scoreboard(scoreboard)
  break unless play_game_again?
end
prompt "Thank you for playing Twenty One!"
