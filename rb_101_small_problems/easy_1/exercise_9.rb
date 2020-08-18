def sum(integer)
  sum = 0
  array = integer.to_s.chars
  
  array.each do |numb|
    sum += numb.to_i
  end
  sum
end