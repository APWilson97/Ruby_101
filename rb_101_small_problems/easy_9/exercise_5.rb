# input: string
# output: boolean
# returns true if all letters in string argument are upper case, false if otherwise
# non-alphabetic chars should be ignored (including spaces)
# empty string returns true
# data structure: array
# algo:
# set constant and assign a range of alphabetic chars
# separate string into an array of each character
# iterate through the array
# next if the char in the current iteration is not an alphabetic char
# check if the char is the same the char in uppercase
# return false if not
# return true at the end of the method

def uppercase?(string)
  string.each_char do |char|
    next if char.include?('a..zA..z')
    return false if char != char.upcase
  end
  true
end

# or
def uppercase?(string)
  string == string.upcase
end

# The condition if all of the aplhabetic characters are uppercase is true only if the string is not altered by converting it all to uppercase. The non-alphabetic chars become unaffected anyway so they are ignored in the process automatically