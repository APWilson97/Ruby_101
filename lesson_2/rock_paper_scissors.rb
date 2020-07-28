VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

VALID_CHOICES_SHORT = ['r', 'p', 'sc', 'l', 'sp']

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

def test_method
  prompt('message')
end

def prompt(message)
  puts("=> #{message}")
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

loop do
  player_score = 0
  computer_score = 0

  prompt("Welcome to the #{VALID_CHOICES.join(' ')} tournament!")
  puts "\n"
  loop do
    choice = ''
    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      prompt("You can also type them as: #{VALID_CHOICES_SHORT.join(', ')}")
      choice = gets.chomp

      if VALID_CHOICES.include?(choice) || VALID_CHOICES_SHORT.include?(choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    if VALID_CHOICES.include?(choice)
      computer_choice = VALID_CHOICES.sample
    elsif VALID_CHOICES_SHORT.include?(choice)
      computer_choice = VALID_CHOICES_SHORT.sample
    end

    puts("You chose: #{choice}; Computer chose: #{computer_choice}")

    display_results(choice, computer_choice)

    if win?(choice, computer_choice)
      player_score += 1
    elsif win?(computer_choice, choice)
      computer_score += 1
    end

    display_score(player_score, computer_score)

    prompt("-------------------")

    if player_score == 5
      prompt("Congratulations! You are the grand champion!")
      break
    elsif computer_score == 5
      prompt("Oh no! The computer is the grand champion!")
      break
    end
  end

  prompt("Do you want to play again? Press 'y' to play or press 'n' to exit")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Goodbye!")
