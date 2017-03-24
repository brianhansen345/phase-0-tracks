# PSEUDOCODE FOR CLASS
# User must guess a secret word or phrase
# User gets one guess per character of word or phrase
# User will see a string with a blank space for every character in word or
# phrase
# If the user guesses a letter that is contained in the word/phrase, the
# letter will be shown to the user (like in Wheel of Fortune)
# User gets a congratulatory message if they win and a taunting message if
# they lose.

secret_word = "quick"

class Guessatron_4000
	attr_accessor :guess_count, :is_over, :is_over_won, :is_over_lost, :secret_word

	def initialize
		@secret_word = "_____"
     	@guess_count = 0
     	@is_over = false
     	@is_over_won = false
     	@is_over_lost = false
	end

	def check_word(letter)
		guess_count += 1
		if game.secretword.split(//).include?(letter)

			# code
		elsif guess_count == @secret_word.length
			@is_over = true
    	  	@is_over_lost = true
    	    @is_over_won = false
		# elsif
		# DOES THE ELSE NEED TO BE FALSE?
		else
			false
		end
	end

	def method_name
		#code
	end

end

# user interface

game = Guessatron_4000.new
p "Welcome to the Guessatron_4000. Your secret word is:"
p game.secret_word
p "You have 5 guesses. Please guess a letter."
guess = gets.chomp.to_s



# while !game.is_over
# 	puts "Guess another letter."
#     guess = gets.chomp.to_s
# end

# if game.is_over_won
# 	puts "You won in #{game.guess_count} guesses...great job!"
# end

# if game.is_over_lost
# 	puts "You fucking suck!"
# end
