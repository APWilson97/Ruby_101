require 'yaml'
MESSAGES = YAML.load_file('mortgage_calculator_messages.yml')

def monthly_payment(loan, monthly_apr, monthly_duration)
  loan.to_f * (monthly_apr / (1 - (1 + monthly_apr)**(-monthly_duration)))
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
  puts "=> #{message}"
end

prompt(MESSAGES['welcome'])
prompt('-----------------')

loop do # main loop
  loan_amount = ''
  loop do
    prompt(MESSAGES['loan_amount'])
    loan_amount = gets.chomp
    if number?(loan_amount) && loan_amount.to_i > 0
      break
    else
      prompt(MESSAGES['invalid_loan_amount'])
    end
  end

  loan_years = ''
  loop do
    prompt(MESSAGES['loan_duration'])
    loan_years = gets.chomp
    if integer?(loan_years) && loan_years.to_i > 0
      break
    else
      prompt(MESSAGES['invalid_loan_duration'])
    end
  end

  apr = ''
  loop do
    prompt(MESSAGES['apr'])
    apr = gets.chomp
    if apr.include?('%')
      apr.delete!('%')
    end
    if number?(apr) && apr.to_i > 0
      break
    else
      prompt(MESSAGES['invalid_apr'])
    end
  end

  loan_months = loan_years.to_i * 12
  monthly_interest = apr.to_f / 100 / 12

  result = monthly_payment(loan_amount.to_f, monthly_interest, loan_months)

  total_payment = result * loan_months

  total_interest = total_payment - loan_amount.to_i

  prompt("Your Monthly Payment is: $#{format('%.2f', result)}")
  prompt("Your Total Payment is: $#{format('%.2f', total_payment)}")
  prompt("Your Total Interest is: $#{format('%.2f', total_interest)}")

  prompt(MESSAGES['calculate_again'])
  answer = gets.chomp.downcase
  break if answer == 'n'
end
prompt('Thank you for using the Mortgage Calculator!')
prompt('Goodbye!')
