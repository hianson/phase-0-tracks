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
	quantity = gets.chomp#.to_i
	if quantity == "q"
		return
	end
	# Ask user for cost of item
	puts "Enter cost of purchase ('q' to quit):"
	cost = gets.chomp#.to_f
	if cost == "q"
		return
	end
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
	if transaction_count(database, user_id) == 0
		puts "Nothing to show."
		return
	end
	name_whitespace = longest_item_name_length(database, user_id)
	qty_whitespace = longest_item_qty_length(database, user_id)
	cost_whitespace = longest_item_cost_length(database, user_id)
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
	puts "#  name" + (" " * name_whitespace) + "qty" + (" " * qty_whitespace) + "  cost" + (" " * cost_whitespace) + "date"
	transaction_list.each do |transaction|
		# puts "#{list_number}. #{transaction.join(" || ")}"
		# Add spaces to item name equal to adjust - item_name.length
		puts "#{list_number}. #{transaction[0] + (" " * (name_whitespace - transaction[0].length))} || #{transaction[1].to_s + (" " * (qty_whitespace - transaction[1].to_s.length))} || #{transaction[2].to_s + (" " * (cost_whitespace - transaction[2].to_s.length))} || #{transaction[3]}"
		list_number += 1
	end
end

def transaction_count(database, user_id) # Return total number of user's transactions
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
