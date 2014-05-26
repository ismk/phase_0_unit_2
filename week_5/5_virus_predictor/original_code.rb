# U2.W5: Virus Predictor

# I worked on this challenge [by myself].

# EXPLANATION OF require_relative
#
# It incorporates all the data from the require_relative file into the current file
require_relative 'state_data'

class VirusPredictor
  #initializes all the instance variables to be used in the class and the object can call
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

  #its the method that the object will call and in turn it calls the private methods
  def virus_effects  #HINT: What is the SCOPE of instance variables?  A. Class scope, so even the object can call upon it.
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private  #what is this?  what happens if it were cut and pasted above the virus_effects method
  #private makes the all teh methods below it uncallable by the object and if we were to move it above we wouldnt be able to call the other methods either

  # def predicted_deaths(population_density, population, state)
  #   if @population_density >= 200
  #     number_of_deaths = (@population * 0.4).floor
  #   elsif @population_density >= 150
  #     number_of_deaths = (@population * 0.3).floor
  #   elsif @population_density >= 100
  #     number_of_deaths = (@population * 0.2).floor
  #   elsif @population_density >= 50
  #     number_of_deaths = (@population * 0.1).floor
  #   else
  #     number_of_deaths = (@population * 0.05).floor
  #   end

  #   print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  # end

  #calculates the predicted_deaths by using population density and population of a given state
  def predicted_deaths(population_density, population, state)
    @population_density < 50 ? rate_of_death = 0.05 : rate_of_death = (@population_density / 500.0).round(1)
    number_of_deaths = (population * rate_of_death).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end



  # def speed_of_spread(population_density, state) #in months
  #   speed = 0.0

  #   if @population_density >= 200
  #     speed += 0.5
  #   elsif @population_density >= 150
  #     speed += 1
  #   elsif @population_density >= 100
  #     speed += 1.5
  #   elsif @population_density >= 50
  #     speed += 2
  #   else
  #     speed += 2.5
  #   end

  #   puts " and will spread across the state in #{speed} months.\n\n"

  # end

  #calculates the speed of infection by using population density of a given state
  def speed_of_spread(population_density, state) #in months

    speed = case @population_density
    when 150...199 then 1
    when 100...149 then 1.5
    when 50...99 then 2
    when 0...49 then 2.5
    else 0.5
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end

end

#=======================================================================

# DRIVER CODE
# initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread])
# alaska.virus_effects


#DRY-est way ever!
STATE_DATA.each {|state_name, state_value|
  state_obj = VirusPredictor.new(state_name, state_value.values[0], state_value.values[1], state_value.values[2], state_value.values[3])
  state_obj.virus_effects
}

#Reflections

#i wish i could've come up with a better way to refactor the spread method,
#other than that it was fun exercise to do
