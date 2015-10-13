# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An Array of Strings
# Output:Returns one of the strings as a lable
# Steps:
# Create a new class variable
# when we roll the die we will get one of the random strings
# If an array is empty the arrgument error will come up.



# Initial Solution

# class Die
#   def initialize(lables)
#     raise ArgumentError if lables.length <= 0
#     @lables = lables
#   end
#   def sides
#     p @lables.count
#   end
#   def roll
#     p @lables.sample
#   end
# end

# die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
# die.sides to see what sides will produce
# die.roll test to see what happens on the roll
#die1 = Die.new([]) test the argument

# Refactored Solution
# This is really dry. I tried to add an attr_reader/writer. They passed some
# of the tests but I had to go back and add code to solve the remaining failures.


# Reflection