# input: array of string
# output: array of string without vowels
# capital letters are also included, case insensitive
# map method to transform array and delete any vowels

def remove_vowels(array)
  array.map do |elements|
    elements.delete('aeiouAEIOU')
  end
end
