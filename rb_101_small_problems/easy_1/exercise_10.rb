def calculate_bonus(integer, boolean)
  return integer / 2 if boolean == true
  return 0 if boolean == false
end

# or 

def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end