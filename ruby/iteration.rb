array = ["Red", "Blue", "Green"]
hash = {
	"Hugh Jackman" => "Wolverine",
	"Ryan Reynolds" => "Deadpool",
	"Tobey Maguire" => "Spiderman"
}

puts "Array values:"
array.each do |color|
	color.next
end

array.map! do |letter|
	puts letter
	letter.swapcase
end

p array

puts "Hash values:"
hash.each do |actor, role|
	puts "#{actor} is best known for his role as #{role}"
end