# Create a new list
#
# Method to create a list create_list(items)
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
# 	create new hash = {}
#   split string into separate items using .split(" ")
# 	iterate over each item in the array
# 	add each key to a hash
#   set default quantity to 1
#   print the list to the console [print_list()]
# output: hash

grocery_list = {}

def create_list(items, grocery_list)
	item_arr = items.split(" ")
	item_arr.each do |item|
		grocery_list[item] = 1
	end
	p grocery_list
end

create_list("carrots apples cereal pizza", grocery_list)


# Method to add an item to a list add_item(item)
# input: list, item name, and optional quantity
# steps:
# output:
#
# Method to remove an item from the list
# input:
# steps:
# output:
#
# Method to update the quantity of an item
# input:
# steps:
# output:
#
# Method to print a list and make it look pretty, print_list()
# input:
# steps:
# 	iterate through hash to format keys and its values
# 	print keys and values
# output: hash (item: quantity)

def print_list(grocery_list)
	grocery_list.each do |key, value|
		puts "#{key}: #{value}"
	end
end

print_list(grocery_list)
