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
