# input: integer
# output: if argument is double number, leave as is
# if not double number, times by 2
# double number - even number of digits (left side digits same as right side)
# if the number of digits is odd then times by 2
# data structure: array
# algo:
# first check if the argument has odd number of integers, if it does then multiply by 2
# if it has even numbers, set two new variables
# convert input into string and set each variable as left side and right side of input
# do a comparison between them to see if they are equal
# if they are then return input as is
# if not, double the input

def twice(integer)
  first_half = ''
  second_half = ''
  string_integer = integer.to_s
  half_way = string_integer.size / 2

  if string_integer.size.odd?
    return integer * 2
  elsif string_integer.size.even?
    first_half << string_integer[0..half_way - 1]
    second_half << string_integer[half_way..-1]
  end
  
  return integer if first_half == second_half
  return integer * 2
end

# or
def twice(number)
  string_number = number.to_s
  center = string_number.size / 2
  left_side = center.zero? ? '' : string_number[0..center - 1]
  right_side = string_number[center..-1]

  return number if left_side == right_side
  return number * 2
end