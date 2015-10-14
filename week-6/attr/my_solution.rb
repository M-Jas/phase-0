#Attr Methods

# I worked on this challenge [Alone]

# I spent [3] hours on this challenge.

class NameData
  attr_reader :name
  def initialize
    @name = "Michael J"
  end
end

class Greetings
  attr_reader :hello
  def initialize
    @name = NameData.new
    @hello = "Hello #{@name.name}! How wonderful to see you today."
  end
end
instance_of_greet = Greetings.new
p instance_of_greet.hello

# Reflection
#R-1
  # What are these methods doing? There is the getters which get the values of the instance variables
  # while the setters are seting the values of the instance variables.

  # How are they modifying or returning the value of instance variables? They are adding the = to
  # the methods that let's us set the values of the arguments.

#R-2
  # What changed between the last release and this release? We took out the method of age and replaced
  #   it with a attr_reader, which changes the three lines of a method to one and moves it outside of
  #   the class but does not change the method.

  # What was replaced? The entire method age was replaced with attr_reader :age

  # Is this code simpler than the last? It is abit easier beacuse it compressed the code down.

#R-3
  # What changed between the last release and this release? The setter for age has been removed and
  #   you are not using .change_my_name.

  # What was replaced? The entire setter for the age method was replaces with attr_writer :age
  #   The instance_of_profile.age also changed fomr instance_of_profile.change_my_age

  # Is this code simpler than the last? Again it makes the code a bit more neat.

# What is a reader method? Returns value or state outside of the class but does not change the value
# What is a writer method? Changes value of the variable outside of the class and is not readable
# What do the attr methods do for you? It is a property of and object whose value can be read and/or
#   written through the object. It can Condence the code also.
# Should you always use an accessor to cover your bases? Why or Why not? Not all the time but it is good to use
#   more often then not. Accessor does both read and witer so it depends on what you are doing.
# What is confusing to you about these methods? Adding the instance of a different class did not make sense.
#   I did not understand why we would need to do it. But we need to use that class in the new class.