# calculate ASCII string value of a string
# use ord to calculate each ASCII value of every character
# empty string should return 0
# input = string
# output = integer
# chars into an array and iterate through to find ASCII value of each element
# add each value to a sum value and return it

def ascii_value(string)
  ascii_array = string.chars
  ascii_sum = 0
  ascii_array.each do |character|
    ascii_sum += character.ord
  end
  ascii_sum
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0