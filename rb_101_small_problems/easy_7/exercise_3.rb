# input: string
# output: string with first character of every word capitalised and the rest lowercase
# split every word in the string argument as an array, delimited by whitespace
# use capitalise method for each word 
# join all elements in array into string using join method
# data structure: array
# algo:
# set new variable for string array
# split(' ') on argument and make it equal to string array
# iterate through each element
# use capitalise on each one
# use join(' ') to turn array into string

def word_cap(string)
  string_array = string.split(' ').map do |word|
    word.capitalize
  end
  string_array.join(' ')
end

# or 
def word_cap(words)
  words.split.map(&:capitalize).join(' ')
end