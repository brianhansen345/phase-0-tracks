def encrypt(string)
  index = 0
  while index < string.length
  string[index] = string[index].next
  index += 1
  end
  p string
end

# encrypt("short")

# def decrypt(string)
#   alphabet = "abcdefghijklmnopqrstuvwxyz"
#   index = 0
#   while index < string.length
#   new_letter = alphabet[(alphabet.index(string[index])-1)]  
#   string[index] = new_letter
#   index += 1
#   end
#   p string
# end

def decrypt(string)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  index = 0
  new_string = ''
  while index < string.length
  new_letter = alphabet[(alphabet.index(string[index])-1)]  
  new_string += new_letter
  index += 1
end
p new_string
end

puts "Would you like to decrypt or encrypt a password?"
  string = gets.chomp
puts "Please enter your password"
  password = gets.chomp


if string == "encrypt"
  puts encrypt(password)
elsif string == "decrypt"
  puts decrypt(password)
else 
  p "Does not compute; please enter encrypt or decrypt."
end

# decrypt("tipsu")

# encrypt("abc")
# encrypt("zed")
# decrypt("bcd")
# decrypt("afe")

# #Ruby evaluates code in parentheses first, so it encrypts swordfish, and then decrypts.
# decrypt(encrypt("swordfish"))