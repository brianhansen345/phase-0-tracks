def decrypt(string)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	index = 0
	while index < string.length
	new_letter = alphabet[(alphabet.index(string[index])-1)]  
	string[index] = new_letter
	index += 1
	end
	p string
end

decrypt("tusjoh")