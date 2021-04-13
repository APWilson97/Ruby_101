# input: integer (year)
# output: integer (number of friday 13ths in year)
# rules:
# input integer is greater than 1752
# modern Gregorian Calendar
# Date class
# data structure: integer
# algorithm:
# set date to the 13th of the first month of the input year
# set a variable and assign it to 0 as a counter for friday 13ths
# loop and check if current 13th of the month is a friday
# if yes then increment counter by 1
# then proceed until all 12 months have been iterated through

require 'date'

def friday_13th(year)
  counter = 0
  start_date = Date.new(year, 1, 13)
  12.times do
    counter += 1 if start_date.friday?
    start_date = start_date.next_month
  end
  counter
end
