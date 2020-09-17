# input: array
# output: new array with elements of original list in reverse order
# new object so object id has to be different from the original array's id
# cannot modify the original list (cannot use any mutating methods)
# cannot use reverse or reverse! methods
# cannot use the method i used in previous exercise
# data structure: array
# algo:
# set new variable as empty array
# set index variable for end of the array (-1)
# start loop
# push the element at the index to the array until index is equal to the size of the original array

def reverse(array)
  index = -1
  reversed_array = []
  until -index > array.size
    reversed_array << array[index]
    index -= 1
  end
  reversed_array
end
    