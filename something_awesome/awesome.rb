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
require_relative 'authentication.rb'
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

#############################################################
# DRIVER CODE # DRIVER CODE # DRIVER CODE # DRIVER CODE ###
#########################################################
# Allow user to register or login
logged_in = false
until logged_in == true
	puts "Welcome to Something Awesome!"
	puts "Would you like to 'register' or 'login'?"
	user_input = gets.chomp
	if user_input == 'register'
		register(awesome_db)
	elsif user_input == 'login'
		# method to login
		logged_in = login(awesome_db)
	end
end
