array1 = [2, 10, 15, 89]

def search_for_index (array_name, integer)
	index = 0
	item_index = nil

array_name.each do |number|
	if number == integer
		item_index = index
	end
	index += 1
	end
	item_index
end

p search_for_index(array1, 3)