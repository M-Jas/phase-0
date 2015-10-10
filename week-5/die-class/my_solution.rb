# Die Class 1: Numeric

# I worked on this challenge [by myself ]

# I spent [] hours on this challenge.

# 0. Pseudocode
# Create a class that is Die
# This clas represents and object that rolls a die
# We want the die to have six sides.
# if rolled it produces a random number from 1-6.
# If number is less then 1 there is an argument.

# Input:Takes an array of with a range 1-6
# Output:will produce a random number with in range
# Steps:


# 1. Initial Solution

class Die
  def initialize(sides)
     if sides < 1
      raise ArgumentError.new("Number can't be less than 1")
      else
      @sides = sides
    end
  end

  def sides
    @sides

  end

  def roll #This will rol the die to produce a rand number
    @roll = rand(1..@sides)
    return @roll
  end

end

die = Die.new(6)

# 3. Refactored Solution







# 4. Reflection