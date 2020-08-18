def count_occurences(array)
  occurences = {}
  array.uniq.each do |element|
    occurences[element] = array.count(element)
  end
  
  occurences.each do |element, count|
    puts "#{element} => #{count}"
  end
end