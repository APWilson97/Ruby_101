# Question 1

# The a b c d outer variables' outer object id will be the assigned to the outer_inner_id variables which are initialized within the block. The object ids will remain the same.
# The outer variables then get re-assigned new objects so their object ids will change.
# a b c d inner variables are then initialized and assigned to a b c d outer variables. These inner variables will then have the same object ids as the outer variables.
# Once the code leaves the block, it will display the object id before the block compared to the object ids after the block, which is the new ids when the outer variables got re-assigned to new objects within the block.
# The last part will just print 'ugh ooh' because the inner variables are only within the scope of the block and cannot be accessed outside of it.


# Question 2

# The variables ids will be the same before the method call. 
# The ids will be the same inside the method but these are not the same variables as the ones outside. The same objects are being re-used as both inside and outside variables have the same value. 
#Outer variables get re-assigned new values.
# The inner variables that get initialized will have the same object ids as the outer ones.
# The outer variables will have a different object id before and after the method call.
# ^^^ Correction: The outer variables will have the same object ids before and after the method call because the method accepts values as parameters. This is because the variables named within the method are separate from other uses of those names, hence why the outer variables refer to the same object even after the method call. 
# prints 'ugh ooh' because there is no way to access variables defined within a method definition from the outer scope. 

# Question 3

# my_string will be displayed the same, as 'pumpkins' because the += assignment operator is non-mutating so the object will remain the same. 
# my_array will be displayed as ['pumpkins', 'rutabaga'] because the << method is mutating, so the original object will be modified. 
# Ruby passes copies of references to the original objects to methods, hence why the my_array gets modified after the method is called. 
# ^^ Correction: Each the string and the array are assigned to new local variables defined within the method which reference the passed object. += re-assigns and creates a new string object (a_string_param), which points to 'pumpkinrutabaga' rather than the original 'pumpkin'. a_string_param points to a new object. # << is not re-assignment, so the an_array_param still refers to the original object that my_array references as well. Hence why we see the my_array object being modified outside of the method. 

# Question 4

# my_string will display 'pumpkinsrutabaga' as << is not re-assignment, the a_string_param local variable still references the original object that my_string references. 
# my_string will display ['pumpkins'] because += is reassignment, the an_array_param local variable creates a new object. my_array refers to the original object whereas an_array_param references a new object as it was assigned to an_array_param, hence why my_array still displays the original object unmodified. 

# Question 5

# Split into two methods, one for modifying the string and one for modifying the array.
# ^^ Correction:
def new_method(a_string_param, an_array_param)
  a_string_param += 'rutabaga'
  an_array_param += ['rutabaga']

  return a_string_param, an_array_param
end

my_string = 'pumpkins'
my_array = ['pumpkins']
my_string, my_array = new_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# Question 6

def color_valid(color)
  color == 'blue' || color == 'green'
end