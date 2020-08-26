# multiples of 3 and 5 (including integers 3 and 5) between 1 and given number (1 and 2 not included)
# computes sum of those multiples
# convert input into range and if the number in current loop is divisible by either 3 or 5 then push to an array
# then sum array to get final sum
# input: integer
# output: integer
# data structure: turn multiples into array

def multiples_array(integer)
  multiples = []
  for i in 1..integer
    if i % 3 == 0 || i % 5 == 0
      multiples << i
    end
  end
  multiples
end

def multisum(integer)
  multiples_array = multiples_array(integer)
  multiples_array.sum
end
