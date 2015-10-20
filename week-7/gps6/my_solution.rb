# Virus Predictor

# I worked on this challenge Jon Chen.
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
#
# require_relative looks for required files in the current directory
# require would require the whole path to find the file
require_relative 'state_data'

class VirusPredictor

  # Sets initial values to variables for a new instance of the class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Calls the two methods in private section
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # Checks population density and makes number of deaths equal to population time some number rounded down
  # Then prints state and how many people will die in outbreak
  def predicted_deaths
    # predicted deaths is solely based on population density
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end
    case @population_density
    when @population_density >= 200
        number_of_deaths = (@population * 0.4).floor
    when @population_density >= 150
        number_of_deaths = (@population * 0.3).floor
    when @population_density >= 100
        number_of_deaths = (@population * 0.2).floor
    when @population_density >= 50
        number_of_deaths = (@population * 0.1).floor
    else
        number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Checks for population density and depending on density, the greater the density, the less time it takes to spread in months
  # Prints that number in a number of months statement
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end
    case @population_density
    when @population_density >= 200
        speed += 0.5
    when @population_density >= 150
        speed += 1
    when @population_density >= 100
        speed += 1.5
    when @population_density >= 50
        speed += 2
    else
        speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each{|state, data| inst_state = VirusPredictor.new(state, data[:population_density], data[:population])
inst_state.virus_effects}
#=======================================================================
# Refactor__________________________________________________________________________________
# require_relative 'state_data'

# class VirusPredictor

#   def initialize(state_of_origin, population_density, population)
#     @state = state_of_origin
#     @population = population
#     @population_density = population_density
#   end

#   def virus_effects
#     predicted_deaths
#     speed_of_spread
#   end

#   private

#   def predicted_deaths
#     case @population_density
#     when @population_density >= 200
#         number_of_deaths = (@population * 0.4).floor
#     when @population_density >= 150
#         number_of_deaths = (@population * 0.3).floor
#     when @population_density >= 100
#         number_of_deaths = (@population * 0.2).floor
#     when @population_density >= 50
#         number_of_deaths = (@population * 0.1).floor
#     else
#         number_of_deaths = (@population * 0.05).floor
#     end
#     print "#{@state} will lose #{number_of_deaths} people in this outbreak"
#   end

#   def speed_of_spread #in months
#     speed = 0.0
#     case @population_density
#     when @population_density >= 200
#         speed += 0.5
#     when @population_density >= 150
#         speed += 1
#     when @population_density >= 100
#         speed += 1.5
#     when @population_density >= 50
#         speed += 2
#     else
#         speed += 2.5
#     end
#     puts " and will spread across the state in #{speed} months.\n\n"
#   end

# end
# #Driver code
# STATE_DATA.each{|state, data| inst_state = VirusPredictor.new(state, data[:population_density], data[:population])
# inst_state.virus_effects}
# Reflection Section_______________________________________________________________________

# What are the differences between the two different hash syntaxes shown in the state_data file?
#  There is a literal hash using the rocket to point to the value, the next uses special sytanx
#   for symbol Key: value. The literal use is good for keeping the value/not changing.

# What does require_relative do? How is it different from require?
#   # require_relative looks for required files in the current directory
#   # require would require the whole path to find the file

# What are some ways to iterate through a hash?
#   We used .each on STATE_DATA, we needed to run all the states and data through the system.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
#   The instance were used to define the methods predicted_deaths/speed_of_spread and these
#   instances would not be required to eplain what predicted_deaths/speed_of_spread do.

# What concept did you most solidify in this challenge?
#   iterating the has really came into scope for me and the use of case.

