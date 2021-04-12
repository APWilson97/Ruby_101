# input: 3 integers
# output: symbol of either equilateral, isosceles or scalene, or invalid if conditions unsatisfied
# rules: 
# equilateral is all 3 sides are equal length
# isosceles is 2 sides are equal but 3rd is different
# scalene is all sides are different length
# sum of two shortest sides must be greater than length of longest side
# all sides must have length greater than 0
# if one side is 0, then return :invalid
# if sum of two short lengths is smaller than longest length then return :invalid
# for isosceles to be valid, shortest sides sum has to be greater than longest length
# data structure: array
# algorithm:
# set variable and assign it to array containing the three input integers
# check if each element is greater than 0, if no, return invalid
# if yes, check that each element is the same integer. If yes, then return equilateral
# if not, remove the largest integer from the array into a separate variable. Check the sum of the remaining integers and if it is smaller than max integer, return invalid
# if yes, append max integer back into original array
# create another variable and assign it to return value of uniq method call on original array
# if size of array is less than 3, return isosceles, if not then return scalene


def triangle(first, second, third)
  sides_array = [first, second, third]
  max_value = sides_array.max
  sum_of_smaller_sides = sides_array.sum - max_value
  check_array = sides_array.uniq

  if sides_array.include?(0) || sum_of_smaller_sides < max_value
    return :invalid
  elsif check_array.size == 1
    return :equilateral
  elsif check_array.size == 2
    return :isosceles
  else
    return :scalene
  end
end

# or
def triangle(side1, side2, side3)
  sides = [side1, side2, side3]
  largest_side = sides.max

  case
  when 2 * largest_side > sides.reduce(:+), sides.include?(0)
    :invalid
  when side1 == side2 && side2 == side3
    :equilateral
  when side1 == side2 || side1 == side3 || side2 == side3
    :isosceles
  else
    :scalene
  end
end