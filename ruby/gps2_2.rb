# Create a new list
#
# Method to create a list create_list(items)
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
# 	create new hash
#   split string into separate items
# 	iterate over each item in the array
# 	add each key to a hash
#   set default quantity of each key to 1
#   print the list to the console
# output: hash

grocery_list = {}

def create_list(items, grocery_list)
	item_arr = items.split(" ")
	item_arr.each do |item|
		grocery_list[item] = 1
	end
end

# create_list("carrots apples cereal pizza", grocery_list)


# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
  # append item and quantity to list
# output: true/false

def add_item(list, item_name, item_quantity)
  list[item_name] = item_quantity
end

# add_item(grocery_list, "bananas", 5)


# Method to remove an item from the list
# input: list, item name
# steps:
  # remove item name and its quantity from list
# output: true/false

def remove_item(list, item_name)
  list.delete(item_name)
end

# remove_item(grocery_list, "apples")

# Method to update the quantity of an item
# input: list, item name, quantity
# steps:
  # change item and quantity to list
# output: dictionary['cat']

def update_list(list, item_name, item_quantity)
  list[item_name] = item_quantity
end

# update_list(grocery_list, "cereal", 2)

# Method to print a list and make it look pretty, print_list()
# input:
# steps:
# 	iterate through hash to format keys and its values
# 	print keys and values
# output: hash (item: quantity)

def print_list(grocery_list)
  puts "*" * 20
  puts "****GROCERY LIST****"
	grocery_list.each do |key, value|
		puts "#{key}: #{value}"
	end
	puts "*" * 20
end

# Create a new list
# Add the following items to your list
# Lemonade, qty: 2
# Tomatoes, qty: 3
# Onions, qty: 1
# Ice Cream, qty: 4
# Remove the Lemonade from your list
# Update the Ice Cream quantity to 1
# Print out your list (Is this readable and nice looking)?

create_list("Lemonade", grocery_list)
update_list(grocery_list, "Lemonade", 1)
add_item(grocery_list, "Tomatoes", 3)
add_item(grocery_list, "Onions", 1)
add_item(grocery_list, "Ice Cream", 4)
remove_item(grocery_list, "Lemonade")
update_list(grocery_list, "Ice Cream", 1)
print_list(grocery_list)
