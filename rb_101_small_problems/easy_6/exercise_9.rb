# input: array and search value
# output: boolean true or false
# search value can be objects other than an integer (e.g. nil value)
# searching for nil in an empty array returns false
# nil is a valid object as an element in an array
# search for value in second argument within array given as first argument
# cannot use include? method
# data structure: array
# algo:
# iterate through the array
# use the count method to check whether the search value appears in the array argument
# if the return value of the count method is 1 then return true, false if not

def include?(array, search_value)
  if array.count(search_value) == 1
    return true
  else
    return false
  end
end

# or
def include?(array, value)
  !!array.find_index(value)
end