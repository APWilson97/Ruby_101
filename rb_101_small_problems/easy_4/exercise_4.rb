def divisible_by_4(year)
  year % 4 == 0
end

def divisible_by_100(year)
  year % 100 == 0
end

def divisible_by_400(year)
  year % 400 == 0
end

def julian_leap_year?(year)
  year % 4 == 0
end

def leap_year?(year)
  if year < 1752
    return julian_leap_year?(year)
  end

  return false if divisible_by_4(year) == false
  case divisible_by_100(year)
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
