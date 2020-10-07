# input: integer
# output: array of integers in sequence between 1 and the argument
# argument always valid integer that is greater than 0
# size of array is equal to the argument
# 1 and argument are included in returned array
# data structure: array
# algo:
# map through a range of 1 to the argument and return value of block should be integer in every iteration

def sequence(integer)
  (1..integer).map do |number|
    number
  end
end

# or
def sequence(number)
  (1..number).to_a
end