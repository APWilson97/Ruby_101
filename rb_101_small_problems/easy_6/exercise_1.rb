# conversion:
# first number before decimal point represents the degrees
# integers after decimal point represents minutes
# multiplying integer after decimal point of minutes gives seconds (can remain as decimal)
# input: float
# output: string

DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degrees)
  total_seconds = (degrees * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)

  puts format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

dms(76.73)

# try to convert time into a singular unit to make it easier to work with
# set constants for time conversions