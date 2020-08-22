def char_count(input)
  total = 0
  array = input.chars
  array.each do |char|
    if char == ' '
      next
    else
      total += 1
    end
  end
  total
end


puts "Please write a word or multiple words:"
text_input = gets.chomp

total_chars = char_count(text_input)

puts "There are #{total_chars} characters in \"#{text_input}\"."

# Or

# number_of_characters = text_input.delete(' ').size