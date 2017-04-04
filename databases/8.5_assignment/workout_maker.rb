require 'sqlite3'

db = SQLite3::Database.new("workouts.db")

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS lifts(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		weight INT,
		sets INT,
		reps INT,
		rest_between_sets INT,
		able_to_complete BOOLEAN,
		lift_date INT
	)
SQL

db.execute(create_table_cmd)