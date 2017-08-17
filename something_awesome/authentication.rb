def login(database)
	# Ask for username as variable
	puts "Enter your username:"
	username = gets.chomp
	# Ask for password as variable
	puts "Enter your password:"
	password = gets.chomp
	# Check if username and password matches in database
	user_info = database.execute("SELECT * FROM logins WHERE logins.username = '#{username}'")
	# Failed login (username does not exist)
	# OR (password doesn't match username)
	if user_info[0] == nil || user_info[0][2] != password
		puts "Login failed."
		login(database)
	# Otherwise if username and password matches:
	elsif user_info[0][2] == password
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
