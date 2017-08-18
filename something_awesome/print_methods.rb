# Write method to display UI
def ui
	puts "*" * 30
	puts "    awesome expense tracker"
	puts "1. show items"
	puts "2. add an item"
	puts "3. remove an item"
	puts "4. clear all items from list"
	puts "0. exit"
	puts "          select 1-9"
	puts "*" * 30
end

# Write some methods to improve item list readability!
# One day these will all get refactored
def longest_item_name_length(database, user_id)
	longest = ""
		item_name = database.execute(
			"SELECT *
			FROM purchases
			WHERE login_id='#{user_id}';"
			)
			item_name.each do |item|
				if item[1].length > longest.length
					longest = item[1]
				end
			end
		return longest.length
end

def longest_item_qty_length(database, user_id)
	longest = ""
		item_name = database.execute(
			"SELECT *
			FROM purchases
			WHERE login_id='#{user_id}';"
			)
			item_name.each do |item|
				if item[2].to_s.length > longest.length
					longest = item[2].to_s
				end
			end
		return longest.length
end

def longest_item_cost_length(database, user_id)
	longest = ""
		item_name = database.execute(
			"SELECT *
			FROM purchases
			WHERE login_id='#{user_id}';"
			)
			item_name.each do |item|
				if item[3].to_s.length > longest.length
					longest = item[3].to_s
				end
			end
		return longest.length
end

# Method to view purchases
def view_transactions(database, user_id)
	if transaction_count(database, user_id) == 0
		puts "Nothing to show."
		return
	end
	total = calculate_total(database, user_id)
	# hacky padding for pretty print...
	name_whitespace = longest_item_name_length(database, user_id)
	qty_whitespace = longest_item_qty_length(database, user_id)
	cost_whitespace = longest_item_cost_length(database, user_id)
	# Insert query to show purchases
	transaction_list = database.execute("SELECT purchases.item, purchases.quantity, purchases.cost, purchases.date FROM purchases JOIN logins ON purchases.login_id=logins.id WHERE purchases.login_id='#{user_id}';")
	puts "*" * 30
	puts "          purchases"
	list_number = 1
	puts "#  name" + (" " * name_whitespace) + "qty" + (" " * (qty_whitespace + 2)) + "cost" + (" " * cost_whitespace) + "date"
	transaction_list.each do |transaction|
		# puts "#{list_number}. #{transaction.join(" || ")}"
		# Add spaces to item name equal to adjust - item_name.length
		puts "#{list_number}. #{transaction[0] + (" " * (name_whitespace - transaction[0].length))} || #{transaction[1].to_s + (" " * (qty_whitespace - transaction[1].to_s.length))} || $#{transaction[2].to_s + (" " * (cost_whitespace - transaction[2].to_s.length))} || #{transaction[3]}"
		list_number += 1
	end
	puts " " * (name_whitespace + qty_whitespace + cost_whitespace) + "total spent: $#{total.round(2)}"
end
