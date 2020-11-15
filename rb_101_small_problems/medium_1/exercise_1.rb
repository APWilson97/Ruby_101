# input: array
# output: new array with first element at end of array
# do not use rotate or rotate! methods
# if the array only has 1 element, should return a new array with just that element
# original array should not be modified
# should return a new array instead
# data structure: array
# algo:
# iterate through each element in the array and minus their indexes by 1 using map method

def rotate_array(array)
  array[1..-1] + [array[0]]
end
