def oddities(array)
  odd_elements = []
  array.map do |element|
    next if array.index(element).odd?
    odd_elements << element
  end
  odd_elements
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []

def evens(array)
  even_elements = []
  index = 0
  while index < array.size
    even_elements << array[index]
    index += 2
  end
  odd_elements
end