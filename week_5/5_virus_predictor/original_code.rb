# U2.W5: Virus Predictor

# I worked on this challenge [by myself, with the guidance of Derek Siker ].

# EXPLANATION OF require_relative
#
#
require_relative 'state_data' # lets us use information in state_data.rb

class VirusPredictor

  def initialize(state_of_origin, population_density, population, region, regional_spread) # initialize method is run when class is instantiated. 
    @state = state_of_origin # making initialize's parameter values available throughout the class
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

  # program is broken down into smaller components/parts

  # this function prints out the EFFECTS of the virus
  def virus_effects  #HINT: What is the SCOPE of instance variables? They are available throughout the class
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private  #what is this?  methods will not be available to other object types


  # takes 3 parameters, and, based on population, applies a formula
  def predicted_deaths(population_density, population, state)
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else 
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # function for speed of spread based on population density
  def speed_of_spread(population_density, state) #in months
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else 
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"
  end
end



#=======================================================================

## DRY feature for all 50 states

# STATE_DATA.each do |state, information|
#     VirusPredictor.new(
#       state, 
#       information[:population_density,], 
#       information[:population], information[:region], 
#       information[:regional_spread])
#       .virus_effects
# end


# DRIVER CODE
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
p alabama.virus_effects == "Alabama will lose 482202 people in this outbreak and will spread across the state in 2.0 months."
# not sure why the above bit of driver code is returning false. it's the exact same string.



# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
# alaska.virus_effects


# Reflection

# Wasn't a bad challenge at all. Everything was pretty simple to follow. I learned about the usefulness of the two different hash 
# syntaxes. I also learned how to model data that has multiple branches of information.
# That said, the most difficult thing about this challenge (and phase 0, actually) is the refactoring.

