

def login(database) # returns username
	# Ask for username as variable
	puts "Enter your username:"
	username = gets.chomp
	# Ask for password as variable
	puts "Enter your password:"
	password = gets.chomp
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
