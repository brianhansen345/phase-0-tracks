array = ["Red", "Blue", "Purple"]
hash = {
	"Hugh Jackman" => "Wolverine",
	"Ryan Reynolds" => "Deadpool",
	"Tobey Maguire" => "Spiderman"
}

# puts "Array values:"
# array.each do |color|
# 	puts color
# 	color.next
# end

array.map! do |color|
	puts color
	color.swapcase
end

# puts "Hash values:"
# hash.each do |actor, role|
# 	puts "#{actor} is best known for his role as #{role}"
# end

# hash.map do
# end




# Demonstrate that you can iterate through each one using .each, and then using .map!
# (modifying the data in some way). Note that you can't call .map! on a hash, so you
# can skip that (.map returns an array, so a destructive map method is logically impossible
# on a hash). Print the data structures before and after each call to demonstrate whether
# they have been modified or not.