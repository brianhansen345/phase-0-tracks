# BUSINESS LOGIC

require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("lifts.db")

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS lifts(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		weight INT,
		sets INT,
		reps INT,
		rest_between_sets INT,
		able_to_complete BOOLEAN,
		next_weight INT,
		lift_date INT
	)
SQL

db.execute(create_table_cmd)

def create_lift(db, name, weight, sets, reps, rest_between_sets, able_to_complete, next_weight, 
	lift_date)
  db.execute("INSERT INTO lifts (name, weight, sets, reps, rest_between_sets, able_to_complete, 
  	next_weight, lift_date) VALUES (?, ?, ?, ?, ?, ?, ?, ?)", [name, weight, sets, reps, 
  	rest_between_sets, able_to_complete, next_weight, lift_date])
end

# USER INTERFACE
action = ""
until action == "quit"
	puts "What would you like to do? Select: 'add a lift', 'view past lifts', or 'quit'"
	action = gets.chomp.downcase
	if action == "add a lift"
		puts "What is the name of the lift?"
		name = gets.chomp.downcase
		puts "How much weight?"
		weight = gets.chomp.to_f
		puts "How many sets?"
		sets = gets.chomp.to_i
		puts "How many reps?"
		reps = gets.chomp.to_i
		puts "How much rest between sets?"
		rest_between_sets = gets.chomp.downcase.to_i
		puts "Were you able to complete the lift?"
		able_to_complete = gets.chomp.downcase
		puts "What should the weight be at the next session?"
		next_weight = gets.chomp.downcase.to_f
		puts "What was the date of the lift? Input 8 digit number: 'yearmonthday'"
		lift_date = gets.chomp.downcase.to_i
		create_lift(db, name, weight, sets, reps, rest_between_sets, able_to_complete, next_weight, 
			lift_date)
	elsif action == "view past lifts"
		puts "Select one: 'view lifts from a certain date', 'view lifts at a certain 
	  		weight', or 'quit'"
		input2 = gets.chomp.downcase
		if input2 == "view lifts from a certain date"
			puts "Enter the date as 8 digit number (ie 'yearmonthday'"
			date = gets.chomp.to_i
			lifts = db.execute("SELECT * FROM lifts WHERE lift_date=#{date}")
			lifts.each do |lift|
	 			puts "#{lift[8]}: #{lift[1]} attempt at #{lift[2]} lbs (#{lift[3]} sets/#{lift[4]} 
	  			reps/#{lift[5]} mins rest: #{lift[6]}. Next attempt at #{lift[7]}."
	  		end
		elsif input2 == "view lifts at a certain weight"
			puts "Enter the weight:"
			weight = gets.chomp.to_i
			lifts = db.execute("SELECT * FROM lifts WHERE weight=#{weight}")
			lifts.each do |lift|
				puts "#{lift[8]}: #{lift[1]} attempt at #{lift[2]} lbs (#{lift[3]} sets/#{lift[4]} 
	  			reps/#{lift[5]} mins rest: #{lift[6]}. Next attempt at #{lift[7]}."
	  		end
		else
			break
		end
	else
		"Does not compute."
	end
end






	# 	db.execute("INSERT INTO lifts (name, weight, sets, reps, rest_between_sets, able_to_complete, 
	# next_weight, lift_date) VALUES ('squat', 185, 1, 5, 0, 'true', 190, 20170404)")








# lifts = db.execute("SELECT * FROM lifts")
# lifts.each do |lift|
# 	puts "#{lift[8]}: #{lift[1]} attempt at #{lift[2]} lbs (#{lift[3]} sets/#{lift[4]} reps/#{lift[5]} 
# 	mins rest: #{lift[6]}. Next attempt at #{lift[7]}."
# end



# 
# lifts.each do |lift|
# 	puts "#{lift[8]}: #{lift[1]} attempt at #{lift[2]} lbs (#{lift[3]} sets/#{lift[4]} reps/#{lift[5]}
# 	mins rest): #{lift[6]}. Next attempt at #{lift[7]}."
# end


