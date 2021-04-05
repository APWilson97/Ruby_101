# input: a long string
# output: same string with digits
# same string is returned, no new string is created
# words of zero and one etc are converted to their digit counterparts, one is 1 and two is 2 etc
# words and punctuation remain the same
# words are from zero to nine
# data stucture: string
# algorithm:
# iterate through the input string and check if the current element is any of the zero to nine words by iterating through a second array containing these words
# if it is, mutate the word at that index to the appropriate digit string by swapping it out with the digit string
# once finished iterating, return the mutated input string

def word_to_digit(string)
  digits_hash = { 'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'}
  digits_hash.each do |words, digit|
    if string.match?(/\b#{words}\b/)
      string.gsub!(/\b#{words}\b/, digit)
    end
  end
  string
end
