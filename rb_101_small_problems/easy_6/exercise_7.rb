# input: array
# output: nested array with two arrays (first half and second half of original array)
# if there are odd number of elements, middle number goes into first array and remaining numbers in the second
# empty array argument returns nested array with two empty arrays
# single element array argument returns nested array with first array containing the single element and the second array being empty
# data structure: array
# algo:
# initialize variable as empty array
# set if condition: if array size is even, slice the first half of array (size / 2) into empty array and then slice second half into array
# else: if array size is odd, slice first half and middle number (size - 2) into array and slice remaining elements into array

def halvsies(original_array)
  if original_array.size.even?
    halfway = original_array.size / 2
    first_half = original_array[0, halfway]
    second_half = original_array[halfway, original_array.size - halfway]
    return [first_half, second_half]
  else
    halfway = (original_array.size / 2) + 1
    first_half = original_array[0, halfway]
    second_half = original_array[halfway, original_array.size - halfway]
    return [first_half, second_half]
  end
end
