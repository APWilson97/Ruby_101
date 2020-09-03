# input = string
# output = string with duplicate characters removed, all into a single character
# integers are included as well
# single character input strings remain as is
# nil return nil
# duplicates of one character will only return that one charcter
# create an empty array to push characters to
# if next character is same as character pushed to array in previously then skip

def crunch(string)
  crunch_array = []
  
  string.chars.each do |char|
    crunch_array << char unless crunch_array.last == char
  end
  crunch_array.join
end

# or index = 0
# crunch_text = ''
# while index <= string.size - 1
#   crunch_text << string[index] unless text [index] == text[index + 1]
#   index += 1