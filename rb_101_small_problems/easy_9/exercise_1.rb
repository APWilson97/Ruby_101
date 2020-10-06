# input: array and hash
# output: string, uses persons full name and mentions their title and occupation
# array has 2 or more elements that when combined with adjoining spaces, it creates the persons name
# hash two keys for title and occupation
# data structure: string
# algo:
# set a new variable for the string representation of the input array
# use string interpolation 

def greetings(name, details)
  string_name = name.join(' ')
  
  puts "Hello, #{string_name}! Nice to have a #{details[:title]} #{details[:occupation]} around."
end


# or 
def greetings(name, status)
  "Hello, #{name.join(' ')}! Nice to have a #{status[:title]} #{status[:occupation]} around."
end