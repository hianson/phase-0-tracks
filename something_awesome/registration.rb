def register(database)
	username = create_username(database)
	if username == "q"
		return
	end
	password = create_password
	if password == "q"
		return
	end
	email = create_email(database)
	if email == "q"
		return
	end
	database.execute("INSERT INTO logins (username, password, email) VALUES ('#{username}', '#{password}', '#{email}');")
	puts "Registration was successful:"
	puts "Username: #{username}"
	puts "Password: #{password}"
	puts "Email: #{email}"
end

# Call in database so we can manipulate it
def create_username(database)
	# Ask for a username
	puts "Enter a username ('q' to quit):"
	username = gets.chomp
	# Check if username already exists in database
	if username_available?(database, username)
			# If username available, return username:
		return username
	else
		puts "Username is already taken"
		create_username(database)
	end
end

def username_available?(database, username)
	find_user = database.execute("SELECT * FROM logins WHERE logins.username = '#{username}'")
	if find_user[0] == nil
		return true # Username is available!
	else
		return false # Username is taken.
	end
end

# Ruby cookbook casual email validation
# in the future we will be sure to send new users a confirmation email
def validate_email?(email)
	valid = '[A-Za-z\d.+-]+'
	(email =~ /#{valid}@#{valid}\.#{valid}/) == 0
end

def create_email(database)
	# Ask for an email
	puts "Enter an email address (ex. something@awesome.com) ('q' to quit):"
	email = gets.chomp
	# Validate email
	if validate_email?(email) == true
		# Check if email already exists in database
		if username_available?(database, email)
				# If email available, return email:
			return email
		else
			puts "Email is already registered."
			create_username(database)
		end
	else
		puts "Incorrect format."
		create_email(database)
	end
end

def email_available?(database, email)
	find_email = database.execute("SELECT * FROM logins WHERE logins.email = '#{email}'")
	if find_email[0] == nil
		return true # Email is available!
	else
		return false # Email is taken.
	end
end

def create_password # Ideally returns a password
	# Ask for a password
	puts "Please enter a new password ('q' to quit):"
	# Create variable to hold password
	password = gets.chomp
	if password == "q"
		return password
	end
	# Ask user to repeat password
	puts "Confirm your password ('q' to quit):"
	password_confirm = gets.chomp
	if password_confirm == "q"
		return password_confirm
	end
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
