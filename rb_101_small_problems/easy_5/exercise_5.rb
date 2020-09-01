# returns string replacing non-alphabetic characters with spaces
# if one or more non-alphabetic characters appear then still only one space
# no consecutive spaces
# input = string
# output = string with only one space between chars/words 
# split string into array delimited by whitespace
# gsub all non-alphabetic chars
# join together with whitespace delimiter

ALPHABETIC_CHARS = ('a'..'z').to_a

def cleanup(string)
  altered_chars = []

  string.chars.each do |char|
    if ALPHABETIC_CHARS.include?(char)
      altered_chars << char
    else
      altered_chars << ' ' unless altered_chars.last == ' '
    end
  end
  altered_chars.join
end
