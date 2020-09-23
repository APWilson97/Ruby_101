# input: string
# output: new string with staggered capitalization (every other char is capitalized, remaining ones being lowercase)
# non-alphabetic chars should not be changed but count as chars when switching between upper and lowecase
# they also play a part in determining whether next character is either upper or lower
# first char always starts uppercase and then every other char from first char on is converted to uppercase as well
# data structure: array
# algo:
# split the string into an array with each char as an element
# char at index 0 is uppercase and then char at 2 is uppercase and so on
# chars at even indexes are uppercase
# chars at odd indexes are lowercase
# map the char array so that elements at odd indexes are upcase and ones at even indexes are downcase
# use join method to return new strin from char array

def staggered_case(string)
  staggered_case_string = string.chars.each_with_index do |char, index|
    if index.even?
      char.upcase!
    else index.odd?
      char.downcase!
    end
  end
  staggered_case_string.join
end

# or
def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end