"What's your real name?"
real_name = gets.chomp

name = "Felicia Torres"

def name_changer(string)
	string = string.split





In phase-0-tracks/ruby/alias_manager.rb, pseudocode and write a method that takes a spy's real name
(e.g., "Felicia Torres") and creates a fake name with it by doing the following:

Swapping the first and last name.
Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the
consonants (everything else besides the vowels) to the next consonant in the alphabet. So 'a'
would become 'e', 'u' would become 'a', and 'd' would become 'f'.