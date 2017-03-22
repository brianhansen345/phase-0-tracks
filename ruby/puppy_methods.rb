# class Puppy

#   def initialze
#   	p "Initializing new puppy instance ..."
#   end

#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end

#   def speak(integer)
#   	integer.times {puts "Woof!"}
#   end

#   def roll_over
#   	p "Rolls over."
#   end

#   def dog_years(integer)
#   	p integer * 7
#   end

#   def wag_tail
#   	p "Swish swish."
#   end

# end

# Nala = Puppy.new
# Nala.fetch("ball")
# Nala.speak(2)
# Nala.roll_over
# Nala.dog_years(4)
# Nala.wag_tail

class Robot

	def initialize
		p "Preparing to take all your base."
	end

	def laser(fire)
		fire.times do
			p "Pew"
		end
	end

	def refuel(fuel_type)
		p "I've refueled with #{fuel_type}!"
	end

end

# Use a loop to make 50 instances of your class.
# Modify your loop so that it stores all of the instances in a data
# structure.

robots = []

50.times do
	robi = Robot.new
	robots.push(robi)
end

# Iterate over that data structure using .each and call the instance
# methods you wrote on each instance.

robots.each {|robot| robot.laser(1)}
robots.each {|robot| robot.refuel("nitro")}

# robots.each do |robot|
# 	robot.laser(1)
#   robot.refuel("nitro")
# end


