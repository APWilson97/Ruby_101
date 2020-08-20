puts 'What is the bill?'
bill = gets.chomp.to_f

puts 'What is the tip percentage?'
rate = gets.chomp.to_f

percentage_rate = rate / 100
tip = bill * percentage_rate.round(2)
total = bill + tip.round(2)

tip_two_decimal = format("%.2f", tip)
total_two_decimal = format("%.2f", total)

puts "The tip is #{tip_two_decimal}"
puts "The total is #{total_two_decimal}"