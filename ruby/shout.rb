# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#   def self.yelling_happily(words)
#   	words + "!!!" + " :)"
#   end
# end

# p Shout.yell_angrily("I hate bats")
# p Shout.yelling_happily("I love bats")

module Shout
	def yell_angrily(words)
		puts "#{words} !!! :("
	end

	def yell_happily(words)
		puts "#{words} !!! :)"
	end
end

class Man
	include Shout
end

class Bear
	include Shout
end

man = Man.new
man.yell_angrily("I hate bears")
man.yell_happily("I love cats")

bear = Bear.new
bear.yell_happily("I love men")
bear.yell_angrily("I hate rats")


