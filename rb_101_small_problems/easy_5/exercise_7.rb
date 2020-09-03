def word_sizes(string)
  word_count = Hash.new(0)

  string.split.each do |element|
    element = element.gsub(/[^a-z]/i,'')
    word_count[element.size] += 1
  end
  word_count
end

# or you could use clean_element = element.delete('^A-Za-Z')