# Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.

# rules:
# difference between square of sum of first n positive integers and sum of squares of first n positive integers

# data structure: integer

# algorithm:
# helper method 1: find square of the sum of the first positive n integers
  # initialize sum variable to 0
  # from 1 to n, increment sum by each number
  # return the square of sum
# helper method 2: find sum of squares of the first positive n integers
  # initialize squares variable to 0
  # from 1 to n, square each number and increment sum by the return value
  # return sum of squares
# return difference between return values of method 1 and 2

def find_square_of_sum(n)
  sum = 0
  1.upto(n) do |num|
    sum += num
  end
  sum ** 2
end

def find_sum_of_squares(n)
  squares = 0
  1.upto(n) do |num|
    squares += num ** 2
  end
  squares
end

def sum_square_difference(n)
  square_sum = find_square_of_sum(n)
  sum_of_squares = find_sum_of_squares(n)
  square_sum - sum_of_squares
end


p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150