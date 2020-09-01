# counts number of words of different sizes
# input = string
# output = hash, each symbol is length of word and value is how many times that length of word appears
# non-alphanumeric characters are counted as well
# words are any string of characters that don't include a space
# make an empty hash
# turn string into array
# iterate through array, length of element is hash key
# occurrences is value

def word_sizes(string)
  word_count = Hash.new(0)

  string.split.each do |element|
    word_count[element.size] += 1
  end
  word_count
end

# With Hash.new(): return empty hash. Object between () is the default value for any new key that doesn't already exist in the hash.