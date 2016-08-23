# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor
#runs whenever a new class VirusPredictor is instantiated, and takes in the parameters
#of state of origin, population density, and population
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#virus_effects calls to other methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
# method that calculates the # of death that will happen in a state based on the
# population density and population. death is directly proportional to density. It then
# prints the results
  def predicted_deaths
    # predicted deaths is solely based on population density
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
# method takes in population density and state, then calculates how long it will take the
# virus to spread based on density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    

    if @population_density >= 200
      puts " and will spread across the state in half a month.\n\n"
    elsif @population_density >= 150
      puts " and will spread across the state in a month.\n\n"
    elsif @population_density >= 100
      puts " and will spread across the state in a month and a half.\n\n"
    elsif @population_density >= 50
      puts " and will spread across the state in two months.\n\n"
    else
      puts " and will spread across the state in two and a half months.\n\n"
    end

    

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

# create a report by iterating through the nested data structure.
# call the method virus effect on every state then print a report

STATE_DATA.each do |state, state_info|
state_report = VirusPredictor.new(state, state_info[:population_density], state_info[:population])
state_report.virus_effects
end


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# - One hash is using strings as the key, while the other is using symbols.
# What does require_relative do? How is it different from require?
# - require_relative is the same as require in the sense that it copy and pastes code from
#   another file into the specified file, but relative begins the file path from the current
#   directory.
# What are some ways to iterate through a hash?
# - the .each or .map method can iterate through hashes
# When refactoring virus_effects, what stood out to you about the variables, if anything?
# - The variables called arguments when they are already available within the scope.
# What concept did you most solidify in this challenge?
# - This challenge solidified the concept of selecting from a nested data structure, and also
#   my understanding various scopes.