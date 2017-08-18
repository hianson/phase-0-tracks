# Method to track purchases
def add_receipt(database)
	# Get the user's login_id from database to add receipt to appropriate username
	
	# Ask user for item name
	puts "Enter name of item:"
	item = gets.chomp
	# Ask user for quantity of item
	puts "Enter quantity of item:"
	quantity = gets.chomp.to_i
	# Ask user for cost of item
	puts "Enter cost of item:"
	cost = gets.chomp.to_f
	# Record date as current date
	date = Time.new.utc
	# Insert the information into the purchases table of the database
	database.execute("INSERT INTO purchases (item, quantity, cost, date, login_id) VALUES ('#{item}', '#{quantity}', '#{cost}', '#{date}', '#{login_id}');")
	# Implicitly return the SQL command, add to database in the driver code
end
