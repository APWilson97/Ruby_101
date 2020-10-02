# input: string
# output: array of all possible substrings
# list ordered by where in the string the substring begins
# substrings that start at position 0 come first then the ones at position 1 and so on
# substrings at each position will be ordered from shortest to longest
# data structure: array
# algo:
# set a result array variable
# set another variable for the position and set at 0
# set the substring_length variable as input string size
# use upto method on position and set its limit as the substring length
# push the sliced substring into the result array from the position to the index in the current iteration
# increment position by 1
# decrement substring length by 1
# loop until position is equal to string length minus 1

def leading_substrings(string)
  result = []
  substring_length = 1
  until result.size == string.length
    result << string[0, substring_length]
    substring_length += 1
  end
  result
end

def substrings(string)
  substring_array = []
  position = 0
  substring_size = string.size

  until position > string.size - 1
    substring_array << leading_substrings(string[position, substring_size])
    position += 1
    substring_size -= 1
  end
  substring_array.flatten
end

def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end