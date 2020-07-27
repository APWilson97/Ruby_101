require 'yaml'
MESSAGES = YAML.load_file('messages.yml')

def messages(message, lang='en')
  lang = 'en' if lang == '1' || lang == 'english'
  lang = 'jp' if lang == '2' || lang == 'japanese'
  MESSAGES[lang][message]
end

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

prompt(MESSAGES['language'])
selected_lang = gets.chomp.downcase

prompt(messages('welcome', selected_lang))

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt(messages('name_invalid', selected_lang))
  else
    break
  end
end

puts format(messages('greeting', selected_lang), name: name)

loop do # main loop
  number1 = ''
  loop do
    prompt(messages('first_num', selected_lang))
    number1 = gets.chomp
    if number?(number1)
      break
    else
      prompt(messages('num_invalid', selected_lang))
    end
  end

  number2 = ''
  loop do
    prompt(messages('second_num', selected_lang))
    number2 = gets.chomp

    if number?(number2)
      break
    else
      prompt(messages('num_invalid', selected_lang))
    end
  end

  prompt(messages('operator', selected_lang))

  operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(messages('operator_invalid', selected_lang))
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

  puts format(messages('result', selected_lang), result: result)

  prompt(messages('another_calc', selected_lang))
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt(messages('goodbye', selected_lang))
