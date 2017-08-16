
# Allow user to create an account

def register
	# Create a username until successful
	# Create a password until successful
end

# Call in database so we can manipulate it
def create_username(database)
	# Ask for a username
	puts "Enter a username:"
	username = gets.chomp
	username_exists?(database)

	# Check if username already exists in database

	# If username doesn't exist:
		# Save username as a variable to return later
		# Otherwise if username already exists:
			# Notify user and make them try again

	# Return a username
	return username
end

def username_exists?(database)
	# check_username_cmd = awesome_db.execute("SELECT usernames.username FROM usernames WHERE username='anson'")
	check_username_cmd = database.execute("SELECT * FROM logins;")
	p check_username_cmd
end

def create_password
	# Ask for a password

	# Create variable to hold password

	# Ask user to repeat password
		# If user repeats password successfully
		# Return the password
		# Otherwise:
			# Ask user to try again
end

def check_database

end
