# number of minutes before or after midnight
# if positive number of minutes then after midnight
# if negative then before midnight
# no Date and Time classes
# input: integer
# output: string in minute format (hh:mm)
# input of 0 is midnight (could also be 24:00)
# once time after x minutes reaches 24 hrs it resets to 00:00
# maybe convert input minutes into hours and minutes
# add minutes in hours and remaining minutes onto 00:00
# 

MINUTES_IN_A_HOUR = 60
HOURS_IN_A_DAY = 24
MINUTES_PER_DAY = MINUTES_IN_A_HOUR * HOURS_IN_A_DAY

def time_of_day(difference_in_minutes)
  difference_in_minutes = difference_in_minutes % MINUTES_PER_DAY
  hours, minutes = difference_in_minutes.divmod(MINUTES_IN_A_HOUR)
  format('%02d:%02d', hours, minutes)
end
