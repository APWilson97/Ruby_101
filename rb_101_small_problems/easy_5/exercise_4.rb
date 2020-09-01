# first and last letters of each word in a string swapped
# strings separated by spaces
# input = string
# output = string (swapped first and last letters)
# Capital letters remain as is
# Spaces included in output string
# swap first and last letters around
# sub both letters 

def swap(string)
  array = string.split
  swapped_array = array.map do |element|
    element[0], element[-1] = element[-1], element[0]
    element
  end
  swapped_array.join(' ')
end
