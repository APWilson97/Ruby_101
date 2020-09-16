# input: array
# output: original array but with elements reversed
# object id of the array has to remain the same
# have to return the same array
# mutate the array passed into the method
# reverse the elements in place
# cannot use reverse and reverse! methods
# data structure: array
# algo:
# start loop
# index -1 and increment by 1 until the index == array.size
# each element at each index: push to the original array
# use #uniq! method to get rid of duplicates

def reverse!(array)
  index = 1
  array.each do |element|
    array.unshift(element)
    array.uniq!
  end
  array
end

# or
def reverse!(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end

  array
end