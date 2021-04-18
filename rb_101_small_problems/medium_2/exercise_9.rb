# input: array
# output: same array mutated (bubble sorted)
# rules:
# each pair of consecutive element compared on each pass
# if first of two elements greater than then the two element are swapped
# repeated process until a pass is made without swaps
# sort in place, so mutate array passed in as an argument
# array contains at least 2 elements
# input array can also contain strings, ordered based on alphabetical order
# data structure: array
# algorithm:
# initialize index variable to 0
# set loop
# initialize exchange check variable to empty array
# until index == index - 1
# if element at current index is greater than element at element at index + 1, element at current index is equal to element at next index and vice versa
# and then append 'exchange' string to exchange check variable 
# else index + 1
# and then append 'no exchange' string to exchange check variable 
# exit loop
# if exchange check variable all is 'no exchange' then return input array

def bubble_sort!(array)
  loop do
    index = 0
    exchange_check = []
    until index == array.size - 1
      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        exchange_check << 'exchange'
      else
        exchange_check << 'no exchange'
      end
      index += 1
    end
    return array if exchange_check.all? { |word| word == 'no exchange'}
  end
end

# or
def bubble_sort!(array)
  loop do
    swapped = false
    1.upto(array.size - 1) do |index|
      next if array[index - 1] <= array[index]
      array[index - 1], array[index] = array[index], array[index - 1]
      swapped = true
    end

    break unless swapped
  end
  nil
end