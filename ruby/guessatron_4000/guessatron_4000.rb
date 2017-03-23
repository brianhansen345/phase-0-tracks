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
     	@guess_count = 1
     	@is_over = false
     	@is_over_won = false
     	@is_over_lost = false
	end

	def check_word(guess)
		@guess_count += 1
		secret_word = "quick"
		if secret_word.include?(guess)
			@secret_word.slice!(secret_word.index(guess))
			@secret_word.insert((secret_word.index(guess)), guess)
		elsif @guess_count == @secret_word.length
			@is_over = true
     	  	@is_over_lost = true
     	    @is_over_won = false
     	 elsif @secret_word == "quick"
     	 	@is_over = true
     	 	@is_over_lost = false
     	 	@is_over_won = true
		else
			@secret_word = @secret_word
		end
	end

end

# user interface

game = Guessatron_4000.new
p "Welcome to the Guessatron_4000."

while !game.is_over
	puts "The secret word is #{game.secret_word}. #{secret_word.length - game.guess_count} guesses left. Guess a letter."
	guess = gets.chomp.to_s
	game.check_word(guess)
end

if game.is_over_won
	puts "You won in #{game.guess_count} guesses...great job!"
end

if game.is_over_lost
	puts "You suck!"
end
