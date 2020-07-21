def get_loan_amount
  loan = gets.chomp
end

def get_loan_duration
  duration = gets.chomp
end

def get_apr
  initial_apr = gets.chomp
end

def number?(num)
  integer?(num) || float?(num)
end

def integer?(num)
  /^-?\d+$/.match(num)
end

def float?(num)
  /\d/.match(num) && /^-?\d*\.?\d*$/.match(num)
end

def prompt(message)
  puts "==> #{message}"
end

prompt('welcome to the mortgage/car loan calculator!')

loop do # main loop
  
  loop do
    prompt('Please enter the loan amount')
    loan_amount = get_loan_amount
    if number?(loan_amount) && loan_amount.to_i > 0
      break
    else
      prompt('Invalid input. Please enter a loan amount that is greater than 0')
    end
  end
  
  loop do
    prompt('Please enter the number of years for the loan duration')
    loan_duration = get_loan_duration
    if integer?(loan_duration) && loan_duration.to_i > 0
      break
    else
      prompt('Invalid input. Please enter the loan duration in years as single digits greater than 0')
    end
  end

  loop do
    prompt('Please enter the APR rate as single digits. For example: 2, 5, or 22. (You do not have to include the % sign)')
    apr = get_apr
    if number?(apr) && apr.to_i > 0
      break
    else
      prompt('Invalid input. Please enter a valid number for the APR that is also greater than 0')
    end  
  end
end