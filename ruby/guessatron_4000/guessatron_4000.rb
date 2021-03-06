# PSEUDOCODE FOR CLASS
# User must guess a secret word or phrase
# User gets one guess per character of word or phrase
# User will see a string with a blank space for every character in word or
# phrase
# If the user guesses a letter that is contained in the word/phrase, the
# letter will be shown to the user (like in Wheel of Fortune)
# User gets a congratulatory message if they win and a taunting message if
# they lose.

class Guessatron_4000
	attr_accessor :guess_count, :is_over, :is_over_won, :is_over_lost, :secret_word

	def initialize
		@secret_word = "_" * game.secret_word.length
     	@guess_count = 0
     	@is_over = false
     	@is_over_won = false
     	@is_over_lost = false
     	@guesses = []
	end

	def check_word(guess)
		if @guesses.include?(guess)
			@guess_count = @guess_count
		else
			@guess_count += 1
		end
		@guesses << guess
		# secret_word = "quick" DOES THIS NEED TO BE THERE???
		if @guess_count <= secret_word.length && secret_word.include?(guess)
			@secret_word.slice!(secret_word.index(guess))
			@secret_word.insert((secret_word.index(guess)), guess)
			if @guess_count == secret_word.length && @secret_word == secret_word
				@is_over = true
     	  		@is_over_lost = false
     	    	@is_over_won = true
     	    elsif @guess_count == secret_word.length && @secret_word != secret_word
     	    	@is_over = true
     	  		@is_over_lost = true
     	    	@is_over_won = false
     	    else
     	    	@secret_word = @secret_word
     	    end
		elsif @guess_count == secret_word.length && (@secret_word == secret_word)
			@is_over = true
     	  	@is_over_lost = false
     	    @is_over_won = true
     	 elsif (@guess_count == secret_word.length) && (@secret_word != secret_word)
     	 	@is_over = true
     	 	@is_over_lost = true
     	 	@is_over_won = false
		else
			@secret_word = @secret_word
		end
	end

end

# user interface

game = Guessatron_4000.new

puts "User1, enter a secret word."
secret_word = gets.chomp
@secret_word = "_" * game.secret_word.length
puts "User2, welcome to the Guessatron_4000."

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