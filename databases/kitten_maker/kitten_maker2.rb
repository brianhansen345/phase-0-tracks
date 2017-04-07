require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("kittens.db")


create_table_cmd = <<-SQL 
	CREATE TABLE kittens(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		age INT
	)
SQL

db.execute(create_table_cmd)

db.execute("INSERT INTO kittens (name, age) VALUES ('Bob', 10)")






























