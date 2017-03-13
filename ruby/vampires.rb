puts "How many employees will be processed?"
employees = gets.chomp.to_i

until employees == 0
	puts "What is your name?"
	name = gets.chomp
	puts "How old are you?"
	age = gets.chomp.to_i
	puts "What year where you born?"
	birth_year = gets.chomp.to_i
	puts "Our company cafeteria serves garlic bread. Should we order some for you (y/n)?"
	garlic_bread = gets.chomp.downcase
	puts "Would you like to enroll in the company's health insurance (y/n)?"
	health_insurance = gets.chomp
	puts "Please state any allergies you have one at a time (say 'Done' when finished or if you have no allergies)."
	allergies = gets.chomp.downcase
	until allergies == "done"
	puts "Any more allergies?"
	allergies = gets.chomp.downcase
	end

if age_year_match && garlic_bread_yes && health_insurance_yes && human_name
	result = "Probably not a vampire."
elsif age_year_match && garlic_bread_yes && health_insurance_no && human_name
	result = "Probably not a vampire."
elsif age_year_match && garlic_bread_no && health_insurance_yes && human_name
	result = "Probably not a vampire."
elsif age_year_diff && garlic_bread_yes && health_insurance_no && human_name
	result = "Probably a vampire."
elsif age_year_diff && garlic_bread_no && health_insurance_yes && human_name
	result = "Probably a vampire."
elsif age_year_diff && garlic_bread_no && health_insurance_no && human_name
	result = "Almost certainly a vampire."
elsif vampire_name
	result = "Definitely a vampire."
else
	result = "Results inconclusive."
end 
employees = employees - 1
p result
end

