# It will print:

'Moe'
'Larry'
'CURLY'
'SHEMP'
'Harpo'
'CHICO'
'Groucho'
'Zeppo'

# Pushing elements from first array into second array makes them reference the same object. upcase! is mutating so array2 will change because it also references the original object, which gets modified in place. array2 does not reference another object. 
# The first each loop copies references into array2 so they contain the same String objects. 