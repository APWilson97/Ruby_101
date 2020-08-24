# Input = string
# Output = boolean
# String read forward is the same as read backward
# Punctuation, case and spaces matter
# string should be the same if reversed
# create a new string with the reversed version and see if it matches the original argument
# string_reversed = string.reverse
# if string_reversed.match(string)
#   return true
# else
#   return false

def palindrome?(string)
  string_reversed = string.reverse
  if string_reversed.match(string)
    return true
  else
    return false
  end
end