# input: positive integer
# output: returns number with digits reversed
# no leading zeros in return value (if number ends in zeros)
# however if the number doesn't have leading zeros but has zeros in between, those get included
# single digit should return just single digit
# data structure: array
# algo:
# set new variable and assign it as integer argument converted into string and then into array using chars
# use reverse on array to reverse the order 
# use join the join into a string and then call format on it to ensure no leadings zeros are in final return value
# then convert back into integer

def reversed_number(integer)
  integer_array = integer.to_s.chars

  reversed_string = integer_array.reverse.join

  result = ''
  reversed_string.each_char do |int|
    result << Integer(int, 10).to_s
  end
  result.to_i
end

# or 
def reversed_number(number)
  string = number.to_s
  reversed_string = string.reverse
  reversed_string.to_i
end