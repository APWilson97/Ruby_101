# input: integer
# output: index of number that has the number of digits specified in the input
# first two numbers in sequence are 1
# each subsequent number is the sum of the previous 2 numbers
# index of first Fibonnaci number is 1 (starts from 1 instead of 0)
# input is always greater than or equal to 2
# data structure: array 
# algo: define a separate method for generating the fibonacci sequence. In the method, set a variable as an array with the first two elements as 1. Use the last() method and select the last two elements of the array and use sum method to find the sum. Push the return value of the sum method into the array and repeat the process to get the sequence. 
# do this process until the latest integer is equal in number of digits to the integer argument (convert latest integer in sequence to a string to find out the number of digits).
# set the (index + 1) to the result variable.

def find_fibonacci_index_by_length(number_of_digits)
  sequence = [1,1]
  latest_digit = nil
  loop do
    break if latest_digit.to_s.length == number_of_digits
      next_digit_in_sequence = sequence.last(2).sum
      sequence << next_digit_in_sequence
      latest_digit = sequence.last
    end
  result = (sequence.index(latest_digit)) + 1
end

# or
def find_fibonacci_index_by_length(number_digits)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= number_digits

    first = second
    second = fibonacci
  end

  index
end