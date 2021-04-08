# input: text file
# output: string that is longest sentence as well as integer for number of words in longest sentence
# rules:
# longest sentence based on number of words
# sentences can end with periods, exclamation points or question marks
# anything that isn't a space or sentence ending character is a word
# -- counts as a word
# each sentence ends with either ., ! or ?
# data structure: array
# algorithm:
# create a variable that is an array full of all sentences in the text file
# initialize variable to empty hash, keys being the sentences and the values as the sentence length
# iterate through array and add each sentence as a key to the hash and add their lengths as their values
# sort the hash in ascending order of their values
# initialized two variables, one for the sentence and the other for the value and output both of them


sample_text = File.read('84-0.txt')


def longest_sentence(text)
  sentence_array = text.split(/\.|\?|!/)
  sentence_lengths = []

  sentence_array.each do |sentence|
    sentence_lengths << [sentence.split.size, sentence]
  end
  sorted_lengths = sentence_lengths.sort
  length, sentence = sorted_lengths.last
  puts sentence
  puts "Containing #{length} words"
end

# or

text = File.read('sample_text.txt')
sentences = text.split(/\.|\?|!/)
largest_sentence = sentences.max_by { |sentence| sentence.split.size }
largest_sentence = largest_sentence.strip
number_of_words = largest_sentence.split.size

puts "#{largest_sentence}"
puts "Containing #{number_of_words} words"