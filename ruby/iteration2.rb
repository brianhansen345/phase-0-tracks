# colors = ["blue", "red", "green", "yellow"]

# months = {
# 	:january => 1,
# 	:february => 2,
# 	:march => 3,
# 	:april => 4
# }

# colors.each do |color|
# 	p color
# end

# puts "Before colors.map iteration:"
# p colors
# colors.map! do |color|
# 	color = color.upcase
# end
# puts "After colors.map iteration:"
# p colors

# months.each do |name, order|
# 	p "#{name} is month number ##{order}"
# end

array1 = [1,2,3,4,5,6,7,8]

# array1.each do |number|
# 	array1.delete_if {|number| number < 5 }
# end
# p array1

# array1.each do |number|
# 	if number < 5
# 		array1.delete(number)
# 	end
# end

hash1 = {
	"one" => 1,
	"two" => 2,
	"three" => 3,
	"five" => 5,
	"six" => 6
}

# hash1.each do |word, integer|
# 	hash1.delete_if {|word, integer| integer < 5 }
# end
# p hash1

# array1.each do |number|
# 	array1.keep_if {|number| number < 5 }
# end
# p array1

# hash1.each do |word, integer|
# 	hash1.keep_if { |word, integer| integer < 5 }
# end
# p hash1

# new_array1 = array1.drop_while { |i| i < 4 }
# p new_array1

# new_hash1 = hash1.fetch_values("one", "two")
# p new_hash1 

h = { "a" => 100, "b" => 200 }
h.fetch_values("cow", "cat") 
 


# A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!
# A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).







