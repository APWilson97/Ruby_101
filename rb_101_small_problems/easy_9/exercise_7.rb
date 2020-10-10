# input: first, space and last name string
# output: string, with a comma, space and the first name
# format is Last name, First name for the return string
# data structure: array
# algo:
# split the string into an array and use parallel assignment, assign two different variables for first and last name
# return the string in the format above using string interpolation

def swap_name(full_name)
  first_name, last_name = full_name.split(' ')

  altered_name = "#{last_name}, #{first_name}"
end

# or
def swap_name(name)
  name.split(' ').reverse.join(', ')
end