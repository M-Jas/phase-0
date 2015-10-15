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

class Die
  def initialize(lables)
    raise ArgumentError if lables.length <= 0
    @lables = lables
  end
  def sides
    p @lables.count
  end
  def roll
    p @lables.sample
  end
end

# die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
# die.sides to see what sides will produce
# die.roll test to see what happens on the roll
#die1 = Die.new([]) test the argument

# Refactored Solution
# This is really dry. I tried to add an attr_reader/writer. They passed some
# of the tests but I had to go back and add code to solve the remaining failures.


# Reflection_______________________________________________________________________________________________
# What were the main differences between this die class and the last one you created in terms of
# implementation? Did you need to change much logic to get this to work? The main difference is the use of
  #sample vs. ran(1..@sides). We are not looking for a number on this but what the lable could be.
  #Since @lables took what lables is we are passing it through the remaining methods.

# What does this exercise teach you about making code that is easily changeable or modifiable?
  # The more specific we make it the easier it will be to make working modifications.

# What new methods did you learn when working on this challenge, if any?
  #.sample I did not use this one before and I thought rand would have been better. But rand was giving me
  # A number value when I needed the lable value.

# What concepts about classes were you able to solidify in this challenge?
  # Instance variable is makes way more sense now. It is crazy that you can just pick it up and move it took
  # to any of the methods.