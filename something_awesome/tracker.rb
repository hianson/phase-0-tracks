require_relative 'print_methods.rb'

# Method to add purchases
def add_transaction(database, user_id)
	# Ask user for item name
	puts "Enter name of purchase ('q' to quit):"
	item = gets.chomp
	if item == "q"
		return
	end
	# Ask user for quantity of item
	puts "Enter quantity of purchase ('q' to quit):"
	# We only want digits stored in these columns
	quantity = gets.chomp
	if quantity == "q"
		return
	else
		quantity = quantity.gsub(/[^\d\.]/, '').to_f
	end
	# Ask user for cost of item
	puts "Enter cost of purchase ('q' to quit):"
	cost = gets.chomp
	if cost == "q"
		return
	else
		cost = cost.gsub(/[^\d\.]/, '').to_f
	end
	# Record date as current date
	date = Time.new.utc
	# Insert the information into the purchases table of the database
	database.execute(
		"INSERT INTO purchases (item, quantity, cost, date, login_id)
		VALUES ('#{item}', '#{quantity}', '#{cost}', '#{date}', '#{user_id}');"
		)
end

def transaction_count(database, user_id) # Returns user's total number of transactions
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
		puts "You don't have any items to remove."
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
	# If number exists
	elsif user_input.to_i > 0 && user_input.to_i <= transaction_count
		# Use user's input to get database's column id in purchases table
		db_transaction_id = database.execute(
			"SELECT *
			FROM purchases
			WHERE login_id='#{user_id}';"
			)[user_input.to_i - 1][0]
		# Delete the item
		database.execute(
			"DELETE FROM purchases
			WHERE id='#{db_transaction_id}';"
		)
	else
		# Notify user
		puts "Item doesn't exist."
		remove_transaction(database, user_id)
	end
end

def clear_list(database, user_id)
	if transaction_count(database, user_id) == 0
		puts "You don't have any items to remove."
		return
	end
	puts "Enter 'clear items' to delete all items:"
	user_input = gets.chomp
	if user_input == "clear items"
		puts "All items have been cleared."
		database.execute(
			"DELETE FROM purchases
			WHERE login_id='#{user_id}';"
		)
	else
		puts "Items were not cleared."
		return
	end
end

# Write method to calculate total spent
def calculate_total(database, user_id)
	total = 0
	item_costs = database.execute(
		"SELECT *
		FROM purchases
		WHERE login_id='#{user_id}';"
		)
		item_costs.each do |cost|
			total += cost[3]
		end
		total
end
