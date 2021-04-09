# input: string with uppercase, lowercase and neither
# output: hash with keys for lowercase and uppercase characters as well as neither ones with their values as their respective percentages
# integers count as neither
# spaces count as neither
# symbols count as neither
# values of hash are percentages and can be floats
# percentages are calculated by dividing the count of key with the total character amount of the input string
# string will always contain one character
# data structure: hash
# algorithm:
# initialize a variable and assign it to total integer count of input string
# initialize variable and assign it to empty hash
# count cases for lowercase, uppercase and neither in input string
# convert into floats and divide with total count of input string and add them into hash

def letter_percentages(string)
  total_count = string.size
  character_hash = {}

  character_hash[:lowercase] = (string.count("a-z").to_f / total_count) * 100
  character_hash[:uppercase] = (string.count("A-Z").to_f / total_count) * 100
  character_hash[:neither] = (string.count("^a-zA-Z").to_f / total_count) * 100

  character_hash
end
