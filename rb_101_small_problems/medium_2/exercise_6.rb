# input: 3 integers
# output: symbol (right, acute, obtuse or invalid)
# rules:
# right - one angle is 90 degrees
# acute - all 3 angles are less than 90 degrees
# obtuse - one angle is greater than 90 degrees
# valid - sum of angles has to be exactly 180 degrees, all angles greater than 0
# return a symbol depending on the input integer angles
# data structure: array
# algorithm: 
# checking whether the input integers (triangle) is valid or not
# check whether the triangle is either acute, obtuse or right angle
# return appropriate symbol
# code:
# initialize a variable to equal an array object containing the input integers
# initialize a variable to equal the sum of the array variable 
# if the sum of the array variable != 180 then return :invalid
# elsif the first element, the second element and the third element is <= 0 then return :invalid
# case
# when array includes 90 then return :right
# when first element, second element and third element are < 90 then return :acute
# when first element, second element or third element is > 90 then return :obtuse

def triangle(first, second, third)
  triangle_array = [first, second, third]
  sum_of_triangle = triangle_array.sum

  if sum_of_triangle != 180
    return :invalid
  elsif first <= 0 || second <= 0 || third <= 0
    return :invalid
  end

  case 
  when triangle_array.include?(90) then return :right
  when triangle_array.all? { |num| num < 90} then return :acute
  when first > 90 || second > 90 || third > 90 then return :obtuse
  end
end

#or 

def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]

  case
  when angles.reduce(:+) != 180, angles.include?(0)
    :invalid
  when angles.include?(90)
    :right
  when angles.all? { |angle| angle < 90 }
    :acute
  else
    :obtuse
  end
end