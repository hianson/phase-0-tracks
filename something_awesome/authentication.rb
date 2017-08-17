def login(database)
	# Ask for username as variable
	puts "Enter your username:"
	username = gets.chomp
	# Ask for password as variable
	puts "Enter your password:"
	password = gets.chomp
	# Check if username and password matches in database
	find_username = database.execute("SELECT * FROM logins WHERE logins.username = '#{username}'")
	p find_username[0][2]
	# password_matches? = find_username.include?(password)
		# If username and password matches:
		if find_username[0][2] == password
		# Return true for logging in successfully
			puts "Successfully logged in."
			return true
		# Otherwise:
		else
		# Notify user login failed and try again
			puts "Login failed."
			login(database)
		end

end
