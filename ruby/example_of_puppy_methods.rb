# class Puppy

#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end

  def speak(integer)
  	integer.times do
  		p "Woof!"
  	end
  end

#   def roll_over
#   	p "*rolls over"
#   end

#   def dog_years(integer)
#   	p (integer * 7)
#   end

#   def licks(body_part)
#   	p "I licked your #{body_part}!"
#   end

#   def initialize
#   	p "Initializing new puppy instance ..."
#   end

# end

# Nala = Puppy.new

# Nala.fetch("ball")
# Nala.speak(3)
# Nala.roll_over
# Nala.dog_years(4)
# Nala.licks("face")

class Bicycle

	def initialize(name)
		# p "Initializing new Bicycle instance..."
		@name = name
	end

	def flat_tire
		p "My #{@name} got a flat tire!"
	end

	def ride_bike(integer)
		integer.times do
			p "I rode the #{@name}"
		end
	end	

end

instances_of_bicycle = []

50.times do
  instance = Bicycle.new("Schwinn ##{rand(50)}")
  instances_of_bicycle << instance
end

instances_of_bicycle.each do |instance|
	instance.flat_tire
	instance.ride_bike(1)
end

# create instance variables
# try to include that within bicycle class






