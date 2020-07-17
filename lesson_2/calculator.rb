require 'yaml'
MESSAGES = YAML.load_file('messages.yml')

def prompt(message)
  puts "=> #{message}"
end

def number?(num)
  integer?(num) || float?(num)
end

def float?(num)
  /\d/.match(num) && /^-?\d*\.?\d*$/.match(num)
end

def integer?(num)
  /^-?\d+$/.match(num)
end

def operation_to_message(op)
  message = case op
            when '1'
              'Adding'
            when '2'
              'Subtracting'
            when '3'
              'Multiplying'
            when '4'
              'Dividing'
            end
  message
end

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt(MESSAGES['name_invalid'])
  else
    break
  end
end

prompt "Hi #{name}!"

loop do # main loop
  number1 = ''
  loop do
    prompt(MESSAGES['first_num'])
    number1 = gets.chomp
    if number?(number1)
      break
    else
      prompt(MESSAGES['num_invalid'])
    end
  end

  number2 = ''
  loop do
    prompt(MESSAGES['second_num'])
    number2 = gets.chomp

    if number?(number2)
      break
    else
      prompt(MESSAGES['num_invalid'])
    end
  end

  operator_prompt = <<-MSG
   What operation would you like to perform?
   1) add
   2) subtract
   3) multiply
   4) divide
  MSG

  prompt(MESSAGES['operator'])

  operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['operator_invalid'])
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             number1.to_i + number2.to_i
           when '2'
             number1.to_i - number2.to_i
           when '3'
             number1.to_i * number2.to_i
           when '4'
             number1.to_f / number2.to_f
           end

  prompt("The result is #{result}")

  prompt(MESSAGES['another_calc'])
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt(MESSAGES['goodbye'])
