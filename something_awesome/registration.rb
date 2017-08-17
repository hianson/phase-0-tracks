
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
	username_available?(database, username)

	# Check if username already exists in database

	# If username doesn't exist:
		# Save username as a variable to return later
		# Otherwise if username already exists:
			# Notify user and make them try again

	# Return a username
	return username
end

def username_available?(database, username)
	find_user = database.execute("SELECT * FROM logins WHERE logins.username = '#{username}'")
	if find_user[0] == nil
		return true # Username is available!
	else
		return false # Username is taken.
	end

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
