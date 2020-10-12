# input: array
# output: array
# input array is grocery list of fruits and quantities
# output is an array of the correct number of each fruit
# the output array list is in order of the input array grocery list
# set new variable as an empty array for the resulting list of fruit 
# iterate through each of the sub arrays in the input array
# use times do to push the fruit into the resulting array the correct number of times
# return the result array

def buy_fruit(grocery_list)
  result = []
  grocery_list.each do |sub_list|
    sub_list[1].times do 
      result << sub_list[0]
    end
  end
  result
end

# or
def buy_fruit(list)
  expanded_list = []

  list.each do |item|
    fruit, quantity = item[0], item[1]
    quantity.times { expanded_list << fruit }
  end

  expanded_list
end

# you could use block parameters to access each element of the sub arrays like so:
list.each do |fruit, quantity|
  quantity.times { expanded_list << fruit }
end

# or
def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

# use block parameters to access each element of the sub arrays
# doing fruit * quantity instead of [fruit] * quantity will do string concatenation instead which is not what we want ('appleappleapple'). We want an array containing the required quantity of each fruit as separate strings.