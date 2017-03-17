array = ["Red", "Blue", "Green"]
hash = {
	"Hugh Jackman" => "Wolverine",
	"Ryan Reynolds" => "Deadpool",
	"Tobey Maguire" => "Spiderman"
}

puts "Original array:"
p array

puts "After .each for array:"
array.each do |color|
	puts "This is color #{color}"
end
p array

puts "After .map! call for array:"
array.map! do |letter|
	letter = letter + "i"
	puts letter
end

puts "After .each call for hash:"
hash.each do |actor, role|
	puts "#{actor} is best known for his role as #{role}"
end


A method that iterates through the items, deleting any that meet a certain condition (for example, 
	deleting any numbers that are less than 5).


A method that filters a data structure for only items that do satisfy a certain condition 
	(for example, keeping any numbers that are less than 5).
A different method that filters a data structure for only items satisfying a certain condition 
-- Ruby offers several options!
A method that will remove items from a data structure until the condition in the block 
evaluates to false, then stops (you may not find a perfectly working option for the hash, 
	and that's okay).