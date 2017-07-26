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
	$details_hash = {
		name: nil,
		age: nil,
		children: nil,
		decor_theme: nil,
		color: nil,
		pet_pref: nil
	}

	puts "Enter your name:"
	$details_hash[:name] = gets.chomp.to_s
	puts "Enter your age:"
	$details_hash[:age] = gets.chomp.to_i
	puts "Enter number of children:"
	$details_hash[:children] = gets.chomp.to_i
	puts "Enter a decor theme:"
	$details_hash[:decor_theme] = gets.chomp.to_s
	puts "Enter your favorite color:"
	$details_hash[:color] = gets.chomp.to_s
	puts "Enter your pet preference:"
	$details_hash[:pet_pref] = gets.chomp.to_s
end

# Write method to print client's details
def print_details()
	p $details_hash
end

client_details
print_details
