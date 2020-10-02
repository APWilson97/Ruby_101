# input: string
# output: array (shortest to longest substring order)
# first element in return array is the first substring which is just the first letter from the input
# second element would be the next substring, first two letters from input string
# length of each subsequent substring increments by one
# length of array should be length of input string
# data structure: array
# algo:
# initialize empty array for final result
# initialize loop
# set an substring length variable
# until result array size is equal to input string: 
# slice input string from 0 to substring length variable then push to result array

def leading_substrings(string)
  result = []
  substring_length = 1
  until result.size == string.length
    result << string[0, substring_length]
    substring_length += 1
  end
  result
end

# or
def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end
# string[0..index] returns a substring of string, substring starts at position 0 and ends at position index