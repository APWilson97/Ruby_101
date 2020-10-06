# input: string
# output: new string with every consonant is doubled, vowels digits whitespace and punctuation should not be doubled
# everything non-consonant still remain in new string but not doubled
# data structure: string
# algo: 
# set a constant for consonants (assign a range of consonant characters)
# set a new variable for the result and assign an empty string
# split the string into chars and iterate through it (each_char)
# verify if the character is contained within the consonant constant
# if true, double it and then push to string
# if false, just push to string
# return new string

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  result = ''

  string.each_char do |char|
    if CONSONANTS.include?(char.downcase)
      result << char << char
    else
      result << char
    end
  end
  result
end

# or
CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  result = ''
  string.each_char do |char|
    result << char
    result << char if CONSONANTS.include?(char.downcase)
  end
  result
end