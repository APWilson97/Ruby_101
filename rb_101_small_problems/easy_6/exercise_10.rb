# input: positive integer
# output: right angle triangle with sides that have input amount of stars
# hypotenuse should have one star in bottom left and top right of triangle
# triangle is formed by printing out rows 
# first row is top right of the triangle with one star
# number of stars in each row increments by one until the positive integer argument
# the number of spaces per line decrements by one, starting from 1 minus the input
# data structure: string
# algo:
# set variable for initial number of spaces as input - 1
# set variable for number of stars as 1 initially
# start loop
# until number of stars is greater than input, do string interpolation where you print " " * variable number of spaces and "*" * number of stars variable

def triangle(length)
  number_of_spaces = length - 1
  number_of_stars = 1

  until number_of_stars > length
    puts "#{' ' * number_of_spaces}#{'*' * number_of_stars}"
    number_of_spaces -= 1
    number_of_stars += 1
  end
end

# or
def triangle(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end