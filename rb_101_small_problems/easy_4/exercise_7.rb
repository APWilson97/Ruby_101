# method convert string of digits into appropriate number as integer
# can't use conversion methods
# all characters are numeric
# input: string
# output: integer

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
  '9' => 9
}

def string_to_integer(string)
  integer = string.each_char { |char| DIGIT_LIST[char]}
end

puts string_to_integer('4321')
puts string_to_integer('570')