# Question 1

10.times { |x| puts (' ' * x) + "The Flintstones Rock! "}

# Question 2

# Type error would occur because the result of the integers in parentheses have not been converted into a string and cannot concatenate with the string before it.

puts "the value of 40 + 2 is " + (40+2).to_s

puts "the value of 40 + 2 is #{40+2}"

# Question 3

def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

# Bonus 1: number % divisor == 0 determines whether the number in the current iteration is a factor of the original number used as the method's argument. 

# Bonus 2: This makes sure that the return value of the method is the factors method because it is the last statement that is executed. Otherwise the return value would be nil. 

# Question 4

# rolling_buffer1 will have modified the original object of 'buffer' (caller input array argument) after it has returned a value because << is a mutating method. 

# rolling_buffer2 will not have modified the original object (caller input array argument)

# Question 5

# Method definitions are self-contained so the fib method cannot access variables outside of its scope nor can the outer scope access variables defined within the method. The fib method is trying to access the limit variable but it is defined outside of the methods scope, hence the error. 

def fib(first_num, second_num, limit_num)
  while first_num + second_num < limit_num
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

# Make additional parameter for the limit variable when defining fib method so that the limit variable can be passed into method as an argument. 

# Question 6

34

# Question 7

# It did because when iterating through each value hash in all key value pairs, the method re-assigned the values of the age and gender keys. This would normally not be mutating as re-assignment only makes the keys reference another object instead, but the munsters variable still references the original hash object (which has been modified.)
# Ruby passes the object id of the munsters hash into the method. demo_hash initially points to the munsters hash but stays that way. The data within it is re-assigned but demo_hash still points to the original munsters hash, so the munstershash then becomes modified and the original data is lost.

# Question 8

"paper"

#Question 9

"no"