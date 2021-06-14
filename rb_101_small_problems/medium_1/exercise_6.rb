# n Place a value n in the "register". Do not modify the stack.
# PUSH Push the register value on to the stack. Leave the value in the register.
# ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
# SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
# MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
# DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
# MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
# POP Remove the topmost item from the stack and place in register
# PRINT Print the register value


# rules:

# register is current value
# stack is list of values that grows and shrinks dynamically
# perform operation using popped value from stack with register value, store result back in register

# data structure: array for stack, integer for register

# algorithm:
# initialize register to 0
# initialize stack to []
# split commands into an array of strings
# iterate through commands
# use case statements for input commands
# if integer, re-assign register to value
# do same when statements for commands above

def minilang(commands)
  register = 0
  stack = []

  commands_arr = commands.split
  
  commands_arr.each do |command|
    case 
    when command.to_i.to_s == command
      register = command.to_i
    when command == 'PUSH'
      stack << register
    when command == 'ADD'
      register += stack.pop
    when command == 'SUB'
      register -= stack.pop
    when command == 'MULT'
      register *= stack.pop
    when command == 'DIV'
      register /= stack.pop
    when command == 'MOD'
      register %= stack.pop
    when command == 'POP'
      register = stack.pop
    when command == 'PRINT'
      puts register
    end
  end
end



p minilang('PRINT')
# 0

p minilang('5 PUSH 3 MULT PRINT')
# 15

p minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

p minilang('5 PUSH POP PRINT')
# 5

p minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

p minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

p minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

p minilang('-3 PUSH 5 SUB PRINT')
# 8

p minilang('6 PUSH')
# (nothing printed; no PRINT commands)