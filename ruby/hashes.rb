data = {
	:name = "",
	:age = "",
	:num_children = "",
	:decor_theme = "",
	:loves_all_black? = "",
	:money_no_object? = "",
}

puts "What's your name?"
data[:name] = gets.chomp

puts "What's your age?"
data[:age] = gets.chomp

puts "How many children do you have?"
data[:num_children] = gets.chomp

puts "What do you want your decor theme to be?"
data[:decor_theme] = gets.chomp

puts "Do you love all black?"
data[:loves_all_black] = gets.chomp

puts "Is money no object?"
data[:money_no_object] = gets.chomp

puts "Do you want to update any key? If so, which one? If not, enter 'none'."
update = gets.chomp.downcase
	break if update == "none"
puts "What would you like the new value to be?"
update2 = gets.chomp.downcase
	if update == "name"
		data[:name] = update2
	end
	if update == "age"
		data[:age] = update2
	end
	if update == "number of children"
		data[:num_children] = update2
	end
	if update == "decor theme"
		data[:decor_theme] = update2
	end
	if update == "loves all black"
		data[:loves_all_black] = update2
	end
	if update == "money no object"
		data[:money_no_object] = update2
	end

p data


 # (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.)
 # HOW TO USE THE ABOVE???