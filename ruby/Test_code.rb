# class Puppy

#   def initialize
#   	p "Initializing new puppy instance ..."
#   end

#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end

# end

# Nala = Puppy.new
# Nala.fetch("ball")

class Bicycle

	def initialize
		p "Initializing new Bicycle instance..."
	end

	def ride_bike
		p "I rode the bike."
	end

	def clean_bike(integer)
		integer.times do
			p "I cleaned the bike"
		end
	end
end

instances_of_Bicycle = []

50.times do
	instance = Bicycle.new
	instances_of_Bicycle << instance
end

p instances_of_Bicycle

instances_of_Bicycle.each do |instance|
	instance.ride_bike
	instance.clean_bike(2)
end









