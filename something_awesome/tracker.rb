# Method to add purchases
def add_receipt(database, user)
	# Convert user to login_id so we can add info under correct user
	login_id = database.execute("SELECT id FROM logins WHERE username='#{user}';")[0][0]
	# Ask user for item name
	puts "Enter name of purchase:"
	item = gets.chomp
	# Ask user for quantity of item
	puts "Enter quantity of purchase:"
	quantity = gets.chomp#.to_i
	# Ask user for cost of item
	puts "Enter cost of purchase:"
	cost = gets.chomp#.to_f
	# Record date as current date
	date = Time.new.utc
	# Insert the information into the purchases table of the database
	database.execute("
		INSERT INTO purchases (item, quantity, cost, date, login_id)
		VALUES ('#{item}', '#{quantity}', '#{cost}', '#{date}', '#{login_id}');")
	# Implicitly return the SQL command, add to database in the driver code
end

# Method to track purchases
def view_transactions(database, user_id)
	# Insert query to show purchases
	transactions = database.execute(
		"SELECT purchases.item, purchases.quantity, purchases.cost, purchases.date
		FROM purchases
		JOIN logins
		ON purchases.login_id=logins.id
		WHERE purchases.login_id='#{user_id}';"
		)
	puts "*" * 30
	puts "          purchases"
	transactions.each do |transaction|
		puts transaction.join(" || ")
	end
end
