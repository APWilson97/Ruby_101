# input: string
# output: new string, second to last word of the input string
# word is any sequence of non-blank chars
# input string will always have at least two words
# data structure: array
# algo:
# set variable for second to last word in string as an empty array
# use split method on string input and separate based on whitespace
# push the second to last element in string_array into second to last word variable 
# return that variable

def penultimate(string)
  penultimate_word = []

  string_array = string.split
  penultimate_word << string_array[-2]

  penultimate_word.join
end

# or 
def penultimate(words)
  words_array = words.split
  words_array[-2]
end