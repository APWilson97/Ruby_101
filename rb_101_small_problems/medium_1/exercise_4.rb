# input: Integer (total number of switches)
# output: array (which lights are on after n repetitions)
# Switches numbered from 1 to n
# Each switch connected to 1 light that is initially off
# Go through row of switches and toggle all of them
# Go back to beginning for second iteration, toggle switches 2,4,6 ...
# For third iteration, toggle switches 3,6,9 ...
# Repeat for n repetitions
# All switches initially off
# First iteration is every switch turned on
# Second iteration is multiples of 2 are toggled
# Third iteration is multiples of 3 are toggled
# Fourth iteration is multiples of 4 are toggled and so on
# Method argument is total number of switches
# n is equal to method argument
# Data Structure: Hash
# Algorithm:
# initialize variable for starting switch 
# create initial hash of integers from starting switch to n (method argument) for first pass with states of off
# for each pass, use a range from starting switch to n and check if all proceeding numbers are multiples of starting switch
# check if the current switch is on or not
# if they are a multiple, change their state
# for each consecutive pass, increment starting switch by 1
# repeat process until n
# return initial array

def initial_pass(starting_switch, total_switches)
  initial_lights_on = {}
  starting_switch.upto(total_switches) do |num, state|
    initial_lights_on[num] = 'off'
  end
  initial_lights_on
end

def turning_switch(switches, nth)
  switches.each do |position, state|
    if position % nth == 0
      switches[position] = (state == 'off') ? 'on' : 'off'
    end
  end
end

def lights_left_on(switches)
  switches.select { |_position,state| state == 'on' }.keys
end

def toggling_switches(total_switches)
  initial_switch = 1
  inital_on_lights = initial_pass(initial_switch, total_switches)

  initial_switch.upto(total_switches) do |num|
    turning_switch(inital_on_lights, num)
  end
  lights_left_on(inital_on_lights)
end
