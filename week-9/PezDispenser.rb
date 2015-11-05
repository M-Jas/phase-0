# PezDispenser Class from User Stories

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.

# STORY_____________________________________________
# 1)INIT: New  flavor, remaining amount
# 2) Want to be able to know how many are left take the cout
# 3) Needs to be able to remove one Pez and eat it
# 4)Able to Add to so we can save a flavor for later.
# 5)Able to see through to know what flavors remain


# Pseudocode__________________________________________
# The class will take args for the flavor and the amount.

# Create a method to take on the flavors in the dispencer
#   INPUT: list of flavors in array
#   OUTPUT: Give the total amount

# Create a method to count the remaining amount of pez
#   INPUT: interger
#   OUTPUT: Give the total amount left

# Create a method to remove one pez
#   OUTPUT: the amount left after remoing

# Create a method to add one pez
#   OUTPUT: the amount left after adding

# Create a method to see the next flavor
#   OUTPUT: what flavors are coming up
#   att_reader i think!


# Initial Solution__________________________________________

# class PezDispenser
#   attr_accessor :flavors
#   def initialize(flavors)
#     @flavors = flavors
#   end

#   def pez_count
#     ramaining = @flavors.length
#   end

#   def flavors
#     @flavors
#   end

#   def add_pez(flavors)
#     @flavors << flavors
#   end

#   def get_pez
#     @flavors.shift
#   end
# end

# REFACTOR_______________________________________________

class PezDispenser
  attr_accessor :flavors

  def initialize(flavors)
    @flavors = flavors
  end

end
# DRIVER TESTS GO BELOW THIS LINE___________________________
flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle

super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.flavors.length} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.flavors
puts "Adding a banana pez."
super_mario.flavors.push("banana")
puts "Now you have #{super_mario.flavors.length} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.flavors.shift}"
puts "Now you have #{super_mario.flavors.length} pez!"

# Reflection
# I reviewed classes and got a better understanding. I did try to make this harder than what it should be. I see now more than ever that I am not reading the directions correctly and trying to do much more  than what is asked for.