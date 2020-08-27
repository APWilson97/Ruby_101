# input: array of numbers
# output: array with same number of elements, each element has running total from original array
# first element of new array stays the same, subsequent elements are sum of previous elements
# push element at index 0 to new array, iterate through original array and add subsequent element to index 0 element and push to new array until size is the same as original array
# create new variable for sum of current element and push it to new array after each iteration
# or use inject or reduce
# empty arrays should return empty
# arrays with one element should return the same

def running_total(array)
  sum = 0
  element_sum_array = []
  until array.size == element_sum_array.size do
    array.each do |element|
      sum += element
      element_sum_array << sum
    end
  end
  element_sum_array
end

p running_total([2,5,13])
p running_total([14,11,7,15,20])
p running_total([3])
p running_total([])