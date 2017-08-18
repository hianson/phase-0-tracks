

def login(database) # returns user id
	# Ask for username as variable
	puts "Enter your username ('q' to quit):"
	username = gets.chomp
	if username == "q"
		return
	end
	# Ask for password as variable
	puts "Enter your password ('q' to quit):"
	password = gets.chomp
	if password == "q"
		return
	end
	# Check if username and password matches in database
	user_info = database.execute("
		SELECT *
		FROM logins
		WHERE logins.username = '#{username}'")
	# Failed login (username does not exist) OR (password doesn't match username)
	if user_info[0] == nil || user_info[0][2] != password
		puts "Login failed."
		login(database)
	# Otherwise if username and password matches:
	elsif user_info[0][2] == password
		puts "Successfully logged in as #{username}."
		return user_info[0][0] # Returns user id
		# Otherwise:
		else
		# Notify user login failed and try again
			puts "Login failed."
			login(database)
		end
end
