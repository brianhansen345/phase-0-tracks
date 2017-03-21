class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

# Refactor your code with attr_reader and attr_accessor. Verify that your
# driver code still works.

	def initialize (gender, ethnicity)
		p "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		p "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		p "That was a good #{cookie_type}!"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer_name)
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking.insert(-1, reindeer_name)  
	end

end

# jimbo = Santa.new("male", "white")
# jimbo.speak
# jimbo.eat_milk_and_cookies("Sugar Cookie")
# jimbo.celebrate_birthday
# jimbo.get_mad_at("Vixen")
# jimbo.gender="all genders, simultaneously"
# p jimbo
# p jimbo.age
# p jimbo.ethnicity

# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do
#   santas << Santa.new(example_genders[rand(7)], example_ethnicities[rand(7)])
# end

# p santas

santas = []
example_genders = ["agender", "female", "bigender", "male", "gender fluid", "N/A", "Gender 16", "Sex? Uh...yes, please!", "transgender (pre-op)", "transgender (post-op)", "non-gender"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "yellow", "brown", "Sub-Saharan African", "Poop", "Race is a social construct", "Mulato", "Quadroon", "mongrel", "mutt"]
10000000.times do
	santa = Santa.new(example_genders[rand(example_genders.length)], example_ethnicities[rand(example_ethnicities.length)])
	rand(140).times do
		santa.celebrate_birthday
		end
	p santa
end




