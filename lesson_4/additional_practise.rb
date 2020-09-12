# 1 
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

name_position_hash = {}

flintstones.each do |names|
  name_position_hash[names] = flintstones.index(names)
end

# 2 
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

age_total = 0

ages.each do |key, value|
  age_total += value
end

age_total

# or use inject method

# 3 
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.select! do |name, age|
  age < 100
end

# can use .keep_if as well

# 4
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages.values.min

# 5
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.index { |name| name[0,2] == "Be" }

# 6
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map do |name|
  name.slice!(3, name.size)
end

# or
flintstones.map! do |name|
  name[0,3]
end

# 7
statement = "The Flintstones Rock"

frequency = Hash.new(0)

char_array = statement.chars.reject { |element| element == ' '}

char_array.each do |char|
  frequency[char] += 1
end

# or 
result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

# 8
# The array is being changed as the iterator is executed, it getting shortened and shifted. The first element 1 is printed and the array is shifted by 1. All elements in the array are then shifted down by 1 in terms of index. So, during the second iteration, the current length of the array has changed ([2,3,4]) and now the next element that will be printed will be 3, because the next element at the next index (index of 1) is now 3.
# Output: 1 3
# We only output first two elements as the remaining elements are removed before we reach them for the next iteration after the first two elements.
# Output: 1 2

# Iterators do not work on a copy of the original array or from stale meta data(length) about the array. They operate on the original array in real time. 

# 9
words = "the flintstones rock"

def titleize(string)
  upcase_array = string.split(' ')
  upcase_array.each do |word|
    word.capitalize!
  end
  upcase_array.join(' ')
end

# or 
words.split.map { |word| word.capitalize }.join(' ')

# 10
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, info|
  case info['age']
  when (0..17)
    info['age_group'] = 'kid'
  when (18..64)
    info['age_group'] = 'adult'
  else
    info['age_group'] = 'senior' 
  end
end
