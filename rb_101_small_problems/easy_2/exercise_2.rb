puts 'Enter the length of the room in meters:'
length = gets.chomp

puts 'Enter the width of the room in meters:'
width = gets.chomp

feet_conversion = 10.7639

area_meters = length.to_f * width.to_f
area_feet = area_meters * feet_conversion

puts "The area of the room is #{area_meters} square meters (#{area_feet} square feet)"