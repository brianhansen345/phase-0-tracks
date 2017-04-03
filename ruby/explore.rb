# function that turns "hello" into "olleh"

string = "hello"
array = string.split('')

array.map! do |index|
	array[0] = 'h'
end
p array