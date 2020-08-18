def stringy(integer)
  binary = ''
  loop do
    binary << '1'
    break if binary.length == integer
    binary << '0'
    break if binary.length == integer
  end
  binary
end