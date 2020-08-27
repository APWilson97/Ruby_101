STRING_LIST = ['0','1','2','3','4','5','6','7','8','9']

def integer_to_string(integer)
  string = ''
  loop do
    integer, remainder = integer.divmod(10)
    string.prepend(STRING_LIST[remainder])
    break if integer == 0
  end
  string
end

puts integer_to_string(4321)