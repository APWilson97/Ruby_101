# Question 1

# nil will be returned as the if condition will always evaluate to false. greeting will never get re-assigned as 'hello world'.
# ^^Correction: Variable is initialized within the if block but never gets evaluated, hence why greeting comes up as nil. Normally an exception is thrown for referencing an uninitialized variable.

# Question 2

# Output is { a: "hi there" }

# Question 3

# A) one is: one
#    two is: two
#    three is: three

# B) one is: one
#    two is: two
#    three is: three

# C) one is: two
#    two is: three
#    three is: one

# Question 4

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  if dot_separated_words.size == 4
    loop do
      word = dot_separated_words.pop
      return false unless is_an_ip_number?(word)
    end
  else
    return false
  end
  true
end 