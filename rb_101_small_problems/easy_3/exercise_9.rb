def palindrome?(string)
  string == string.reverse
end

def real_palindrome?(string)
  new_string = string.downcase.delete('^a-z0-9')
  new_string == new_string.reverse
end
