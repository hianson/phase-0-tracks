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
require_relative 'tracker.rb'
require_relative 'ui.rb'
require 'sqlite3'

# CREATE DATABASE:
awesome_db = SQLite3::Database.new("awesome.db")

# CREATE TABLE FOR LOGINS:
create_logins_table = <<-SQL
	CREATE TABLE IF NOT EXISTS logins (
		id INTEGER PRIMARY KEY,
		username VARCHAR(255),
		password VARCHAR(255),
		email VARCHAR(255)
	)
SQL

# CREATE TABLE FOR TRACKER:
create_purchases_table = <<-SQL
	CREATE TABLE IF NOT EXISTS purchases (
		id INTEGER PRIMARY KEY,
		item VARCHAR(255),
		quantity REAL,
		cost REAL,
		date VARCHAR(255),
		login_id INT,
		FOREIGN KEY (login_id) REFERENCES logins(id)
	)
SQL

awesome_db.execute(create_logins_table)
awesome_db.execute(create_purchases_table)
user = nil

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
		# save user as variable to change their data
		user = login(awesome_db)
	end
	if user != nil
		logged_in = true
	end
end

#############################################################
# DRIVER CODE ONCE USER LOGS IN ###########################
#########################################################
# Track monthly purchases
ui
