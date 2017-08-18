# We've built Something Awesome which lets us keep track of our spending.
# This thing allows you to:
# Register a username to keep a personal list.
# Add items to a list, including their quantites, and costs.
# View and delete those items.
# Provide access to information with user authentication
# Create, retrieve, manipulate information based on user authentication


# METHODS
require_relative 'registration.rb'
require_relative 'authentication.rb'
require_relative 'tracker.rb'
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
user_id = nil

#############################################################
# DRIVER CODE # DRIVER CODE # DRIVER CODE # DRIVER CODE ###
#########################################################
# Allow user to register or login
logged_in = false
until logged_in == true
	puts "Welcome to the Awesome Expense Tracker!"
	puts "Would you like to 'register' or 'login'?"
	user_input = gets.chomp
	if user_input == 'register'
		register(awesome_db)
	elsif user_input == 'login'
		# save user as variable to change their data
		user_id = login(awesome_db)
	end
	if user_id != nil
		logged_in = true
	end
end

#############################################################
# DRIVER CODE ONCE USER LOGS IN ###########################
#########################################################
# Track monthly purchases
until user_id == nil
	puts "*" * 30
	puts "    awesome expense tracker"
	puts "1. show items"
	puts "2. add an item"
	puts "3. remove an item"
	puts "4. clear all items from list"
	puts "0. exit"
	puts "          select 1-9"
	puts "*" * 30
	user_input = gets.chomp
	if user_input == "1"
		view_transactions(awesome_db, user_id)
	elsif user_input == "2"
		add_transaction(awesome_db, user_id)
	elsif user_input == "3"
		remove_transaction(awesome_db, user_id)
	elsif user_input == "4"
		clear_list(awesome_db, user_id)
	elsif user_input == "0"
		user_id = nil
	end
end
