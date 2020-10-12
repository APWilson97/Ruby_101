# input: two integers, first is count, second is number of first sequence the method creates
# output: array of integers in sequence based on input arguments
# array should have same number of elements as count argument
# values of each element will be multiples of starting number
# count will always have value of 0 or greater
# starting number is any integer value
# 0 for count argument generates an empty array regardless of first sequence number argument
# multiples of 0 are just 0
# negative number multiples are the same with positive ones
# data structure: array
# algo:
# set variable to equal empty array for result
# set multiple counter variable as 1
# do count.times do and push the multiple of the current iteration to the result array and increment multiple counter by 1
# return result array

def sequence(count, first_num)
  result = []
  multiple = 1

  count.times do 
    result << first_num * multiple
    multiple += 1
  end
  result
end

# or
def sequence(count, first)
  sequence = []
  number = first

  count.times do
    sequence << number
    number += first
  end

  sequence
end

# or
def sequence(count, first)
  (1..count).map { |value| value * first }
end

# Ranges have access to Enumerable methods such as map