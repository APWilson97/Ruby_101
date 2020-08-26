# leap year if year is divisible by 4 ( year % 4 == 0)
# but if also divisible by 100 then not leap year ( year % 4 == 0 && year % 100 == 0 then false)
# but if also divisible by 400 then leap year ( year % 4 == 0 && year % 100 == 0 && year % 400 == 0 then true)
# input = integer (greater than 0)
# output = boolean
# first verify if evenly divisible by 4, return false if not. if yes then verify again if divisible by 100, if not then return true. if divisible, check if divisible by 400 and return false if not.
# create separate methods for verifying whether year is evenly divisble by 4, 100 and 400. 

def divisible_by_4(year)
  year % 4 == 0
end

def divisible_by_100(year)
  year % 100 == 0
end

def divisible_by_400(year)
  year % 400 == 0
end

def leap_year?(year)
  return false if divisible_by_4(year) == false
  second_check = divisible_by_100(year)
  case second_check
  when true
    if divisible_by_400(year)
      return true
    else
      return false
    end
  else
    return true
  end
end
