# ENCRYPT METHOD

def encrypt(string)
	index = 0
	while index < string.length
		if string[index] != "z"
			string[index] = string[index].next
		else
			string[index] = "a"
		end
		index += 1
	end
	p string
end

def decrypt(string)
	counter = 0
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	while counter < string.length
		string[counter] = alphabet[(alphabet.index(string[counter]) - 1)]
		counter += 1
	end
	p string
end

puts "Would you like to decrypt or encrypt a password?"
encrypt_pass = gets.chomp.downcase
if encrypt_pass == "encrypt"
	encrypt_pass = true
elsif encrypt_pass == "decrypt"
	encrypt_pass = false
else
	puts "Does not compute."
end

puts "What is the password?"
password = gets.chomp.downcase
if encrypt_pass
	encrypt(password)
else
	decrypt(password)
end