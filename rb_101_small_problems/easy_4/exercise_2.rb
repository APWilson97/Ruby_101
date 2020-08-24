# input = integer
# output = string with either st nd rd or th at the end
# 1 = st, 2 = nd, 3 = rd, 4-9 = th, 11-13 = th
# 0-100 = 1st century
# century number determined by dividing year by 100 and adding rounded result by 1
# if dividing the century year by 100 has no remainders then take away 1
# if century number has remainder 1 = st, remainder 2 = nd, remainder 3 = st, th for everything else
# concatenate the ending part with the century number turned into a string

def century(integer)
  century_number = integer / 100 + 1
  century_number -= 1 if integer % 100 == 0
  century_number.to_s + century_suffix(century_number)
end

def century_suffix(year)
  return 'th' if [11,12,13].include?(year % 100)
  last_digit = year % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end
