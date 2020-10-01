# input: array of integers
# output: sum of sums of each leading subsequence (integer)
# sequence of sums starts with sum of first integer(which is just integer) then sum of first integer and second integer, and then sum of first three integers, then sum of first four integers etc
# index goes up by one and then you work out the sum of the integer at the index and all the other integers at the previous indexes
# data structure: array
# algo:
# set new variable as an empty array
# set new variable as 0 for the sum
# iterate through input array and push each element into the empty array
# sum the other integer array for each iteration and increment sum variable in each iteration

def sum_of_sums(array)
  sum_array = []
  sum = 0

  array.each do |integer|
    sum_array << integer
    sum += sum_array.sum
  end
  
  sum
end

# or 
def sum_of_sums(numbers)
  sum_total = 0
  1.upto(numbers.size) do |count|
    sum_total += numbers.slice(0, count).reduce(:+)
  end
  sum_total
end