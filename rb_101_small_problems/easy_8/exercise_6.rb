# input: two integers,first is starting number and second is ending number
# output: print all numbers between two numbers, if number is divisible by 3 then print Fizz, if divisible buy 5 then print Buzz
# if the number is divisible by both 3 and 5 then print FizzBuzz
# data structure: array
# algo:
# set the two input numbers as a range and iterate through each of the numbers 
# set a new variable as an empty array
# whilst iterating, verify if the numbers are divisible by 3 or 5 or both 
# push the result of the verification to the array
# use join method to turn array variable into a string

def fizzbuzz(start, finish)
  sequence = []
  
  (start..finish).each do |integer|
    if integer % 3 == 0 && integer % 5 == 0
      sequence << 'FizzBuzz'
    elsif integer % 3 == 0
      sequence << 'Fizz'
    elsif integer % 5 == 0
      sequence << 'Buzz'
    else
      sequence << integer
    end
  end
  puts sequence.join(', ')
end

# or 
def fizzbuzz(starting_number, ending_number)
  result = []
  starting_number.upto(ending_number) do |number|
    result << fizzbuzz_value(number)
  end
  puts result.join(', ')
end

def fizzbuzz_value(number)
  case
  when number % 3 == 0 && number % 5 == 0
    'FizzBuzz'
  when number % 5 == 0
    'Buzz'
  when number % 3 == 0
    'Fizz'
  else
    number
  end
end