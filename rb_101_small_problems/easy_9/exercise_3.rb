# input: integer
# output: negative integer
# if argument is positive, turn it into a negative integer
# if argument is negative, return the original object
# data structure: string
# algo:
# set new variable as string representation of number
# verify if argument is positive or not
# if true, use string interpolation and return the integer conversion
# if false, return original object

def negative(integer)
  string_integer = integer.to_s

  return integer if string_integer.include?('-')
  string_integer = "-#{integer}"
  string_integer.to_i
end

# or
def negative(integer)
  integer > 0 ? -number : number
end