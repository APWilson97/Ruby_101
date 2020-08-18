def reverse_words(string)
  array = string.split
  array.each do |element|
    if element.length >= 5
      element.reverse!
    end
  end
  array.join(' ')
end