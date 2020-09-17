# input: two arrays
# output: array with all values from both arrays
# no duplication of values in returned array, even if there are duplicates in original array
# data structure: array
# algo:
# initialze new variable as empty array
# iterate through both input arrays and push all elements into new array
# use uniq to get rid of duplicates

def merge(first_array, second_array)
  merged_array = []
  first_array.each do |elements|
    merged_array << elements
  end
  second_array.each do |elements|
    merged_array << elements
  end
  merged_array.uniq
end

# or
def merge(array_1, array_2)
  array_1 | array_2
end