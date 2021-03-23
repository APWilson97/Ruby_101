# input: 2 digits, one is number to be rotated, other is n digit from last to rotate by
# output: rotated integer
# n = 1 returns original number
# n is always positive integer
# n > 1 returns new number
# data structure: integer
# algo:
# convert long integer into an array
# use rotate_array method from before
# modify method to take two arguments
# use second argument as -index for array

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(integer, n)
  integer_array = integer.to_s.chars
  integer_array[-n..-1] = rotate_array(integer_array[-n..-1])
  integer_array.join.to_i
end
