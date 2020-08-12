def digit_list(integer)
  list = []
  loop do
    num , remainder = integer.divmod(10)
    list.unshift(remainder)
    break if num == 0
  end
  list
end
