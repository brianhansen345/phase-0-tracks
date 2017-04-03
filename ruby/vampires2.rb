puts "How many employees will be processed?"
num_employees = gets.chomp.to_i
until num_employees == 0
	human_name = true
	puts "What's your name?"
	name = gets.chomp
	if name == "Drake Cula" || name == "Tu Fang"
		human_name = false
	end
	puts "How old are you?"
	age = gets.chomp.to_f
	puts "What year were you born in?"
	birth_year = gets.chomp.to_i
	puts "Want garlic bread?"
	garlic_bread = gets.chomp
		if garlic_bread == "y" || garlic_bread == "yes"
			garlic_bread = true
		else
			garlic_bread = false
		end
	puts "Want health insurance?"
	health_ins = gets.chomp
	if health_ins == "y" || health_ins == "yes"
			health_ins = true
		else
			health_ins = false
		end
	allergies = nil
	until allergies == "done" || allergies == "sunshine"
		puts "Please list any allergies you have. Enter 'done' when finished."
		allergies = gets.chomp.downcase
		if allergies == "sunshine"
			age = -999999999999999999999999999999999999
			garlic_bread = true
			health_ins = false
			human_name = true
		end
	end
	if (age == (2017 - birth_year)) && (garlic_bread || health_ins) && human_name
		puts "Probably not a vampire."
	elsif (age != (2017 - birth_year)) && !garlic_bread && health_ins && human_name
		puts "Probably a vampire."
	elsif (age != (2017 - birth_year)) && garlic_bread && !health_ins && human_name
		puts "Probably a vampire."
	elsif (age != (2017 - birth_year)) && !garlic_bread && !health_ins && human_name
		puts "Almost certainly a vampire."
	elsif human_name == false
		puts "Definitely a vampire."
	else
		puts "Results inconclusive."
	end
	num_employees -= 1
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."






