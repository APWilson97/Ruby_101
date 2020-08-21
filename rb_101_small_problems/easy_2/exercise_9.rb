# Prints:
'BOB'
'BOB'

# Because upcase! is mutating, it mutates the original string object of bob and both variables are referencing the same original object.
# Re-assignment only makes the variable point to a new object, creates a new reference to another object without affecting the original object it referenced before re-assignment.