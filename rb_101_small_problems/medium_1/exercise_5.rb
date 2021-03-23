# input: n (odd integer)
# output: 4 pointed diamond shape (in n x n grid)
# n is an odd integer
# first line has a length of 1
# each line of diamond increases by 2
# the middle line of the diamon has a length of n
# after the middle line, the lines start decreasing by 2 until one last line of 1
# sequence of 1,3,5,7,9... for lines
# data structure: array
# algorithm:
# create a method for creating array of sequence for n diamond shape
  # initialized empty array
  # use a range of 1..n and append the integer to the array if it is odd
# create another method for the reverse sequence
  # initialized empty array and assign it to return value of the initial sequence method reversed
  # iterate from index of 1 and append to the new array
# initialized diamond array variable to the create array method return value
# iterate through the array
# output the * times by the current element in the array


def diamond_array_sequence(number)
  array = []
  1.upto(number) do |n|
    if n.odd?
      array << n
    end
  end
  array
end

def complete_diamond_sequence(number)
  total_sequence = diamond_array_sequence(number)
  reverse_array = diamond_array_sequence(number).reverse
  index = 1
  until total_sequence.size >= number
    total_sequence << reverse_array[index]
    index += 1
  end
  total_sequence
end

def diamond_shape_output(n)
  shape_array = complete_diamond_sequence(n)
  index = 0
  until index >= shape_array.size
    output_stars = '*' * shape_array[index]
    centering = output_stars.center(n)
    puts centering
    index += 1
  end
end

p diamond_shape_output(9)