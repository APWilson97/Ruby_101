# input: string
# output: new string with every character doubled
# case sensitive
# empty strings just return an empty string
# other characters like spaces and punctuation are also doubled
# data structure: array
# algo:
# turn the string into an array full of each character
# iterate through array push the element multiplied by 2 to a new array
# join new array 

def repeater(string)
  doubled_string = []

  string.chars.each do |char|
    doubled_string << char * 2
  end

  doubled_string.join
end

# or
def repeater(string)
  result = ''
  string.each_char do |char|
    result << char << char
  end
  result
end
