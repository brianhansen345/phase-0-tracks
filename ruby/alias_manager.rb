# PSEUDOCODE
# Input real name
# Swap First and Last Name
# All vowels become the next vowel in 'aeiou'
# All consonants become the next consonant

puts "Please enter your name"
name = gets.chomp

# Swap First and Last Name

split_name = name.split(' ')
split_name.map! do
	reversed_name = split_name[1] + " " + split_name[0]
end

p reverse_name



# "hello world".chars.map!{|letter| letter.next}.join('')

# When will it be helpful to convert the string to an array to work with it more easily?
# 	not sure
# How will you figure out whether a letter is a vowel?
# 	determining whether it fits in "aeiou"
# How will you deal with the fact that some letters are uppercase?
# 	downcase all letters before changing the words, then capitalize the final result
# How will you handle edge cases?
# 	not sure

# Provide a user interface that lets a user enter a name and get a fake name back. Let the user
# do this repeatedly until they decide to quit by typing 'quit'. (They might just hit Enter to continue.)

# Use a data structure to store the fake names as they are entered. When the user exits the program,
# iterate through the data structure and print all of the data the user entered. A sentence like
# "Vussit Gimodoe is actually Felicia Torres" or "Felicia Torres is also known as Vussit Gimodoe" for
# each agent is fine.