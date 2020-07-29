VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

VALID_CHOICES_SHORT = ['r', 'p', 'sc', 'l', 'sp']

CHOICES_CHANGE = { r: 'rock',
                   p: 'paper',
                   sc: 'scissors',
                   l: 'lizard',
                   sp: 'spock' }

WINNING_MOVES = { rock: ['scissors', 'lizard'],
                  scissors: ['paper', 'lizard'],
                  paper: ['rock', 'spock'],
                  lizard: ['paper', 'spock'],
                  spock: ['rock', 'scissors'],
                  r: ['sc', 'l'],
                  sc: ['p', 'l'],
                  p: ['r', 'sp'],
                  l: ['p', 'sp'],
                  sp: ['r', 'sc'] }

WINNING_SCORE = 5

def test_method
  prompt('message')
end

def prompt(message)
  puts("=> #{message}")
end

def retrieve_user_choice
  user = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    prompt("You can also type them as: #{VALID_CHOICES_SHORT.join(', ')}")
    user = gets.chomp.downcase

    if VALID_CHOICES.include?(user) || VALID_CHOICES_SHORT.include?(user)
      break
    else
      prompt("That's not a valid choice.")
    end
  end
  user
end

def display_choices(player, computer)
  if player.length < 3 && computer.length < 3
    puts("You chose: #{CHOICES_CHANGE[player.to_sym]}; Computer chose: #{CHOICES_CHANGE[computer.to_sym]}")
  else
    puts("You chose: #{player}; Computer chose: #{computer}")
  end
end

def win?(first, second)
  WINNING_MOVES[first.to_sym].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt('You won this round!')
  elsif win?(computer, player)
    prompt('You lost this round!')
  else
    prompt("It's a tie!")
  end
end

def display_score(first_score, second_score)
  prompt("The score is #{first_score} : #{second_score}")
end

def update_score(player, computer, score)
  if win?(player, computer)
    score[:player] += 1
  elsif win?(computer, player)
    score[:computer] += 1
  end
  score
end

def won_match?(score)
  score == WINNING_SCORE
end

def display_match_winner(score)
  if won_match?(score[:player])
    prompt("Congratulations! You are the grand champion!")
  elsif won_match?(score[:computer])
    prompt("Oh no! The computer is the grand champion!")
  end
end

def match_over?(score)
  score[:player] == WINNING_SCORE || score[:computer] == WINNING_SCORE
end

def retrieve_play_again_answer
  gets.chomp.downcase
end

def play_again?(user_answer)
  loop do
    if user_answer == 'y' || user_answer == 'n'
      break
    else
      prompt("Invalid input. Please enter either 'y' or 'n'")
      user_answer = retrieve_play_again_answer
    end
  end
  user_answer
end

loop do
  score = { player: 0, computer: 0 }

  prompt("Welcome to the #{VALID_CHOICES.join(' ')} tournament!")
  puts "\n"
  prompt("You need to win 5 rounds in order to win the tournament!")
  puts "\n"

  loop do
    choice = retrieve_user_choice

    if VALID_CHOICES.include?(choice)
      computer_choice = VALID_CHOICES.sample
    elsif VALID_CHOICES_SHORT.include?(choice)
      computer_choice = VALID_CHOICES_SHORT.sample
    end

    display_choices(choice, computer_choice)

    display_results(choice, computer_choice)

    update_score(choice, computer_choice, score)

    display_score(score[:player], score[:computer])

    prompt("-------------------")

    if match_over?(score)
      display_match_winner(score)
      break
    end
  end

  prompt("Do you want to play again? Press 'y' to play or press 'n' to exit")
  answer = retrieve_play_again_answer
  break unless play_again?(answer) == 'y'
end

prompt("Thank you for playing. Goodbye!")
