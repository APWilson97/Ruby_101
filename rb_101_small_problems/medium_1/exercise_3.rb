# input: integer to be rotated
# output: rotated integer
# leading zeros are dropped
# length of one integers should just return that same integer
# sequence - rotate first number, then keep first digit fixed and then rotate remaining digits, then keep next 2 digits fixed and rotate the remaining digits and then 3 fixed and then 4 fixed until you have to rotate the remaining 2 digits
# data structure: array
# algo:
# loop the rotate_rightmost_digits method
# set index variable for n in method as -size of array
# increment the variable by one each time
# break loop if n is same as -1


def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(integer, n)
  integer_array = integer.to_s.chars
  integer_array[-n..-1] = rotate_array(integer_array[-n..-1])
  integer_array.join.to_i
end

def max_rotation(integer)
  index = integer.to_s.size
  until index == 1
    integer = rotate_rightmost_digits(integer, index)
    index -= 1
  end
  integer
end
