# Repeat for name, age, number of children, decor theme, color, pet preference:
	# Ask user for information
	# Store user's input (gets.chomp) in hash and convert to appropriate data type
# Print user's info back once all questions are answered
# Allow user to update keys (puts "Update any values?")
	# If user types a key, ask user for new value for that key, then update it
	# Else if user types "none", skip update
# Print latest version of hash and end program

# Write method to gather client's details
def client_details()
	$details = {}

	puts "Enter your name:"
	$details[:name] = gets.chomp.to_s
	puts "Enter your age:"
	$details[:age] = gets.chomp.to_i
	puts "Enter number of children:"
	$details[:children] = gets.chomp.to_i
	puts "Enter a decor theme:"
	$details[:decor_theme] = gets.chomp.to_s
	puts "Enter your favorite color:"
	$details[:color] = gets.chomp.to_s
	puts "Enter your pet preference:"
	$details[:pet_pref] = gets.chomp.to_s
end

# Write method to print client's details
def print_details()
	p $details
end

# Write method to allow user to update hash
def update_details
	puts "Enter a category to update its information (or enter 'skip' to quit)."
end

client_details
print_details
