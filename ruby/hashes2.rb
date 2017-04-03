data = {
	:name => "",
	:age => "",
	:num_children => "",
	:decor_theme => "",
	:loves_black => ""
}

puts "What's your name?"
data[:name] = gets.chomp
puts "What's your age?"
data[:age] = gets.chomp.to_i
puts "How many children do you have?"
data[:num_children] = gets.chomp.to_i
puts "What would you like your decor theme to be?"
data[:decor_theme] = gets.chomp
puts "Do you love black?"
data[:loves_black] = gets.chomp.downcase
if (data[:loves_black] == "yes") || (data[:loves_black] == "y")
	data[:loves_black] = true
elsif (data[:loves_black] == "no") || (data[:loves_black] == "n")
	data[:loves_black] = false
else
	data[:loves_black] = nil
end

p data

puts "Enter anything you want to update or type 'none'."
key_to_update = gets.chomp
if key_to_update != "none"
	puts "What do you want to update it to?"
	value_to_update = gets.chomp
	data[key_to_update] = value_to_update
end

p data


