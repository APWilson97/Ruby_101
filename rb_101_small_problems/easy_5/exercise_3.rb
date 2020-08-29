# work in reverse to method in exercise 2
# 24:00 == 0 and 00:00 == 0
# set constants for minutes in an hour, hours in a day and minutes per day
# split the input time into hours and minutes in separate elements in an array and convert into integers
# for after midnight, just convert hours into minutes and add with remaining minutes

MINUTES_IN_AN_HOUR = 60
HOURS_IN_A_DAY = 24
MINUTES_IN_A_DAY = HOURS_IN_A_DAY * MINUTES_IN_AN_HOUR

def after_midnight(time)
  hours, minutes = time.split(':').map { |element| element.to_i }
  total_minutes = (hours * 60 + minutes)
  delta_minutes = total_minutes % MINUTES_IN_A_DAY
end

def before_midnight(time)
  hours, minutes = time.split(':').map { |element| element.to_i }
  total_minutes = (hours * 60 + minutes)
  delta_minutes = -total_minutes % 1440
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0