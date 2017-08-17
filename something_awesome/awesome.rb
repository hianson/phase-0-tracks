# 'Create something awesome'
# We don't know what to make, so we're just going to make random parts of something useful
# Be able to:
# Create user login data
# Retrieve user login data
# Manipulate user login data
# Provide access to information with user authentication
# Create, retrieve, manipulate information based on user authentication


# METHODS
require_relative 'registration.rb'
require 'sqlite3'

# CREATE TABLE:
awesome_db = SQLite3::Database.new("awesome.db")
create_usernames_table = <<-SQL
	CREATE TABLE IF NOT EXISTS logins (
		id INTEGER PRIMARY KEY,
		username VARCHAR(255),
		password VARCHAR(255),
		email VARCHAR(255)
	)
SQL
awesome_db.execute(create_usernames_table)


# DRIVER CODE
# Allow user to register or login
username = create_username(awesome_db)
# p username
