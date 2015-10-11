# Die Class 1: Numeric

# I worked on this challenge [by myself ]

# I spent [2.5] hours on this challenge.

# 0. Pseudocode
# Create a class that is Die
# This clas represents and object that rolls a die
# We want the die to have six sides.
# if rolled it produces a random number from 1-6.
# If number is less then 1 there is an argument.

# Input:Takes an array of with a range 1-6
# Output:will produce a random number with in range
# Steps:

# 1. Initial Solution___________________________________________________________
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

# 3. Refactored Solution______________________________________________________
class Die
  attr_reader :sides
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("Number can't be less than 1")
    else
      @sides = sides
    end
  end
  def roll
    @roll = rand(1..@sides)
    return @roll
  end
end
die = Die.new(6)

# 4. Reflection___________________________________________________________________
# What is an ArgumentError and why would you use one?
#   Raising the ArgumentError will stop the execution of the program beacuse the method is doing something it should not. The program will exit or ask you to make the changes.
# What new Ruby methods did you implement? What challenges and successes did you have in implementing them? attr_reader: is another way for us to refator some of the code. instance variables were neat. They let is set a value to the initialize argument that would run with the program.
# What is a Ruby class? Class is a way that you can group behaviors (methods) under one umbrella that will work with eachother. Method to Method collaboration.
# Why would you use a Ruby class? Because everything in ruby is either an object or a construct that evaluates an object, and all objects are a instance of some class.
# What is the difference between a local variable and an instance variable? instance variables only are visable to the object to which they belong.
# Where can an instance variable be used?They can be used by any methods defined in the class.