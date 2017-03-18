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

puts "After .map call for array:"
new_array = array.map do |color|
	puts color
	color = color + "i"
end
p new_array

puts "After .map! call for array:"
array.map! do |color|
	color = color + "i"
	puts color
end

puts "After .each call for hash:"
hash.each do |actor, role|
	puts "#{actor} is best known for his role as #{role}"
end

puts "After .map call for hash:"
new_hash = hash.map do |actor, role|
	puts "#{actor} is best known for his role as #{role}"
	actor = actor.upcase
end
p new_hash

array2 = [1, 2, 10]
hash2 = {
	"A" => 1,
	"B" => 2,
	"C" => 10
}

1
array2.delete_if {|x| x < 5}
hash2.delete_if { |key, value| value < 5}

2
array2.keep_if {|x| x < 5}
hash2.keep_if {|key, value| value < 5}

3
p array2.drop(2)
p hash2.drop(2)

4
p array2.take_while { |i| i < 10}
p hash2.take_while { |letter, number| number < 10}