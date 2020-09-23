# input: two arrays
# output: new array that contains the product of each pair of number from arguments that have the same index
# same number of element for both arguments
# new array returned should have same number of elements as arguments
# data structure: array
# algo:
# set variable result as empty array
# use each with index method to iterate through the first array 
# push product of elements at index from both arguments into result array

def multiply_list(array_1, array_2)
  result = []

  array_1.each_with_index do |num, index|
    result << num * array_2[index]
  end
  result
end

# or
def multiply_list(array_1, array_2)
  array_1.zip(array_2).map { |num1, num2| num1 * num2 }
end