puts 'Enter a noun:'
noun = gets.chomp

puts 'Enter a verb:'
verb = gets.chomp

puts 'Enter an adjective:'
adjective = gets.chomp

puts 'Enter an adverb:'
adverb = gets.chomp

sentence_1 = puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
sentence_2 = puts "How many #{adjective} #{noun} can you #{verb} very #{adverb} before you start questioning your sanity?"

[sentence_1, sentence_2].sample