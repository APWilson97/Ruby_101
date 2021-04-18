# input: integer
# output: integer (next featured number that is greater than input)
# rules:
# featured number is odd number that is multiple of 7, whose digits occur once each (133 is invalid because 3 appears twice)
# return next featured number that is greater than input integer
# has to satisfy 3 conditions for it to be a valid featured number
# return error message if there is no next featured number
# data structure: integer
# algorithm:
# set loop
# if integer is odd and is divisible by 7 and the string equivalent split into an array has same size after uniq is called on it then return the number
# else return error message

def featured(integer)
  featured = integer

  loop do 
    featured += 1

    if featured.odd? && featured % 7 == 0 && featured.to_s.chars.uniq.size == featured.to_s.size
      return featured
    elsif featured > 9_999_999_999
      return 'There is no possible number that fulfills those requirements'
    end
  end
end

# or

def featured(number)
  number += 1
  number += 1 until number.odd? && number % 7 == 0

  loop do
    number_chars = number.to_s.split('')
    return number if number_chars.uniq == number_chars
    number += 14
    break if number >= 9_876_543_210
  end

  'There is no possible number that fulfills those requirements.'
end