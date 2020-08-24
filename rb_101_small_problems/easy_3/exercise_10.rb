def palindromic_number?(integer)
  string_integer = integer.to_s
  string_integer == string_integer.reverse
end