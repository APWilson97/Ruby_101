# input: array
# output: integer, array elements multiplied together and divided by number of elements, rounded to 3 decimal places
# array is non empty
# 3 decimal place format (e.g. 6.000)
# data structure: array
# algo:
# set variable for the result and set as 1
# multiply the result value with each element in the array using the each method
# divide the result variable by array size
# use format method to print result variable in 3 decimal places

def show_multiplicative_average(array)
  multiplied_product = array.inject do |product, num|
    product * num
  end
  result = multiplied_product.to_f / array.size.to_f
  
  puts format("%#.3f", result)
end

# or
def show_multiplicative_average(numbers)
  product = 1.to_f
  numbers.each { |number| product *= number }
  average = product / numbers.size
  puts "The result is #{format('%.3f', average)}"
end