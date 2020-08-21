for i in 1..99 
  if i % 2 == 0
    next
  else
    puts i
  end
end

# Further Exploration:

1.upto(99) do |x|
  puts x if x.odd?
end