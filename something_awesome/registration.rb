# Allow user to create an account

def register(database)
	# Create a username until successful
	username = create_username(database)
	# Create a password until successful
	password = create_password
	puts "Account details:"
	puts "Username: #{username}"
	puts "Password: #{password}"
end

# Call in database so we can manipulate it
def create_username(database)
	# Ask for a username
	puts "Enter a username:"
	username = gets.chomp
	# Check if username already exists in database
	if username_available?(database, username)
		puts "Username is available!"
			# If username available, return username:
		return username
	else
		puts "Username is already taken"
		create_username(database)
	end
end

# DO NOT TOUCH THIS IT IS PERFECT SORT OF :)
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
	puts "Please enter a new password:"
	# Create variable to hold password
	password = gets.chomp
	# Ask user to repeat password
	puts "Confirm your password:"
	password_confirm = gets.chomp
	# If user repeats password successfully
	if password == password_confirm
		# Return the password
		return password
		# Otherwise:
	else
		# Ask user to try again
		puts "Passwords must match!"
		create_password
	end
end


def check_database

end
