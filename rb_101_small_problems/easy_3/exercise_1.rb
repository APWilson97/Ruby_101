array = []

puts '==> Enter the 1st number:'
first = gets.chomp.to_i
array << first

puts '==> Enter the 2nd number:'
second = gets.chomp.to_i
array << second

puts '==> Enter the 3rd number:'
third = gets.chomp.to_i
array << third

puts '==> Enter the 4th number:'
fourth = gets.chomp.to_i
array << fourth

puts '==> Enter the 5th number:'
fifth = gets.chomp.to_i
array << fifth

puts '==> Enter the last number:'
last = gets.chomp.to_i

if array.include?(last)
  puts "The number #{last} appears in #{array}"
else
  puts "The number #{last} does not appear in #{array}"
end