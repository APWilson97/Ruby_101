# input: string
# output: array of all substrings of a string that are palindromic
# return value should be arranged in the same sequence as the substrings appear in the string
# duplicate palindromes should be included multiple times
# use the previous substrings method
# consider all characters and pay attention to case (this includes chars like -)
# single characters are not palindromes
# data structure: array
# algo:
# use selection
# use select method on substring array (call substring method and its return value is assigned to substring array variable)
# select the substrings that are palindrome
# verify by doing a comparison
# is string == string.reverse

def leading_substrings(string)
  result = []
  substring_length = 1
  until result.size == string.length
    result << string[0, substring_length]
    substring_length += 1
  end
  result
end

def substrings(string)
  substring_array = []
  position = 0
  substring_size = string.size

  until position > string.size - 1
    substring_array << leading_substrings(string[position, substring_size])
    position += 1
    substring_size -= 1
  end
  substring_array.flatten
end

def palindromes(string)
  substring_array = substrings(string)

  substring_array.select do |substring|
    if substring.size > 1
      substring == substring.reverse
    end
  end
end

# or
def palindromes(string)
  all_substrings = substrings(string)
  results = []
  all_substrings.each do |substring|
    results << substring if palindrome?(substring)
  end
  results
end

def palindrome?(string)
  string == string.reverse && string.size > 1
end