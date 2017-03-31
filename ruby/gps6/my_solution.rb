# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

# case 5
# when (1..10)
#   puts "case statements match inclusion in a range"
# end






  def predicted_deaths
    num = case @population_density
    when 200..99999 then 0.4
    when 150...200 then 0.3
    when 100...150 then 0.2
    when 50...100 then 0.1
    when 0...50 then 0.05
    end
    number_of_deaths = (@population * num).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end



  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = case @population_density
    when 200..99999 then 0.5
    when 150...200 then 1
    when 100...150 then 1.5
    when 50...100 then 2
    when 0...50 then 2.5
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

 STATE_DATA.each do |state, density_population|
  predicted_state = VirusPredictor.new(state, density_population[:population_density], density_population[:population])
  predicted_state.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

#=======================================================================
# Reflection Section

# One way to create a hash key is by keeping it as a string (as in "North Dakota") without a
# colon. The advantage to this is you can input strings with spaces between words and not need
# to tie them together using an underscore or some other method. The other way to create a
# hash key is to use a colon .
#
# require_relative links one file to another. When they are linked, you can access either
# document as if they were part of the same file. require_relative is for files to be
# accessed via a relative path while require is used to access files via an absolute path
#
# .each is a built-in method that will allow you to iterate through a hash.
#
# They were all rather long. For instance, number_of_deaths could easily have been written as
# num_deaths. The information was still conveyed with several fewer letter used.
#
# Refactoring was the concept that was most solidified in this challenge. 