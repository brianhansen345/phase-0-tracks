# BUSINESS LOGIC

def order_switcher(string)
	array = []
	string = string.split(' ')
	array = array.push(string[1]).push(' ').push(string[0]).join
	return array
end

def letter_switcher(string)
  	string = string.split('')
  	string.map! do |letter|
      vowels = "aeiouaAEIOUA"
      consonants = "bcdfghjklmnpqrstvwxyzbBCDFGHJKLMNPQRSTVWXYZ"
  	if vowels.include?(letter) == true
  	    vowels[vowels.index(letter) + 1]
      elsif consonants.include?(letter) == true
        consonants[consonants.index(letter) + 1]
      else
        letter
      end
  	end
  	string = string.join
  	return string
end

def alias_maker(string)
	order_switcher(string)
	letter_switcher(string)
end

# USER INTERFACE

names = {}
real_name = ""
until real_name == 'quit'
	puts "Enter your real name or type 'quit'."
	real_name = gets.chomp
	spy_name = alias_maker(real_name)
	names[real_name] = spy_name
	puts "Your spy name is #{spy_name}." unless real_name == 'quit'
end
names.delete('quit')
names.each do |real_name, spy_name|
	puts "#{spy_name} is actually #{real_name}."
end
