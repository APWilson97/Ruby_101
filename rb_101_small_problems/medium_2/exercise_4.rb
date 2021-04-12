# input: string 
# output: boolean depending on whether input string is balanced or not
# rules: 
# the method returns true if all parentheses in the string are properly balanced
# balanced = parentheses occur in matching pairs '(' and ')'
# opposite facing parentheses ')' and '(' are not balanced
# if the input string does not have any parentheses then the method returns true, assumes it is balanced
# the input string can have multiple parentheses, as long as they are all balanced then method will return true
# balanced pairs = each '(' ')' have to be in pairs
# balanced pairs must start with a '('
# balanced pairs if the number of each parentheses is the same
# data structure: array
# algorithm:
# set a variable and assign to an empty array
# iterate through input string and push each parentheses into array variable 
# if the first element parentheses is the closing parentheses then return false
# count the number of each parentheses and if they equal each other then return true, if not then return false
# if there are no parentheses, return true

def parentheses_array_check(array)
  opening_count = 0
  closing_count = 0

  array.each do |char|
    if char == ')'
      opening_count += 1
    elsif char == '('
      closing_count += 1
    end
  end

  if opening_count == closing_count
    return true
  else
    return false
  end
end


def balanced?(string)
  parentheses = []
  string_chars = string.chars

  string_chars.each do |char|
    if char == '(' || char == ')'
      parentheses << char
    end
  end

  if parentheses[0] == ')'
    return false
  elsif parentheses.empty?
    return true
  elsif parentheses[-1] == '('
    return false
  end

  result = parentheses_array_check(parentheses)
end

# or

def balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens.zero?
end