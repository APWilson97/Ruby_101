# input: string
# output: hash with 3 entries (number of chars that are lowercase, number of chars that are uppercase and number of chars that are neither)
# empty spaces count as neither
# numbers count as neither
# empty strings don't add to the hash counter
# data structure: hash
# algo:
# initalise empty hash with value of 0 for each key
# iterate through each char in the argument string
# validate if they are chars
# if true, check if they are lowercase or upper and increment hash value by 1
# if not, increment neither value by 1

def letter_case_count(string)
  result = { lowercase: 0, uppercase: 0, neither: 0}
  
  string.each_char do |char|
    if char.count("a-z") > 0
      result[:lowercase] += 1
    elsif char.count("A-Z") > 0
      result[:uppercase] += 1
    else
      result[:neither] += 1
    end
  end
  result
end

# or

UPPERCASE_CHARS = ('A'..'Z').to_a
LOWERCASE_CHARS = ('a'..'z').to_a

def letter_case_count(string)
  counts = { lowercase: 0, uppercase: 0, neither: 0 }

  string.chars.each do |char|
    if UPPERCASE_CHARS.include?(char)
      counts[:uppercase] += 1
    elsif LOWERCASE_CHARS.include?(char)
      counts[:lowercase] += 1
    else
      counts[:neither] += 1
    end
  end

  counts
end

# or 
def letter_case_count(string)
  counts = {}
  characters = string.chars
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
  counts
end