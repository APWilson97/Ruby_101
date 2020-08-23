def xor?(first, second)
  if first == true && second != true
    return true
  elsif first != true && second == true
    return true
  else
    return false
  end
end

puts xor?(5.even?, 4.even?) 
puts xor?(5.odd?, 4.odd?) 
puts xor?(5.odd?, 4.even?) 
puts xor?(5.even?, 4.odd?) 