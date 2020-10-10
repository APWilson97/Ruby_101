# input: string
# output: array, contains every word from the string to which a space and the word length are appended
# words in the string are separated by one space and that any substring of non-space chars is a word
# punctuation like commas are included in the word length
# data structure: array
# algo:
# separate the string into an array delimited by spaces
# map over it and append the size of the word in the iteration to the current word

def word_lengths(string)
  string.split(' ').map do |word|
    word << ' ' + word.size.to_s
  end
end

# or for a one line solution
def word_lengths(string)
  string.split.map { |word| "#{word} #{word.length}" }
end