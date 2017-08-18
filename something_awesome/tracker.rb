# Method to add purchases
def add_transaction(database, user_id)
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
	database.execute(
		"INSERT INTO purchases (item, quantity, cost, date, login_id)
		VALUES ('#{item}', '#{quantity}', '#{cost}', '#{date}', '#{user_id}');"
		)
end

# Method to view purchases
def view_transactions(database, user_id)
	# Insert query to show purchases
	transaction_list = database.execute(
		"SELECT purchases.item, purchases.quantity, purchases.cost, purchases.date
		FROM purchases
		JOIN logins
		ON purchases.login_id=logins.id
		WHERE purchases.login_id='#{user_id}';"
		)
	puts "*" * 30
	puts "          purchases"
	list_number = 1
	transaction_list.each do |transaction|
		puts "#{list_number}. #{transaction.join(" || ")}"
		list_number += 1
	end
end

def transaction_count(database, user_id) # Return number of user's transactions in purchases table
	total = 0
	transaction_list = database.execute(
		"SELECT purchases.item, purchases.quantity, purchases.cost, purchases.date
		FROM purchases
		JOIN logins
		ON purchases.login_id=logins.id
		WHERE purchases.login_id='#{user_id}';"
		)
		transaction_list.each do |transaction|
			total += 1
		end
		return total
end

def remove_transaction(database, user_id)
	transaction_count = transaction_count(database, user_id)
	if transaction_count == 0
		puts "No items to delete."
		return
	end
	# Print transactions
	view_transactions(database, user_id)
	# Ask user which number they want to remove
	puts "Which item would you like to remove (1 - #{transaction_count}, or 'q' to quit)?"
	# Get user's input
	user_input = gets.chomp

	if user_input == "q"
		return
	elsif user_input.to_i > 0 && user_input.to_i <= transaction_count
		# Use user's input to get database's column id in purchases table
		db_transaction_id = database.execute("select * from purchases where login_id='#{user_id}';")[user_input.to_i - 1][0]
		# Delete the item
		database.execute(
			"DELETE FROM purchases
			WHERE id='#{db_transaction_id}';"
		)
	else
		puts "Item doesn't exist."
		remove_transaction(database, user_id)
	end

	# If number exists
		# Remove it from database
		# Otherwise:
			# Notify user
end
