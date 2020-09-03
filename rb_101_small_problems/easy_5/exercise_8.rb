# input = 0..19 range of integers
# output = array, sorted by english words of integer (one, two, three etc)
# sorted based on alphabetical order of integer english words
# if first letter is the same then check next letter
# if word is shorter than the other then it comes first (e.g eight and eighteen, eight comes first)
# hash table for integers and their english words
# sort array based on comparison between elements

INTEGER_WORDS = {
  0 => 'zero',
  1 => 'one',
  2 => 'two',
  3 => 'three',
  4 => 'four',
  5 => 'five',
  6 => 'six',
  7 => 'seven',
  8 => 'eight',
  9 => 'nine',
  10 => 'ten',
  11 => 'eleven',
  12 => 'twelve',
  13 => 'thirteen',
  14 => 'fourteen',
  15 => 'fifteen',
  16 => 'sixteen',
  17 => 'seventeen',
  18 => 'eighteen',
  19 => 'nineteen'
}

def alphabetic_number_sort(array)
  array.sort do |first, second|
    first = INTEGER_WORDS[first]
    second = INTEGER_WORDS[second]
    first <=> second
  end
end

# or make an array table with the words %(zero one two three...)
# use enumerable method sort_by
# integers in range act as index for words array
# array.sort_by { |number| NUMBER_WORDS[number] }
# NUMBER_WORDS[0] would be first element so 'zero' and etc