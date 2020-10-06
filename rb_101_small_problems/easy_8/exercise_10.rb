# input: string (non-empty)
# output: middle char or chars of argument
# if argument is odd length, only one char should be returned
# if argument length is even, only two chars should be returned
# data structure: string
# algo:
# set new variable for char or chars by assigning an empty string
# verify of string length is even or odd
# if odd, push string at index [length/2]
# if even, push string at index [length/2] and [length/2 - 1]

def center_of(string)
  characters = ''
  half_way = string.size / 2

  if string.size.odd?
    characters << string[half_way]
  else
    characters << string[half_way - 1] << string[half_way]
  end
  characters
end

# or 
def center_of(string)
  center_index = string.size / 2
  if string.size.odd?
    string[center_index]
  else
    string[center_index - 1, 2]
  end
end