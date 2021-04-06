# input: integer
# output: new integer which is the fibonacci number
# fibonacci number is the sum of the previous two integers starting with 1 and 1
# first and second fibonacci numbers are 1 and 1
# without recursion
# procedural method to calculate fibonacci number
# when calculating fibonacci number with recursion, the method subtracted number until it was 1 to calculate each number in all levels
# data structure: integer
# algorithm:
# create an array variable that contains the first two fibonacci numbers
# create a counter variable starting at 1
# initialize a loop
# do the sum of the last element with the previous element 
# increment the counter variable 
# do this until the counter variable is greater than the size of the fibonacci sequence array

def fibonacci(n)
  return 1 if n <= 2
  sequence = [1,1]
  counter = 1
  until counter >= n - 1
    sequence << sequence[counter] + sequence[counter - 1]
    counter += 1
  end
  sequence.last
end

# or

def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end