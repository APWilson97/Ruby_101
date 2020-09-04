# returns a different object
# split method makes it so that the string is converted to an array, therefore referencing a new object, even after using the join method to turn it back into a string. It only converts the array into a new string. 
# the reverse! method mutates the array that the original string object is converted into but this is a new object. The reference to the original string object is lost, therefore the method does not mutate the original string. 
# when the mutated array gets joined, it returns a new string, hence a different object is returned. 
# splitting string into an array makes it into a new object and then joining back together into a string returns another new object. 