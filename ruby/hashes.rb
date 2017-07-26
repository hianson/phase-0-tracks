# Repeat for name, age, number of children, decor theme, color, pet preference:
	# Ask user for information
	# Store user's input (gets.chomp) in variable and convert to appropriate data type
# Print user's info back once all questions are answered
# Allow user to update keys (puts "Update any values?")
	# If user types a key, ask user for new value for that key, then update it
	# Else if user types "none", skip update
# Print latest version of hash and end program
def client_details()
	puts "Enter your name:"
	name = gets.chomp
	puts "Enter your age:"
	age = gets.chomp
	puts "Enter number of children:"
	children = gets.chomp
	puts "Enter a decor theme:"
	decor_theme = gets.chomp
	puts "Enter your favorite color:"
	color = gets.chomp
	puts "Enter your pet preference:"
	pet_pref = gets.chomp
end

def print_details()
	
end
