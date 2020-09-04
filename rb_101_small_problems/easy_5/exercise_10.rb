# input = string
# output = string within a box
# have box as an array
# box has plus, dash and lines
# set two variables as arrays for both types of lines, plus and dash, lines and empty spaces
# set the third variable as the output string with the | on either side
# Array.new(string.size, '+').fill('-', 1..-2).join(' ')
# Array.new(string.size, '|').fill(' ', 1..-2).join(' ')
# Array.new(string.size, '|').fill(string, 1..-2).join(' ')

def print_in_box(string)
  plus_dash_line = "+#{'-' * (string.size + 2)}+"
  line_space_line = "|#{' ' * (string.size + 2)}|"
  string_line = "| #{string} |"

  pattern = [plus_dash_line, line_space_line, string_line, line_space_line, plus_dash_line].cycle

  puts pattern.take(5)
end

# or just do:
# puts plus_dash_line
# puts line_space_line
# puts string_line
# puts line_space_line
# puts plus_dash_line