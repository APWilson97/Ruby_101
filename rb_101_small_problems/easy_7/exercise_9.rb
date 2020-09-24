# input: two arrays (with list of numbers)
# output: new array containing product of every pair of numbers that can be formed between the elements of both arrays, result should be sorted by increasing value
# result array size should be size of argument arrays multiplied
# end result should be sorted in ascending order
# data structure: array
# algo:
# set variable for result as an empty array
# iterate through the first array argument and push subset arrays of each pair combination of elements from both argument arrays into results array (can iterate through another array in real time whilst iterating through the another one)
# calculate the product of each nested array pair in the results array and then flatten
# use sort method to sort in ascending order

def multiply_all_pairs(array1, array2)
  pairs_nested_array = []

  array1.each do |num1|
    array2.each do |num2|
      pairs_nested_array << [num1, num2]
    end
  end
  pairs_nested_array.map! do |num1, num2|
    num1 * num2
  end
pairs_nested_array.sort { |num1, num2| num1 <=> num2}
end

# or 
def multiply_all_pairs(array_1, array_2)
  products = []
  array_1.each do |item_1|
    array_2.each do |item_2|
      products << item_1 * item_2
    end
  end
  products.sort
end

# or 
def multiply_all_pairs(array_1, array_2)
  array_1.product(array_2).map { |num1, num2| num1 * num2 }.sort
end