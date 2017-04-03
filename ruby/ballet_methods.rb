class Dancer
	attr_accessor :name, :age, :card

	def initialize(name, age)
		@name = name
		@age = age
		@card = []
	end

	def pirouette
		"*twirls*"
	end

	def bow
		"*bows*"
	end

	def queue_dance_with(name)
		if @card.length == 5
			false
		else
			@card << name
			true
		end
	end

	def begin_next_dance
		recently_deceased = @card[0]
		# "Now dancing with #{@card[0]}."
		@card.delete(@card[0])
		"Now dancing with #{recently_deceased}."
	end

end





