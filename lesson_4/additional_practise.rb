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