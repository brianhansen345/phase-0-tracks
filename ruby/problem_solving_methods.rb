# RELEASE 0

# array1 = [2, 10, 15, 89]

# def search_for_index (array_name, integer)
# 	index = 0
# 	item_index = nil

# array_name.each do |number|
# 	if number == integer
# 		item_index = index
# 	end
# 	index += 1
# 	end
# 	item_index
# end

# p search_for_index(array1, 3)

# RELEASE 1

def fib (number)
	array = []
	while array.length < number
		if array.length == 0
			array << 0
		elsif array.length == 1
			array << 1
		else
			array << (array[-2] + array[-1])
		end
	end
	array
end

p fib(6)
p fib(100)






# Add a method to your file that takes a number of Fibonacci terms to
# generate and returns an array of the terms. For example, fib(6) would
# return [0,1,1,2,3,5]. Your method should work for a large number of
# terms. To verify your work: the last number in the array generated by
# fib(100) will be 218922995834555169026. (How can you verify this without
# 	having to compare this huge number manually? Be smart with your driver
# 	code!)















