# PSEUDOCODE
# Input real name
# Swap First and Last Name
# All vowels become the next vowel in 'aeiou'
# All consonants become the next consonant

# names_hash = {
# 	:Real1 => "Spy1",
# 	:Real2 => "Spy2"
# }

# names_hash = {
# }

# real_name = "Real"
# spy_name = "Spy"

# names_hash[:Real] = spy_name

# p names_hash



# Create the hash:

# hash = {:item1 => 1}
# Add a new item to it:

# hash[:item2] = 2




puts "Please enter your first and last name."
name = gets.chomp

# # Change Name

changed_name = name.chars.map!{|letter| letter.next.swapcase}.join('')
# names_hash << changed_name

p "Your spy name is #{changed_name}"

p "Enter another name if you'd like (otherwise please enter 'quit'"
name = gets.chomp
until input == "quit"
	changed_name = name.chars.map!{|letter| letter.next.swapcase}.join('')
	p "Your spy name is #{changed_name}"
end

# names_hash.each do |real_name, spy_name|
#   puts "#{real_name}'s spy name is #{spy_name}"
# end



# split_name = [
# 	"Brian",
# 	"Hansen"
# ]
# p split_name[0] = "Brian"
# p split_name[1] = "Hansen"


# reversed_name = split_name.map.index do |name, i|
# 	name[i] = name[i + 1]
# end
# p reversed_name


# name.chars.map!{|letter| letter.next}.join('')

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