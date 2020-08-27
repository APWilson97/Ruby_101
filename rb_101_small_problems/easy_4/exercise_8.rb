DIGIT_LIST = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9,
}

def string_to_integer(string)
  digits = string.chars.map { |chars| DIGIT_LIST[chars] }
  
  value = 0
  digits.each { |digit| value = 10 * value + digit}
  value
end

def starting_sign(string)
  if string[0] == '-'
    return -string_to_integer(string[1..-1])
  elsif string[0] == '+'
    return string_to_integer(string[1..-1])
  else
    return string_to_integer(string)
  end
end

def string_to_signed_integer(string)
  case string[0]
  when '-', '+'
    starting_sign(string)
  else
    string_to_integer(string)
  end
end
