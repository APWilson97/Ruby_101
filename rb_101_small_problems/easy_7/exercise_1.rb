# input: two arrays
# output: new array with elements from both input arrays, elements in alternation
# same number of elements in both arrays
# first element from first array goes into new array first then the first element from the second array etc etc
# first array elements get precedence over the second array elements
# data structure: array
# algo:
# set an empty variable for the new array
# set a variable for the index as 0
# start loop
# push element at index in first array to the new array then do the same for the second array
# increment value of index 
# continue loop until index is equal to the size of both arrays

def interleave(array_1, array_2)
  combined_array = []
  index = 0

  loop do
    combined_array << array_1[index]
    combined_array << array_2[index]
    index += 1
    break if index == array_1.size && index == array_2.size
  end
  combined_array
end

# or
def interleave(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << element << array2[index]
  end
  result
end

# or
def interleave(array1, array2)
  array1.zip(array2).flatten
end