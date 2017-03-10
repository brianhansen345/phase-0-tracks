age = nil

puts "What is the hamster's name?"
name = gets.chomp

puts "What is the hamster's volume level, from 1 to 10?"
volume = gets.chomp.to_i

puts "What is the hamster's fur color?"
color = gets.chomp

puts "Is the hamster a good candidate for adoption?"
adoption = gets.chomp

puts "What is the hamster's age?"
age = gets.chomp.to_f

puts "The hamster's name is #{name}"
puts "The hamster's volume is #{volume}"
puts "The hamster's fur color is #{color}"
if adoption == "yes"
  puts "The hamster is a good candidate for adoption"
elsif adoption == "no"
  puts "The hamster is not a good candidate for adoption"
else
  puts "I didn't understand your response."
end
puts "The hamster's age is #{age}"