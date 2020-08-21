puts ">> Please enter an integer greater than 0"
integer = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
process = gets.chomp

result = (1..integer).to_a
if process == 's'
  result = result.sum
  puts "The sum of the integers between 1 and #{integer} is #{result}."
elsif process == 'p'
  product = 1
  result.each do |number|
    product *= number
  end
  puts "The product of the integers between 1 and #{integer} is #{product}."
end

# Further exploration

# Define into methods for both sum and product
def compute_sum(number)
  range_array = (1..number)
  total = range_array.inject { |sum, x| sum + x}
  total
end

def compute_product(number)
  range_array = (1..number).to_a
  total = range_array.inject { |product, x| product * x }
  total
end