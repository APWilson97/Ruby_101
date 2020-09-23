# input: string
# output: new string where every uppercase letter is replaced by its lowercase version and lowercase replaced with uppercase (other chars should be unchanged)
# cannot use swapcase method
# non-alphabetic chars should be unchanged (including spaces)
# data structure: array
# algo:
# set two constants, both should be ranges of capital letters and lowercase letters
# separate words into separate chars in an array
# validate if the char is included in either of the constants and change case accordingly
# use join method to join chars into words

UPPERCASE = ('A'..'Z').to_a
LOWERCASE = ('a'..'z').to_a

def swapcase(string)
  char_array = string.chars.map do |char|
    if UPPERCASE.include?(char)
      char.downcase
    elsif LOWERCASE.include?(char)
      char.upcase
    else
      char
    end
  end
  char_array.join
end

# or
def swapcase(string)
  characters = string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  characters.join
end